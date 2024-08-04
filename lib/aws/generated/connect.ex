# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Connect do
  @moduledoc """
  * [Amazon Connect
  actions](https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Connect_Service.html)
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      associate_instance_storage_config_request() :: %{
        required("ResourceType") => list(any()),
        required("StorageConfig") => instance_storage_config()
      }
      
  """
  @type associate_instance_storage_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_attached_file_request() :: %{
        required("AssociatedResourceArn") => String.t()
      }
      
  """
  @type delete_attached_file_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact_filter() :: %{
        "ContactStates" => list(list(any())())
      }
      
  """
  @type contact_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      answer_machine_detection_config() :: %{
        "AwaitAnswerMachinePrompt" => boolean(),
        "EnableAnswerMachineDetection" => boolean()
      }
      
  """
  @type answer_machine_detection_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_identity_info_request() :: %{
        required("IdentityInfo") => user_identity_info()
      }
      
  """
  @type update_user_identity_info_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_contact_evaluations_request() :: %{
        optional("NextToken") => String.t(),
        required("ContactId") => String.t()
      }
      
  """
  @type list_contact_evaluations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      outbound_caller_config() :: %{
        "OutboundCallerIdName" => String.t(),
        "OutboundCallerIdNumberId" => String.t(),
        "OutboundFlowId" => String.t()
      }
      
  """
  @type outbound_caller_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      queue_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter()
      }
      
  """
  @type queue_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_summary() :: %{
        "ActionType" => list(any())
      }
      
  """
  @type action_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_proficiencies_request() :: %{
        required("UserProficiencies") => list(user_proficiency()())
      }
      
  """
  @type update_user_proficiencies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_default_vocabulary_request() :: %{
        optional("VocabularyId") => String.t()
      }
      
  """
  @type associate_default_vocabulary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_persistent_contact_association_response() :: %{
        "ContinuedFromContactId" => String.t()
      }
      
  """
  @type create_persistent_contact_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_contact_flow_module_request() :: %{}
      
  """
  @type delete_contact_flow_module_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_view_version_response() :: %{}
      
  """
  @type delete_view_version_response() :: %{}

  @typedoc """

  ## Example:
      
      get_current_user_data_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Filters") => user_data_filters()
      }
      
  """
  @type get_current_user_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      chat_streaming_configuration() :: %{
        "StreamingEndpointArn" => String.t()
      }
      
  """
  @type chat_streaming_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      view_input_content() :: %{
        "Actions" => list(String.t()()),
        "Template" => String.t()
      }
      
  """
  @type view_input_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_contact_references_response() :: %{
        "NextToken" => String.t(),
        "ReferenceSummaryList" => list(list()())
      }
      
  """
  @type list_contact_references_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_vocabularies_response() :: %{
        "NextToken" => String.t(),
        "VocabularySummaryList" => list(vocabulary_summary()())
      }
      
  """
  @type search_vocabularies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_current_metric_data_request() :: %{
        optional("Groupings") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortCriteria") => list(current_metric_sort_criteria()()),
        required("CurrentMetrics") => list(current_metric()()),
        required("Filters") => filters()
      }
      
  """
  @type get_current_metric_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      participant_capabilities() :: %{
        "Video" => list(any())
      }
      
  """
  @type participant_capabilities() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_rule_request() :: %{
        optional("ClientToken") => String.t(),
        required("Actions") => list(rule_action()()),
        required("Function") => String.t(),
        required("Name") => String.t(),
        required("PublishStatus") => list(any()),
        required("TriggerEventSource") => rule_trigger_event_source()
      }
      
  """
  @type create_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_evaluation_form_request() :: %{
        optional("ClientToken") => String.t(),
        optional("CreateNewVersion") => boolean(),
        optional("Description") => String.t(),
        optional("ScoringStrategy") => evaluation_form_scoring_strategy(),
        required("EvaluationFormVersion") => integer(),
        required("Items") => list(list()()),
        required("Title") => String.t()
      }
      
  """
  @type update_evaluation_form_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      security_profile_search_criteria() :: %{
        "AndConditions" => list(security_profile_search_criteria()()),
        "OrConditions" => list(security_profile_search_criteria()()),
        "StringCondition" => string_condition()
      }
      
  """
  @type security_profile_search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_traffic_distribution_group_user_request() :: %{
        required("InstanceId") => String.t(),
        required("UserId") => String.t()
      }
      
  """
  @type disassociate_traffic_distribution_group_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      email_reference() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type email_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      number_reference() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type number_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_participant_request() :: %{
        optional("ClientToken") => String.t(),
        required("ContactId") => String.t(),
        required("InstanceId") => String.t(),
        required("ParticipantDetails") => participant_details_to_add()
      }
      
  """
  @type create_participant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_type_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type output_type_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      traffic_distribution_group_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "InstanceArn" => String.t(),
        "IsDefault" => boolean(),
        "Name" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type traffic_distribution_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact_flow_module() :: %{
        "Arn" => String.t(),
        "Content" => String.t(),
        "Description" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "State" => list(any()),
        "Status" => list(any()),
        "Tags" => map()
      }
      
  """
  @type contact_flow_module() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Username" => String.t()
      }
      
  """
  @type user_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_hierarchy_structure_request() :: %{}
      
  """
  @type describe_user_hierarchy_structure_request() :: %{}

  @typedoc """

  ## Example:
      
      get_federation_token_request() :: %{}
      
  """
  @type get_federation_token_request() :: %{}

  @typedoc """

  ## Example:
      
      list_queues_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("QueueTypes") => list(list(any())())
      }
      
  """
  @type list_queues_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lambda_functions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_lambda_functions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encryption_config() :: %{
        "EncryptionType" => list(any()),
        "KeyId" => String.t()
      }
      
  """
  @type encryption_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_contact_flow_modules_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchCriteria") => contact_flow_module_search_criteria(),
        optional("SearchFilter") => contact_flow_module_search_filter(),
        required("InstanceId") => String.t()
      }
      
  """
  @type search_contact_flow_modules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_phone_numbers_summary() :: %{
        "InstanceId" => String.t(),
        "PhoneNumber" => String.t(),
        "PhoneNumberArn" => String.t(),
        "PhoneNumberCountryCode" => list(any()),
        "PhoneNumberDescription" => String.t(),
        "PhoneNumberId" => String.t(),
        "PhoneNumberType" => list(any()),
        "SourcePhoneNumberArn" => String.t(),
        "TargetArn" => String.t()
      }
      
  """
  @type list_phone_numbers_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      campaign() :: %{
        "CampaignId" => String.t()
      }
      
  """
  @type campaign() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_hierarchy_group_request() :: %{}
      
  """
  @type describe_user_hierarchy_group_request() :: %{}

  @typedoc """

  ## Example:
      
      contact_flow_search_criteria() :: %{
        "AndConditions" => list(contact_flow_search_criteria()()),
        "OrConditions" => list(contact_flow_search_criteria()()),
        "StateCondition" => list(any()),
        "StatusCondition" => list(any()),
        "StringCondition" => string_condition(),
        "TypeCondition" => list(any())
      }
      
  """
  @type contact_flow_search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_users_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t(),
        "Users" => list(user_search_summary()())
      }
      
  """
  @type search_users_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_contact_recording_request() :: %{
        required("ContactId") => String.t(),
        required("InitialContactId") => String.t(),
        required("InstanceId") => String.t(),
        required("VoiceRecordingConfiguration") => voice_recording_configuration()
      }
      
  """
  @type start_contact_recording_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_traffic_distribution_group_users_response() :: %{
        "NextToken" => String.t(),
        "TrafficDistributionGroupUserSummaryList" => list(traffic_distribution_group_user_summary()())
      }
      
  """
  @type list_traffic_distribution_group_users_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_hierarchy_group_search_filter() :: %{
        "AttributeFilter" => control_plane_attribute_filter()
      }
      
  """
  @type user_hierarchy_group_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_traffic_distribution_group_request() :: %{}
      
  """
  @type describe_traffic_distribution_group_request() :: %{}

  @typedoc """

  ## Example:
      
      attribute_condition() :: %{
        "ComparisonOperator" => String.t(),
        "MatchCriteria" => match_criteria(),
        "Name" => String.t(),
        "ProficiencyLevel" => float(),
        "Value" => String.t()
      }
      
  """
  @type attribute_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      prompt_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t()
      }
      
  """
  @type prompt_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_flow_request() :: %{}
      
  """
  @type disassociate_flow_request() :: %{}

  @typedoc """

  ## Example:
      
      list_condition() :: %{
        "Conditions" => list(condition()()),
        "TargetListType" => list(any())
      }
      
  """
  @type list_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_use_case_response() :: %{
        "UseCaseArn" => String.t(),
        "UseCaseId" => String.t()
      }
      
  """
  @type create_use_case_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replicate_instance_request() :: %{
        optional("ClientToken") => String.t(),
        required("ReplicaAlias") => String.t(),
        required("ReplicaRegion") => String.t()
      }
      
  """
  @type replicate_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deactivate_evaluation_form_response() :: %{
        "EvaluationFormArn" => String.t(),
        "EvaluationFormId" => String.t(),
        "EvaluationFormVersion" => integer()
      }
      
  """
  @type deactivate_evaluation_form_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact_flow_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter()
      }
      
  """
  @type contact_flow_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_hours_of_operations_response() :: %{
        "ApproximateTotalCount" => float(),
        "HoursOfOperations" => list(hours_of_operation()()),
        "NextToken" => String.t()
      }
      
  """
  @type search_hours_of_operations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      view_summary() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Status" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type view_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activate_evaluation_form_request() :: %{
        required("EvaluationFormVersion") => integer()
      }
      
  """
  @type activate_evaluation_form_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      successful_request() :: %{
        "ContactId" => String.t(),
        "RequestIdentifier" => String.t()
      }
      
  """
  @type successful_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instance_storage_config_response() :: %{
        "StorageConfig" => instance_storage_config()
      }
      
  """
  @type describe_instance_storage_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_contact_request() :: %{}
      
  """
  @type describe_contact_request() :: %{}

  @typedoc """

  ## Example:
      
      agent_status() :: %{
        "AgentStatusARN" => String.t(),
        "AgentStatusId" => String.t(),
        "Description" => String.t(),
        "DisplayOrder" => integer(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "State" => list(any()),
        "Tags" => map(),
        "Type" => list(any())
      }
      
  """
  @type agent_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_available_phone_numbers_response() :: %{
        "AvailableNumbersList" => list(available_number_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type search_available_phone_numbers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dimensions() :: %{
        "Channel" => list(any()),
        "Queue" => queue_reference(),
        "RoutingProfile" => routing_profile_reference(),
        "RoutingStepExpression" => String.t()
      }
      
  """
  @type dimensions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_task_template_response() :: %{
        "Arn" => String.t(),
        "Constraints" => task_template_constraints(),
        "ContactFlowId" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Defaults" => task_template_defaults(),
        "Description" => String.t(),
        "Fields" => list(task_template_field()()),
        "Id" => String.t(),
        "InstanceId" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Status" => list(any()),
        "Tags" => map()
      }
      
  """
  @type get_task_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_use_case_request() :: %{}
      
  """
  @type delete_use_case_request() :: %{}

  @typedoc """

  ## Example:
      
      describe_prompt_response() :: %{
        "Prompt" => prompt()
      }
      
  """
  @type describe_prompt_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hours_of_operations_response() :: %{
        "HoursOfOperationSummaryList" => list(hours_of_operation_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_hours_of_operations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      property_validation_exception() :: %{
        "Message" => String.t(),
        "PropertyList" => list(property_validation_exception_property()())
      }
      
  """
  @type property_validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_identity_info_lite() :: %{
        "FirstName" => String.t(),
        "LastName" => String.t()
      }
      
  """
  @type user_identity_info_lite() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_contact_response() :: %{
        "Contact" => contact()
      }
      
  """
  @type describe_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_flow_associations_response() :: %{
        "FlowAssociationSummaryList" => list(flow_association_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_flow_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_contacts_time_range() :: %{
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer(),
        "Type" => list(any())
      }
      
  """
  @type search_contacts_time_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      threshold_v2() :: %{
        "Comparison" => String.t(),
        "ThresholdValue" => float()
      }
      
  """
  @type threshold_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_attributes_response() :: %{}
      
  """
  @type update_contact_attributes_response() :: %{}

  @typedoc """

  ## Example:
      
      create_contact_flow_request() :: %{
        optional("Description") => String.t(),
        optional("Status") => list(any()),
        optional("Tags") => map(),
        required("Content") => String.t(),
        required("Name") => String.t(),
        required("Type") => list(any())
      }
      
  """
  @type create_contact_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_interval() :: %{
        "EndTime" => non_neg_integer(),
        "Interval" => list(any()),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type metric_interval() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_url_metadata() :: %{
        "HeadersToInclude" => map(),
        "Url" => String.t(),
        "UrlExpiry" => String.t()
      }
      
  """
  @type upload_url_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      real_time_contact_analysis_transcript_item_with_content() :: %{
        "CharacterOffsets" => real_time_contact_analysis_character_interval(),
        "Content" => String.t(),
        "Id" => String.t()
      }
      
  """
  @type real_time_contact_analysis_transcript_item_with_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_predefined_attributes_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t(),
        "PredefinedAttributes" => list(predefined_attribute()())
      }
      
  """
  @type search_predefined_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => list(any())
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_hours_of_operations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchCriteria") => hours_of_operation_search_criteria(),
        optional("SearchFilter") => hours_of_operation_search_filter(),
        required("InstanceId") => String.t()
      }
      
  """
  @type search_hours_of_operations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_predefined_attribute_request() :: %{}
      
  """
  @type describe_predefined_attribute_request() :: %{}

  @typedoc """

  ## Example:
      
      get_prompt_file_response() :: %{
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "PromptPresignedUrl" => String.t()
      }
      
  """
  @type get_prompt_file_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hierarchy_path_reference() :: %{
        "LevelFive" => hierarchy_group_summary_reference(),
        "LevelFour" => hierarchy_group_summary_reference(),
        "LevelOne" => hierarchy_group_summary_reference(),
        "LevelThree" => hierarchy_group_summary_reference(),
        "LevelTwo" => hierarchy_group_summary_reference()
      }
      
  """
  @type hierarchy_path_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_flow_association_response() :: %{
        "FlowId" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => list(any())
      }
      
  """
  @type get_flow_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_form_version_summary() :: %{
        "CreatedBy" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "EvaluationFormArn" => String.t(),
        "EvaluationFormId" => String.t(),
        "EvaluationFormVersion" => integer(),
        "LastModifiedBy" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Locked" => boolean(),
        "Status" => list(any())
      }
      
  """
  @type evaluation_form_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      routing_criteria() :: %{
        "ActivationTimestamp" => non_neg_integer(),
        "Index" => integer(),
        "Steps" => list(step()())
      }
      
  """
  @type routing_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_proficiencies_response() :: %{
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "NextToken" => String.t(),
        "UserProficiencyList" => list(user_proficiency()())
      }
      
  """
  @type list_user_proficiencies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      historical_metric_result() :: %{
        "Collections" => list(historical_metric_data()()),
        "Dimensions" => dimensions()
      }
      
  """
  @type historical_metric_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_agent_status_response() :: %{
        "AgentStatus" => agent_status()
      }
      
  """
  @type describe_agent_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_chat_integration_event_response() :: %{
        "InitialContactId" => String.t(),
        "NewChatCreated" => boolean()
      }
      
  """
  @type send_chat_integration_event_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      meeting() :: %{
        "MediaPlacement" => media_placement(),
        "MediaRegion" => String.t(),
        "MeetingFeatures" => meeting_features_configuration(),
        "MeetingId" => String.t()
      }
      
  """
  @type meeting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attached_file() :: %{
        "AssociatedResourceArn" => String.t(),
        "CreatedBy" => list(),
        "CreationTime" => String.t(),
        "FileArn" => String.t(),
        "FileId" => String.t(),
        "FileName" => String.t(),
        "FileSizeInBytes" => float(),
        "FileStatus" => list(any()),
        "FileUseCaseType" => list(any()),
        "Tags" => map()
      }
      
  """
  @type attached_file() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_resource_tags_response() :: %{
        "NextToken" => String.t(),
        "Tags" => list(tag_set()())
      }
      
  """
  @type search_resource_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      phone_number_quick_connect_config() :: %{
        "PhoneNumber" => String.t()
      }
      
  """
  @type phone_number_quick_connect_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_security_profile_response() :: %{
        "SecurityProfile" => security_profile()
      }
      
  """
  @type describe_security_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_evaluation_form_request() :: %{
        optional("EvaluationFormVersion") => integer()
      }
      
  """
  @type delete_evaluation_form_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      agent_status_search_criteria() :: %{
        "AndConditions" => list(agent_status_search_criteria()()),
        "OrConditions" => list(agent_status_search_criteria()()),
        "StringCondition" => string_condition()
      }
      
  """
  @type agent_status_search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_security_profile_response() :: %{
        "SecurityProfileArn" => String.t(),
        "SecurityProfileId" => String.t()
      }
      
  """
  @type create_security_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      outbound_contact_not_permitted_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type outbound_contact_not_permitted_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_prompts_response() :: %{
        "NextToken" => String.t(),
        "PromptSummaryList" => list(prompt_summary()())
      }
      
  """
  @type list_prompts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_data_filters() :: %{
        "Agents" => list(String.t()()),
        "ContactFilter" => contact_filter(),
        "Queues" => list(String.t()()),
        "RoutingProfiles" => list(String.t()()),
        "UserHierarchyGroups" => list(String.t()())
      }
      
  """
  @type user_data_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_view_request() :: %{}
      
  """
  @type delete_view_request() :: %{}

  @typedoc """

  ## Example:
      
      chat_message() :: %{
        "Content" => String.t(),
        "ContentType" => String.t()
      }
      
  """
  @type chat_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hours_of_operation_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("Config") => list(hours_of_operation_config()()),
        required("Name") => String.t(),
        required("TimeZone") => String.t()
      }
      
  """
  @type create_hours_of_operation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      real_time_contact_analysis_point_of_interest() :: %{
        "TranscriptItems" => list(real_time_contact_analysis_transcript_item_with_character_offsets()())
      }
      
  """
  @type real_time_contact_analysis_point_of_interest() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_flow_metadata_response() :: %{}
      
  """
  @type update_contact_flow_metadata_response() :: %{}

  @typedoc """

  ## Example:
      
      disassociate_lex_bot_request() :: %{
        required("BotName") => String.t(),
        required("LexRegion") => String.t()
      }
      
  """
  @type disassociate_lex_bot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_security_profile_request() :: %{
        optional("AllowedAccessControlHierarchyGroupId") => String.t(),
        optional("AllowedAccessControlTags") => map(),
        optional("Applications") => list(application()()),
        optional("Description") => String.t(),
        optional("HierarchyRestrictedResources") => list(String.t()()),
        optional("Permissions") => list(String.t()()),
        optional("TagRestrictedResources") => list(String.t()())
      }
      
  """
  @type update_security_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_user_hierarchy_groups_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t(),
        "UserHierarchyGroups" => list(hierarchy_group()())
      }
      
  """
  @type search_user_hierarchy_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      credentials() :: %{
        "AccessToken" => String.t(),
        "AccessTokenExpiration" => non_neg_integer(),
        "RefreshToken" => String.t(),
        "RefreshTokenExpiration" => non_neg_integer()
      }
      
  """
  @type credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_contact_flow_modules_response() :: %{
        "ApproximateTotalCount" => float(),
        "ContactFlowModules" => list(contact_flow_module()()),
        "NextToken" => String.t()
      }
      
  """
  @type search_contact_flow_modules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_vocabulary_request() :: %{}
      
  """
  @type describe_vocabulary_request() :: %{}

  @typedoc """

  ## Example:
      
      update_instance_storage_config_request() :: %{
        required("ResourceType") => list(any()),
        required("StorageConfig") => instance_storage_config()
      }
      
  """
  @type update_instance_storage_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_condition() :: %{
        "TagKey" => String.t(),
        "TagValue" => String.t()
      }
      
  """
  @type tag_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      view() :: %{
        "Arn" => String.t(),
        "Content" => view_content(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "Id" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Status" => list(any()),
        "Tags" => map(),
        "Type" => list(any()),
        "Version" => integer(),
        "VersionDescription" => String.t(),
        "ViewContentSha256" => String.t()
      }
      
  """
  @type view() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_queue_response() :: %{
        "Queue" => queue()
      }
      
  """
  @type describe_queue_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_attached_file_response() :: %{}
      
  """
  @type delete_attached_file_response() :: %{}

  @typedoc """

  ## Example:
      
      control_plane_attribute_filter() :: %{
        "AndCondition" => common_attribute_and_condition(),
        "OrConditions" => list(common_attribute_and_condition()()),
        "TagCondition" => tag_condition()
      }
      
  """
  @type control_plane_attribute_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hours_of_operation() :: %{
        "Config" => list(hours_of_operation_config()()),
        "Description" => String.t(),
        "HoursOfOperationArn" => String.t(),
        "HoursOfOperationId" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Tags" => map(),
        "TimeZone" => String.t()
      }
      
  """
  @type hours_of_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      read_only_field_info() :: %{
        "Id" => task_template_field_identifier()
      }
      
  """
  @type read_only_field_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_quick_connect_name_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t()
      }
      
  """
  @type update_quick_connect_name_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_contact_recording_response() :: %{}
      
  """
  @type stop_contact_recording_response() :: %{}

  @typedoc """

  ## Example:
      
      metric_filter_v2() :: %{
        "MetricFilterKey" => String.t(),
        "MetricFilterValues" => list(String.t()()),
        "Negate" => boolean()
      }
      
  """
  @type metric_filter_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      routing_profile_queue_config_summary() :: %{
        "Channel" => list(any()),
        "Delay" => integer(),
        "Priority" => integer(),
        "QueueArn" => String.t(),
        "QueueId" => String.t(),
        "QueueName" => String.t()
      }
      
  """
  @type routing_profile_queue_config_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_metric_data_v2_response() :: %{
        "MetricResults" => list(metric_result_v2()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_metric_data_v2_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_flow_associations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceType") => list(any())
      }
      
  """
  @type list_flow_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hours_of_operation_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter()
      }
      
  """
  @type hours_of_operation_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_task_template_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Constraints") => task_template_constraints(),
        optional("ContactFlowId") => String.t(),
        optional("Defaults") => task_template_defaults(),
        optional("Description") => String.t(),
        optional("Status") => list(any()),
        required("Fields") => list(task_template_field()()),
        required("Name") => String.t()
      }
      
  """
  @type create_task_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      error_result() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t()
      }
      
  """
  @type error_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_firehose_config() :: %{
        "FirehoseArn" => String.t()
      }
      
  """
  @type kinesis_firehose_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_template_field() :: %{
        "Description" => String.t(),
        "Id" => task_template_field_identifier(),
        "SingleSelectOptions" => list(String.t()()),
        "Type" => list(any())
      }
      
  """
  @type task_template_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_evaluation_form_response() :: %{
        "EvaluationForm" => evaluation_form()
      }
      
  """
  @type describe_evaluation_form_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_template_defaults() :: %{
        "DefaultFieldValues" => list(task_template_default_field_value()())
      }
      
  """
  @type task_template_defaults() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_queue_max_contacts_request() :: %{
        optional("MaxContacts") => integer()
      }
      
  """
  @type update_queue_max_contacts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_task_template_response() :: %{}
      
  """
  @type delete_task_template_response() :: %{}

  @typedoc """

  ## Example:
      
      create_integration_association_response() :: %{
        "IntegrationAssociationArn" => String.t(),
        "IntegrationAssociationId" => String.t()
      }
      
  """
  @type create_integration_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      required_field_info() :: %{
        "Id" => task_template_field_identifier()
      }
      
  """
  @type required_field_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_search_summary() :: %{
        "Arn" => String.t(),
        "DirectoryUserId" => String.t(),
        "HierarchyGroupId" => String.t(),
        "Id" => String.t(),
        "IdentityInfo" => user_identity_info_lite(),
        "PhoneConfig" => user_phone_config(),
        "RoutingProfileId" => String.t(),
        "SecurityProfileIds" => list(String.t()()),
        "Tags" => map(),
        "Username" => String.t()
      }
      
  """
  @type user_search_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attached_file_error() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "FileId" => String.t()
      }
      
  """
  @type attached_file_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lex_v2_bot() :: %{
        "AliasArn" => String.t()
      }
      
  """
  @type lex_v2_bot() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_traffic_distribution_group_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }
      
  """
  @type create_traffic_distribution_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type contact_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact_flow_not_published_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type contact_flow_not_published_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact_flow_module_search_criteria() :: %{
        "AndConditions" => list(contact_flow_module_search_criteria()()),
        "OrConditions" => list(contact_flow_module_search_criteria()()),
        "StringCondition" => string_condition()
      }
      
  """
  @type contact_flow_module_search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      traffic_distribution_group_user_summary() :: %{
        "UserId" => String.t()
      }
      
  """
  @type traffic_distribution_group_user_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      use_case() :: %{
        "UseCaseArn" => String.t(),
        "UseCaseId" => String.t(),
        "UseCaseType" => list(any())
      }
      
  """
  @type use_case() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_hours_of_operation_request() :: %{
        optional("Config") => list(hours_of_operation_config()()),
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("TimeZone") => String.t()
      }
      
  """
  @type update_hours_of_operation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customer_quality_metrics() :: %{
        "Audio" => audio_quality_metrics_info()
      }
      
  """
  @type customer_quality_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      number_condition() :: %{
        "ComparisonType" => list(any()),
        "FieldName" => String.t(),
        "MaxValue" => integer(),
        "MinValue" => integer()
      }
      
  """
  @type number_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_routing_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchCriteria") => routing_profile_search_criteria(),
        optional("SearchFilter") => routing_profile_search_filter(),
        required("InstanceId") => String.t()
      }
      
  """
  @type search_routing_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_rule_request() :: %{
        required("Actions") => list(rule_action()()),
        required("Function") => String.t(),
        required("Name") => String.t(),
        required("PublishStatus") => list(any())
      }
      
  """
  @type update_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_outbound_voice_contact_response() :: %{
        "ContactId" => String.t()
      }
      
  """
  @type start_outbound_voice_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_contact_flows_request() :: %{
        optional("ContactFlowTypes") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_contact_flows_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_identity_info() :: %{
        "Email" => String.t(),
        "FirstName" => String.t(),
        "LastName" => String.t(),
        "Mobile" => String.t(),
        "SecondaryEmail" => String.t()
      }
      
  """
  @type user_identity_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      real_time_contact_analysis_segment_post_contact_summary() :: %{
        "Content" => String.t(),
        "FailureCode" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type real_time_contact_analysis_segment_post_contact_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instance_attributes_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_instance_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vocabulary_response() :: %{
        "State" => list(any()),
        "VocabularyArn" => String.t(),
        "VocabularyId" => String.t()
      }
      
  """
  @type create_vocabulary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      wisdom_info() :: %{
        "SessionArn" => String.t()
      }
      
  """
  @type wisdom_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      release_phone_number_request() :: %{
        optional("ClientToken") => String.t()
      }
      
  """
  @type release_phone_number_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_contact_request() :: %{
        optional("DisconnectReason") => disconnect_reason(),
        required("ContactId") => String.t(),
        required("InstanceId") => String.t()
      }
      
  """
  @type stop_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_phone_number_response() :: %{
        "PhoneNumberArn" => String.t(),
        "PhoneNumberId" => String.t()
      }
      
  """
  @type update_phone_number_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_hierarchy_group_request() :: %{}
      
  """
  @type delete_user_hierarchy_group_request() :: %{}

  @typedoc """

  ## Example:
      
      lex_bot_config() :: %{
        "LexBot" => lex_bot(),
        "LexV2Bot" => lex_v2_bot()
      }
      
  """
  @type lex_bot_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      agent_hierarchy_group() :: %{
        "Arn" => String.t()
      }
      
  """
  @type agent_hierarchy_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      real_time_contact_analysis_segment_issues() :: %{
        "IssuesDetected" => list(real_time_contact_analysis_issue_detected()())
      }
      
  """
  @type real_time_contact_analysis_segment_issues() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_instance_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }
      
  """
  @type create_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_contact_evaluations_response() :: %{
        "EvaluationSummaryList" => list(evaluation_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_contact_evaluations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_template_default_field_value() :: %{
        "DefaultValue" => String.t(),
        "Id" => task_template_field_identifier()
      }
      
  """
  @type task_template_default_field_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authentication_profile() :: %{
        "AllowedIps" => list(String.t()()),
        "Arn" => String.t(),
        "BlockedIps" => list(String.t()()),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "Id" => String.t(),
        "IsDefault" => boolean(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "MaxSessionDuration" => integer(),
        "Name" => String.t(),
        "PeriodicSessionDuration" => integer()
      }
      
  """
  @type authentication_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_note() :: %{
        "Value" => String.t()
      }
      
  """
  @type evaluation_note() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_flow_module_metadata_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("State") => list(any())
      }
      
  """
  @type update_contact_flow_module_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_prompt_response() :: %{
        "PromptARN" => String.t(),
        "PromptId" => String.t()
      }
      
  """
  @type update_prompt_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_contact_flow_exception() :: %{
        "problems" => list(problem_detail()())
      }
      
  """
  @type invalid_contact_flow_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_view_metadata_response() :: %{}
      
  """
  @type update_view_metadata_response() :: %{}

  @typedoc """

  ## Example:
      
      list_evaluation_form_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_evaluation_form_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_agent_statuses_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchCriteria") => agent_status_search_criteria(),
        optional("SearchFilter") => agent_status_search_filter(),
        required("InstanceId") => String.t()
      }
      
  """
  @type search_agent_statuses_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_view_version_request() :: %{}
      
  """
  @type delete_view_version_request() :: %{}

  @typedoc """

  ## Example:
      
      import_phone_number_response() :: %{
        "PhoneNumberArn" => String.t(),
        "PhoneNumberId" => String.t()
      }
      
  """
  @type import_phone_number_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      persistent_chat() :: %{
        "RehydrationType" => list(any()),
        "SourceContactId" => String.t()
      }
      
  """
  @type persistent_chat() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_schedule_response() :: %{}
      
  """
  @type update_contact_schedule_response() :: %{}

  @typedoc """

  ## Example:
      
      queue() :: %{
        "Description" => String.t(),
        "HoursOfOperationId" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "MaxContacts" => integer(),
        "Name" => String.t(),
        "OutboundCallerConfig" => outbound_caller_config(),
        "QueueArn" => String.t(),
        "QueueId" => String.t(),
        "Status" => list(any()),
        "Tags" => map()
      }
      
  """
  @type queue() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_proficiency_disassociate() :: %{
        "AttributeName" => String.t(),
        "AttributeValue" => String.t()
      }
      
  """
  @type user_proficiency_disassociate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_use_cases_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_use_cases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_approved_origin_request() :: %{
        required("Origin") => String.t()
      }
      
  """
  @type disassociate_approved_origin_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      segment_attribute_value() :: %{
        "ValueString" => String.t()
      }
      
  """
  @type segment_attribute_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      real_time_contact_analysis_segment_categories() :: %{
        "MatchedDetails" => map()
      }
      
  """
  @type real_time_contact_analysis_segment_categories() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_lambda_function_request() :: %{
        required("FunctionArn") => String.t()
      }
      
  """
  @type associate_lambda_function_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transcript() :: %{
        "Criteria" => list(transcript_criteria()()),
        "MatchType" => list(any())
      }
      
  """
  @type transcript() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      download_url_metadata() :: %{
        "Url" => String.t(),
        "UrlExpiry" => String.t()
      }
      
  """
  @type download_url_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      suspend_contact_recording_response() :: %{}
      
  """
  @type suspend_contact_recording_response() :: %{}

  @typedoc """

  ## Example:
      
      update_participant_role_config_response() :: %{}
      
  """
  @type update_participant_role_config_response() :: %{}

  @typedoc """

  ## Example:
      
      disassociate_queue_quick_connects_request() :: %{
        required("QuickConnectIds") => list(String.t()())
      }
      
  """
  @type disassociate_queue_quick_connects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      complete_attached_file_upload_response() :: %{}
      
  """
  @type complete_attached_file_upload_response() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_security_profile_applications_response() :: %{
        "Applications" => list(application()()),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "NextToken" => String.t()
      }
      
  """
  @type list_security_profile_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_quick_connect_config_request() :: %{
        required("QuickConnectConfig") => quick_connect_config()
      }
      
  """
  @type update_quick_connect_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_queue_hours_of_operation_request() :: %{
        required("HoursOfOperationId") => String.t()
      }
      
  """
  @type update_queue_hours_of_operation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_requests_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      participant_details_to_add() :: %{
        "DisplayName" => String.t(),
        "ParticipantRole" => list(any())
      }
      
  """
  @type participant_details_to_add() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_contact_streaming_request() :: %{
        required("ChatStreamingConfiguration") => chat_streaming_configuration(),
        required("ClientToken") => String.t(),
        required("ContactId") => String.t(),
        required("InstanceId") => String.t()
      }
      
  """
  @type start_contact_streaming_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_analytics_data_set_response() :: %{
        "DataSetId" => String.t(),
        "ResourceShareArn" => String.t(),
        "ResourceShareId" => String.t(),
        "TargetAccountId" => String.t()
      }
      
  """
  @type associate_analytics_data_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rules_request() :: %{
        optional("EventSourceName") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PublishStatus") => list(any())
      }
      
  """
  @type list_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_phone_number_request() :: %{
        optional("ClientToken") => String.t(),
        optional("PhoneNumberDescription") => String.t(),
        optional("Tags") => map(),
        required("InstanceId") => String.t(),
        required("SourcePhoneNumberArn") => String.t()
      }
      
  """
  @type import_phone_number_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      claim_phone_number_response() :: %{
        "PhoneNumberArn" => String.t(),
        "PhoneNumberId" => String.t()
      }
      
  """
  @type claim_phone_number_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      queue_info() :: %{
        "EnqueueTimestamp" => non_neg_integer(),
        "Id" => String.t()
      }
      
  """
  @type queue_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_answer_output() :: %{
        "SystemSuggestedValue" => list(),
        "Value" => list()
      }
      
  """
  @type evaluation_answer_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      available_number_summary() :: %{
        "PhoneNumber" => String.t(),
        "PhoneNumberCountryCode" => list(any()),
        "PhoneNumberType" => list(any())
      }
      
  """
  @type available_number_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_view_version_response() :: %{
        "View" => view()
      }
      
  """
  @type create_view_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_phone_number_response() :: %{
        "ClaimedPhoneNumberSummary" => claimed_phone_number_summary()
      }
      
  """
  @type describe_phone_number_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hierarchy_group_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t()
      }
      
  """
  @type hierarchy_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      participant_token_credentials() :: %{
        "Expiry" => String.t(),
        "ParticipantToken" => String.t()
      }
      
  """
  @type participant_token_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_contact_flow_module_request() :: %{}
      
  """
  @type describe_contact_flow_module_request() :: %{}

  @typedoc """

  ## Example:
      
      pause_contact_request() :: %{
        optional("ContactFlowId") => String.t(),
        required("ContactId") => String.t(),
        required("InstanceId") => String.t()
      }
      
  """
  @type pause_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instance_attribute_response() :: %{
        "Attribute" => attribute()
      }
      
  """
  @type describe_instance_attribute_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      participant_timer_configuration() :: %{
        "ParticipantRole" => list(any()),
        "TimerType" => list(any()),
        "TimerValue" => list()
      }
      
  """
  @type participant_timer_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_approved_origin_request() :: %{
        required("Origin") => String.t()
      }
      
  """
  @type associate_approved_origin_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      destination_not_allowed_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type destination_not_allowed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invisible_field_info() :: %{
        "Id" => task_template_field_identifier()
      }
      
  """
  @type invisible_field_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_quick_connect_response() :: %{
        "QuickConnectARN" => String.t(),
        "QuickConnectId" => String.t()
      }
      
  """
  @type create_quick_connect_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lex_bots_response() :: %{
        "LexBots" => list(lex_bot()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_lex_bots_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vocabulary_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Tags") => map(),
        required("Content") => String.t(),
        required("LanguageCode") => list(any()),
        required("VocabularyName") => String.t()
      }
      
  """
  @type create_vocabulary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_result_v2() :: %{
        "Collections" => list(metric_data_v2()()),
        "Dimensions" => map(),
        "MetricInterval" => metric_interval()
      }
      
  """
  @type metric_result_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_attached_file_metadata_response() :: %{
        "Errors" => list(attached_file_error()()),
        "Files" => list(attached_file()())
      }
      
  """
  @type batch_get_attached_file_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_attached_file_request() :: %{
        optional("UrlExpiryInSeconds") => integer(),
        required("AssociatedResourceArn") => String.t()
      }
      
  """
  @type get_attached_file_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transfer_contact_request() :: %{
        optional("ClientToken") => String.t(),
        optional("QueueId") => String.t(),
        optional("UserId") => String.t(),
        required("ContactFlowId") => String.t(),
        required("ContactId") => String.t(),
        required("InstanceId") => String.t()
      }
      
  """
  @type transfer_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_phone_number_request() :: %{}
      
  """
  @type describe_phone_number_request() :: %{}

  @typedoc """

  ## Example:
      
      resume_contact_recording_response() :: %{}
      
  """
  @type resume_contact_recording_response() :: %{}

  @typedoc """

  ## Example:
      
      list_agent_status_request() :: %{
        optional("AgentStatusTypes") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_agent_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      queue_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "QueueType" => list(any())
      }
      
  """
  @type queue_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_flow_name_response() :: %{}
      
  """
  @type update_contact_flow_name_response() :: %{}

  @typedoc """

  ## Example:
      
      list_task_templates_response() :: %{
        "NextToken" => String.t(),
        "TaskTemplates" => list(task_template_metadata()())
      }
      
  """
  @type list_task_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_current_user_data_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t(),
        "UserDataList" => list(user_data()())
      }
      
  """
  @type get_current_user_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_rule_request() :: %{}
      
  """
  @type delete_rule_request() :: %{}

  @typedoc """

  ## Example:
      
      describe_authentication_profile_request() :: %{}
      
  """
  @type describe_authentication_profile_request() :: %{}

  @typedoc """

  ## Example:
      
      contact_flow_summary() :: %{
        "Arn" => String.t(),
        "ContactFlowState" => list(any()),
        "ContactFlowStatus" => list(any()),
        "ContactFlowType" => list(any()),
        "Id" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type contact_flow_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_evaluation_request() :: %{
        optional("Answers") => map(),
        optional("Notes") => map()
      }
      
  """
  @type update_contact_evaluation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lex_bots_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_lex_bots_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_phone_numbers_v2_request() :: %{
        optional("InstanceId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PhoneNumberCountryCodes") => list(list(any())()),
        optional("PhoneNumberPrefix") => String.t(),
        optional("PhoneNumberTypes") => list(list(any())()),
        optional("TargetArn") => String.t()
      }
      
  """
  @type list_phone_numbers_v2_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_prompt_request() :: %{}
      
  """
  @type delete_prompt_request() :: %{}

  @typedoc """

  ## Example:
      
      send_chat_integration_event_request() :: %{
        optional("NewSessionDetails") => new_session_details(),
        optional("Subtype") => String.t(),
        required("DestinationId") => String.t(),
        required("Event") => chat_event(),
        required("SourceId") => String.t()
      }
      
  """
  @type send_chat_integration_event_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_hierarchy_structure_response() :: %{
        "HierarchyStructure" => hierarchy_structure()
      }
      
  """
  @type describe_user_hierarchy_structure_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_data() :: %{
        "ActiveSlotsByChannel" => map(),
        "AvailableSlotsByChannel" => map(),
        "Contacts" => list(agent_contact_reference()()),
        "HierarchyPath" => hierarchy_path_reference(),
        "MaxSlotsByChannel" => map(),
        "NextStatus" => String.t(),
        "RoutingProfile" => routing_profile_reference(),
        "Status" => agent_status_reference(),
        "User" => user_reference()
      }
      
  """
  @type user_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connect_reference() :: %{
        "Type" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type connect_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_predefined_attribute_response() :: %{
        "PredefinedAttribute" => predefined_attribute()
      }
      
  """
  @type describe_predefined_attribute_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_federation_token_response() :: %{
        "Credentials" => credentials(),
        "SignInUrl" => String.t(),
        "UserArn" => String.t(),
        "UserId" => String.t()
      }
      
  """
  @type get_federation_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_traffic_distribution_groups_request() :: %{
        optional("InstanceId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_traffic_distribution_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      quick_connect_search_criteria() :: %{
        "AndConditions" => list(quick_connect_search_criteria()()),
        "OrConditions" => list(quick_connect_search_criteria()()),
        "StringCondition" => string_condition()
      }
      
  """
  @type quick_connect_search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_view_response() :: %{
        "View" => view()
      }
      
  """
  @type describe_view_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitor_contact_request() :: %{
        optional("AllowedMonitorCapabilities") => list(list(any())()),
        optional("ClientToken") => String.t(),
        required("ContactId") => String.t(),
        required("InstanceId") => String.t(),
        required("UserId") => String.t()
      }
      
  """
  @type monitor_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_quick_connect_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("Name") => String.t(),
        required("QuickConnectConfig") => quick_connect_config()
      }
      
  """
  @type create_quick_connect_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_action_definition() :: %{
        "ContactFlowId" => String.t(),
        "Description" => String.t(),
        "Name" => String.t(),
        "References" => map()
      }
      
  """
  @type task_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_traffic_distribution_group_user_request() :: %{
        required("InstanceId") => String.t(),
        required("UserId") => String.t()
      }
      
  """
  @type associate_traffic_distribution_group_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customer() :: %{
        "Capabilities" => participant_capabilities(),
        "DeviceInfo" => device_info()
      }
      
  """
  @type customer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_contact_flow_response() :: %{}
      
  """
  @type delete_contact_flow_response() :: %{}

  @typedoc """

  ## Example:
      
      update_instance_attribute_request() :: %{
        required("Value") => String.t()
      }
      
  """
  @type update_instance_attribute_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hours_of_operation_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t()
      }
      
  """
  @type hours_of_operation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_evaluation_form_response() :: %{
        "EvaluationFormArn" => String.t(),
        "EvaluationFormId" => String.t()
      }
      
  """
  @type create_evaluation_form_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      agent_contact_reference() :: %{
        "AgentContactState" => list(any()),
        "Channel" => list(any()),
        "ConnectedToAgentTimestamp" => non_neg_integer(),
        "ContactId" => String.t(),
        "InitiationMethod" => list(any()),
        "Queue" => queue_reference(),
        "StateStartTimestamp" => non_neg_integer()
      }
      
  """
  @type agent_contact_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lambda_functions_response() :: %{
        "LambdaFunctions" => list(String.t()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_lambda_functions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_routing_profile_request() :: %{}
      
  """
  @type delete_routing_profile_request() :: %{}

  @typedoc """

  ## Example:
      
      cross_channel_behavior() :: %{
        "BehaviorType" => list(any())
      }
      
  """
  @type cross_channel_behavior() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      empty_field_value() :: %{}
      
  """
  @type empty_field_value() :: %{}

  @typedoc """

  ## Example:
      
      view_content() :: %{
        "Actions" => list(String.t()()),
        "InputSchema" => String.t(),
        "Template" => String.t()
      }
      
  """
  @type view_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_form_summary() :: %{
        "ActiveVersion" => integer(),
        "CreatedBy" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "EvaluationFormArn" => String.t(),
        "EvaluationFormId" => String.t(),
        "LastActivatedBy" => String.t(),
        "LastActivatedTime" => non_neg_integer(),
        "LastModifiedBy" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "LatestVersion" => integer(),
        "Title" => String.t()
      }
      
  """
  @type evaluation_form_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_task_template_request() :: %{
        optional("SnapshotVersion") => String.t()
      }
      
  """
  @type get_task_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_analytics_data_set_request() :: %{
        optional("TargetAccountId") => String.t(),
        required("DataSetId") => String.t()
      }
      
  """
  @type disassociate_analytics_data_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_agent_status_request() :: %{}
      
  """
  @type describe_agent_status_request() :: %{}

  @typedoc """

  ## Example:
      
      list_security_keys_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_security_keys_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authentication_profile_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "IsDefault" => boolean(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t()
      }
      
  """
  @type authentication_profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_prompt_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("Name") => String.t(),
        required("S3Uri") => String.t()
      }
      
  """
  @type create_prompt_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_routing_profile_queues_request() :: %{
        required("QueueConfigs") => list(routing_profile_queue_config()())
      }
      
  """
  @type associate_routing_profile_queues_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_prompts_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t(),
        "Prompts" => list(prompt()())
      }
      
  """
  @type search_prompts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bots_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("LexVersion") => list(any())
      }
      
  """
  @type list_bots_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_security_profile_request() :: %{
        optional("AllowedAccessControlHierarchyGroupId") => String.t(),
        optional("AllowedAccessControlTags") => map(),
        optional("Applications") => list(application()()),
        optional("Description") => String.t(),
        optional("HierarchyRestrictedResources") => list(String.t()()),
        optional("Permissions") => list(String.t()()),
        optional("TagRestrictedResources") => list(String.t()()),
        optional("Tags") => map(),
        required("SecurityProfileName") => String.t()
      }
      
  """
  @type create_security_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_view_version_request() :: %{
        optional("VersionDescription") => String.t(),
        optional("ViewContentSha256") => String.t()
      }
      
  """
  @type create_view_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instance_attribute_request() :: %{}
      
  """
  @type describe_instance_attribute_request() :: %{}

  @typedoc """

  ## Example:
      
      list_security_profile_permissions_response() :: %{
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "NextToken" => String.t(),
        "Permissions" => list(String.t()())
      }
      
  """
  @type list_security_profile_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_predefined_attribute_request() :: %{
        required("Name") => String.t(),
        required("Values") => list()
      }
      
  """
  @type create_predefined_attribute_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_contact_recording_request() :: %{
        required("ContactId") => String.t(),
        required("InitialContactId") => String.t(),
        required("InstanceId") => String.t()
      }
      
  """
  @type stop_contact_recording_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      real_time_contact_analysis_category_details() :: %{
        "PointsOfInterest" => list(real_time_contact_analysis_point_of_interest()())
      }
      
  """
  @type real_time_contact_analysis_category_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_traffic_distribution_group_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("InstanceId") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_traffic_distribution_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      security_profile_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t()
      }
      
  """
  @type security_profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_contact_evaluation_response() :: %{
        "Evaluation" => evaluation(),
        "EvaluationForm" => evaluation_form_content()
      }
      
  """
  @type describe_contact_evaluation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_evaluation_form_request() :: %{
        optional("EvaluationFormVersion") => integer()
      }
      
  """
  @type describe_evaluation_form_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_notification_action_definition() :: %{
        "Content" => String.t(),
        "ContentType" => list(any()),
        "DeliveryMethod" => list(any()),
        "Recipient" => notification_recipient_type(),
        "Subject" => String.t()
      }
      
  """
  @type send_notification_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_quick_connect_config() :: %{
        "ContactFlowId" => String.t(),
        "UserId" => String.t()
      }
      
  """
  @type user_quick_connect_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      phone_number_status() :: %{
        "Message" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type phone_number_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      agent_info() :: %{
        "AgentPauseDurationInSeconds" => integer(),
        "Capabilities" => participant_capabilities(),
        "ConnectedToAgentTimestamp" => non_neg_integer(),
        "DeviceInfo" => device_info(),
        "HierarchyGroups" => hierarchy_groups(),
        "Id" => String.t()
      }
      
  """
  @type agent_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_hours_of_operation_response() :: %{
        "HoursOfOperation" => hours_of_operation()
      }
      
  """
  @type describe_hours_of_operation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_disassociate_analytics_data_set_request() :: %{
        optional("TargetAccountId") => String.t(),
        required("DataSetIds") => list(String.t()())
      }
      
  """
  @type batch_disassociate_analytics_data_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_prompt_response() :: %{
        "PromptARN" => String.t(),
        "PromptId" => String.t()
      }
      
  """
  @type create_prompt_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_integration_association_request() :: %{
        optional("SourceApplicationName") => String.t(),
        optional("SourceApplicationUrl") => String.t(),
        optional("SourceType") => list(any()),
        optional("Tags") => map(),
        required("IntegrationArn") => String.t(),
        required("IntegrationType") => list(any())
      }
      
  """
  @type create_integration_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      audio_features() :: %{
        "EchoReduction" => list(any())
      }
      
  """
  @type audio_features() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      routing_profile_queue_config() :: %{
        "Delay" => integer(),
        "Priority" => integer(),
        "QueueReference" => routing_profile_queue_reference()
      }
      
  """
  @type routing_profile_queue_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "Message" => String.t(),
        "Reason" => list()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_task_template_request() :: %{
        optional("Constraints") => task_template_constraints(),
        optional("ContactFlowId") => String.t(),
        optional("Defaults") => task_template_defaults(),
        optional("Description") => String.t(),
        optional("Fields") => list(task_template_field()()),
        optional("Name") => String.t(),
        optional("Status") => list(any())
      }
      
  """
  @type update_task_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_response() :: %{}
      
  """
  @type update_contact_response() :: %{}

  @typedoc """

  ## Example:
      
      disassociate_bot_request() :: %{
        optional("LexBot") => lex_bot(),
        optional("LexV2Bot") => lex_v2_bot()
      }
      
  """
  @type disassociate_bot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_score() :: %{
        "AutomaticFail" => boolean(),
        "NotApplicable" => boolean(),
        "Percentage" => float()
      }
      
  """
  @type evaluation_score() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_put_contact_request() :: %{
        optional("ClientToken") => String.t(),
        required("ContactDataRequestList") => list(contact_data_request()())
      }
      
  """
  @type batch_put_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_task_templates_request() :: %{
        optional("MaxResults") => integer(),
        optional("Name") => String.t(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }
      
  """
  @type list_task_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      telephony_config() :: %{
        "Distributions" => list(distribution()())
      }
      
  """
  @type telephony_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_security_profiles_response() :: %{
        "NextToken" => String.t(),
        "SecurityProfileSummaryList" => list(security_profile_summary()())
      }
      
  """
  @type list_security_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_participant_response() :: %{
        "ParticipantCredentials" => participant_token_credentials(),
        "ParticipantId" => String.t()
      }
      
  """
  @type create_participant_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hierarchy_group_condition() :: %{
        "HierarchyGroupMatchType" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type hierarchy_group_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vocabulary_summary() :: %{
        "Arn" => String.t(),
        "FailureReason" => String.t(),
        "Id" => String.t(),
        "LanguageCode" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "State" => list(any())
      }
      
  """
  @type vocabulary_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_view_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_view_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_contact_flow_module_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("Content") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_contact_flow_module_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instance_request() :: %{}
      
  """
  @type describe_instance_request() :: %{}

  @typedoc """

  ## Example:
      
      security_profiles_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter()
      }
      
  """
  @type security_profiles_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_attached_file_metadata_request() :: %{
        required("AssociatedResourceArn") => String.t(),
        required("FileIds") => list(String.t()())
      }
      
  """
  @type batch_get_attached_file_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_flow_association_request() :: %{
        optional("ResourceType") => list(any()),
        required("ResourceIds") => list(String.t()())
      }
      
  """
  @type batch_get_flow_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_config() :: %{
        "BucketName" => String.t(),
        "BucketPrefix" => String.t(),
        "EncryptionConfig" => encryption_config()
      }
      
  """
  @type s3_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_authentication_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_authentication_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_flow_content_request() :: %{
        required("Content") => String.t()
      }
      
  """
  @type update_contact_flow_content_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_phone_config() :: %{
        "AfterContactWorkTimeLimit" => integer(),
        "AutoAccept" => boolean(),
        "DeskPhoneNumber" => String.t(),
        "PhoneType" => list(any())
      }
      
  """
  @type user_phone_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      submit_contact_evaluation_response() :: %{
        "EvaluationArn" => String.t(),
        "EvaluationId" => String.t()
      }
      
  """
  @type submit_contact_evaluation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_form() :: %{
        "CreatedBy" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "EvaluationFormArn" => String.t(),
        "EvaluationFormId" => String.t(),
        "EvaluationFormVersion" => integer(),
        "Items" => list(list()()),
        "LastModifiedBy" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Locked" => boolean(),
        "ScoringStrategy" => evaluation_form_scoring_strategy(),
        "Status" => list(any()),
        "Tags" => map(),
        "Title" => String.t()
      }
      
  """
  @type evaluation_form() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      real_time_contact_analysis_transcript_item_with_character_offsets() :: %{
        "CharacterOffsets" => real_time_contact_analysis_character_interval(),
        "Id" => String.t()
      }
      
  """
  @type real_time_contact_analysis_transcript_item_with_character_offsets() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:
      
      view_version_summary() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Type" => list(any()),
        "Version" => integer(),
        "VersionDescription" => String.t()
      }
      
  """
  @type view_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      numeric_question_property_value_automation() :: %{
        "Label" => list(any())
      }
      
  """
  @type numeric_question_property_value_automation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_traffic_distribution_request() :: %{
        optional("AgentConfig") => agent_config(),
        optional("SignInConfig") => sign_in_config(),
        optional("TelephonyConfig") => telephony_config()
      }
      
  """
  @type update_traffic_distribution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_task_template_request() :: %{}
      
  """
  @type delete_task_template_request() :: %{}

  @typedoc """

  ## Example:
      
      tag_contact_response() :: %{}
      
  """
  @type tag_contact_response() :: %{}

  @typedoc """

  ## Example:
      
      list_phone_numbers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PhoneNumberCountryCodes") => list(list(any())()),
        optional("PhoneNumberTypes") => list(list(any())())
      }
      
  """
  @type list_phone_numbers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_metric_data_request() :: %{
        optional("Groupings") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("EndTime") => non_neg_integer(),
        required("Filters") => filters(),
        required("HistoricalMetrics") => list(historical_metric()()),
        required("StartTime") => non_neg_integer()
      }
      
  """
  @type get_metric_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vocabulary() :: %{
        "Arn" => String.t(),
        "Content" => String.t(),
        "FailureReason" => String.t(),
        "Id" => String.t(),
        "LanguageCode" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "State" => list(any()),
        "Tags" => map()
      }
      
  """
  @type vocabulary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_routing_profile_queues_request() :: %{
        required("QueueReferences") => list(routing_profile_queue_reference()())
      }
      
  """
  @type disassociate_routing_profile_queues_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter_v2() :: %{
        "FilterKey" => String.t(),
        "FilterValues" => list(String.t()())
      }
      
  """
  @type filter_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_agent_status_request() :: %{
        optional("Description") => String.t(),
        optional("DisplayOrder") => integer(),
        optional("Name") => String.t(),
        optional("ResetOrderNumber") => boolean(),
        optional("State") => list(any())
      }
      
  """
  @type update_agent_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_default_vocabulary_response() :: %{}
      
  """
  @type associate_default_vocabulary_response() :: %{}

  @typedoc """

  ## Example:
      
      routing_profile_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter()
      }
      
  """
  @type routing_profile_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_view_metadata_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t()
      }
      
  """
  @type update_view_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_users_response() :: %{
        "NextToken" => String.t(),
        "UserSummaryList" => list(user_summary()())
      }
      
  """
  @type list_users_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application() :: %{
        "ApplicationPermissions" => list(String.t()()),
        "Namespace" => String.t()
      }
      
  """
  @type application() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hierarchy_level() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t()
      }
      
  """
  @type hierarchy_level() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_view_request() :: %{}
      
  """
  @type describe_view_request() :: %{}

  @typedoc """

  ## Example:
      
      get_attached_file_response() :: %{
        "AssociatedResourceArn" => String.t(),
        "CreatedBy" => list(),
        "CreationTime" => String.t(),
        "DownloadUrlMetadata" => download_url_metadata(),
        "FileArn" => String.t(),
        "FileId" => String.t(),
        "FileName" => String.t(),
        "FileSizeInBytes" => float(),
        "FileStatus" => list(any()),
        "FileUseCaseType" => list(any()),
        "Tags" => map()
      }
      
  """
  @type get_attached_file_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_evaluation_form_response() :: %{
        "EvaluationFormArn" => String.t(),
        "EvaluationFormId" => String.t(),
        "EvaluationFormVersion" => integer()
      }
      
  """
  @type update_evaluation_form_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type user_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_evaluation_form_versions_response() :: %{
        "EvaluationFormVersionSummaryList" => list(evaluation_form_version_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_evaluation_form_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_evaluation_form_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("ScoringStrategy") => evaluation_form_scoring_strategy(),
        required("Items") => list(list()()),
        required("Title") => String.t()
      }
      
  """
  @type create_evaluation_form_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_contact_recording_response() :: %{}
      
  """
  @type start_contact_recording_response() :: %{}

  @typedoc """

  ## Example:
      
      get_metric_data_v2_request() :: %{
        optional("Groupings") => list(String.t()()),
        optional("Interval") => interval_details(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("EndTime") => non_neg_integer(),
        required("Filters") => list(filter_v2()()),
        required("Metrics") => list(metric_v2()()),
        required("ResourceArn") => String.t(),
        required("StartTime") => non_neg_integer()
      }
      
  """
  @type get_metric_data_v2_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      claim_phone_number_request() :: %{
        optional("ClientToken") => String.t(),
        optional("InstanceId") => String.t(),
        optional("PhoneNumberDescription") => String.t(),
        optional("Tags") => map(),
        optional("TargetArn") => String.t(),
        required("PhoneNumber") => String.t()
      }
      
  """
  @type claim_phone_number_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_contact_request() :: %{
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_quick_connects_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t(),
        "QuickConnects" => list(quick_connect()())
      }
      
  """
  @type search_quick_connects_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_realtime_contact_analysis_segments_v2_response() :: %{
        "Channel" => list(any()),
        "NextToken" => String.t(),
        "Segments" => list(list()()),
        "Status" => list(any())
      }
      
  """
  @type list_realtime_contact_analysis_segments_v2_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integration_association_summary() :: %{
        "InstanceId" => String.t(),
        "IntegrationArn" => String.t(),
        "IntegrationAssociationArn" => String.t(),
        "IntegrationAssociationId" => String.t(),
        "IntegrationType" => list(any()),
        "SourceApplicationName" => String.t(),
        "SourceApplicationUrl" => String.t(),
        "SourceType" => list(any())
      }
      
  """
  @type integration_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_analytics_data_associations_request() :: %{
        optional("DataSetId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_analytics_data_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_contacts_response() :: %{
        "Contacts" => list(contact_search_summary()()),
        "NextToken" => String.t(),
        "TotalCount" => float()
      }
      
  """
  @type search_contacts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_predefined_attributes_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_predefined_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_quick_connects_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("QuickConnectTypes") => list(list(any())())
      }
      
  """
  @type list_quick_connects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      distribution() :: %{
        "Percentage" => integer(),
        "Region" => String.t()
      }
      
  """
  @type distribution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      agent_quality_metrics() :: %{
        "Audio" => audio_quality_metrics_info()
      }
      
  """
  @type agent_quality_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_contact_streaming_response() :: %{
        "StreamingId" => String.t()
      }
      
  """
  @type start_contact_streaming_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_hierarchy_request() :: %{
        optional("HierarchyGroupId") => String.t()
      }
      
  """
  @type update_user_hierarchy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      quick_connect_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter()
      }
      
  """
  @type quick_connect_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_lambda_function_request() :: %{
        required("FunctionArn") => String.t()
      }
      
  """
  @type disassociate_lambda_function_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_instance_storage_config_request() :: %{
        required("ResourceType") => list(any())
      }
      
  """
  @type disassociate_instance_storage_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_routing_profile_queues_request() :: %{
        required("QueueConfigs") => list(routing_profile_queue_config()())
      }
      
  """
  @type update_routing_profile_queues_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_phone_config_request() :: %{
        required("PhoneConfig") => user_phone_config()
      }
      
  """
  @type update_user_phone_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_form_question() :: %{
        "Instructions" => String.t(),
        "NotApplicableEnabled" => boolean(),
        "QuestionType" => list(any()),
        "QuestionTypeProperties" => list(),
        "RefId" => String.t(),
        "Title" => String.t(),
        "Weight" => float()
      }
      
  """
  @type evaluation_form_question() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification_recipient_type() :: %{
        "UserIds" => list(String.t()()),
        "UserTags" => map()
      }
      
  """
  @type notification_recipient_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_stream_config() :: %{
        "StreamArn" => String.t()
      }
      
  """
  @type kinesis_stream_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      real_time_contact_analysis_segment_event() :: %{
        "DisplayName" => String.t(),
        "EventType" => String.t(),
        "Id" => String.t(),
        "ParticipantId" => String.t(),
        "ParticipantRole" => list(any()),
        "Time" => list()
      }
      
  """
  @type real_time_contact_analysis_segment_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      agent_hierarchy_groups() :: %{
        "L1Ids" => list(String.t()()),
        "L2Ids" => list(String.t()()),
        "L3Ids" => list(String.t()()),
        "L4Ids" => list(String.t()()),
        "L5Ids" => list(String.t()())
      }
      
  """
  @type agent_hierarchy_groups() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_use_cases_response() :: %{
        "NextToken" => String.t(),
        "UseCaseSummaryList" => list(use_case()())
      }
      
  """
  @type list_use_cases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_set() :: %{
        "key" => String.t(),
        "value" => String.t()
      }
      
  """
  @type tag_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      match_criteria() :: %{
        "AgentsCriteria" => agents_criteria()
      }
      
  """
  @type match_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      problem_detail() :: %{
        "message" => String.t()
      }
      
  """
  @type problem_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_queues_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchCriteria") => queue_search_criteria(),
        optional("SearchFilter") => queue_search_filter(),
        required("InstanceId") => String.t()
      }
      
  """
  @type search_queues_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_analytics_data_set_request() :: %{
        optional("TargetAccountId") => String.t(),
        required("DataSetId") => String.t()
      }
      
  """
  @type associate_analytics_data_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_users_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchCriteria") => user_search_criteria(),
        optional("SearchFilter") => user_search_filter(),
        required("InstanceId") => String.t()
      }
      
  """
  @type search_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_hierarchy_group_response() :: %{
        "HierarchyGroupArn" => String.t(),
        "HierarchyGroupId" => String.t()
      }
      
  """
  @type create_user_hierarchy_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_user_proficiencies_request() :: %{
        required("UserProficiencies") => list(user_proficiency_disassociate()())
      }
      
  """
  @type disassociate_user_proficiencies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact_data_request() :: %{
        "Attributes" => map(),
        "Campaign" => campaign(),
        "CustomerEndpoint" => endpoint(),
        "QueueId" => String.t(),
        "RequestIdentifier" => String.t(),
        "SystemEndpoint" => endpoint()
      }
      
  """
  @type contact_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_phone_number_contact_flow_request() :: %{
        required("InstanceId") => String.t()
      }
      
  """
  @type disassociate_phone_number_contact_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact_analysis() :: %{
        "Transcript" => transcript()
      }
      
  """
  @type contact_analysis() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_approved_origins_response() :: %{
        "NextToken" => String.t(),
        "Origins" => list(String.t()())
      }
      
  """
  @type list_approved_origins_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      security_profile_search_summary() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "Id" => String.t(),
        "OrganizationResourceId" => String.t(),
        "SecurityProfileName" => String.t(),
        "Tags" => map()
      }
      
  """
  @type security_profile_search_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      agents_criteria() :: %{
        "AgentIds" => list(String.t()())
      }
      
  """
  @type agents_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_view_response() :: %{
        "View" => view()
      }
      
  """
  @type create_view_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      routing_profile_search_criteria() :: %{
        "AndConditions" => list(routing_profile_search_criteria()()),
        "OrConditions" => list(routing_profile_search_criteria()()),
        "StringCondition" => string_condition()
      }
      
  """
  @type routing_profile_search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_form_numeric_question_option() :: %{
        "AutomaticFail" => boolean(),
        "MaxValue" => integer(),
        "MinValue" => integer(),
        "Score" => integer()
      }
      
  """
  @type evaluation_form_numeric_question_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_task_contact_request() :: %{
        optional("Attributes") => map(),
        optional("ClientToken") => String.t(),
        optional("ContactFlowId") => String.t(),
        optional("Description") => String.t(),
        optional("PreviousContactId") => String.t(),
        optional("QuickConnectId") => String.t(),
        optional("References") => map(),
        optional("RelatedContactId") => String.t(),
        optional("ScheduledTime") => non_neg_integer(),
        optional("TaskTemplateId") => String.t(),
        required("InstanceId") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type start_task_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_case_action_definition() :: %{
        "Fields" => list(field_value()()),
        "TemplateId" => String.t()
      }
      
  """
  @type create_case_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_rule_response() :: %{
        "RuleArn" => String.t(),
        "RuleId" => String.t()
      }
      
  """
  @type create_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      current_metric_result() :: %{
        "Collections" => list(current_metric_data()()),
        "Dimensions" => dimensions()
      }
      
  """
  @type current_metric_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      condition() :: %{
        "NumberCondition" => number_condition(),
        "StringCondition" => string_condition()
      }
      
  """
  @type condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_phone_number_contact_flow_request() :: %{
        required("ContactFlowId") => String.t(),
        required("InstanceId") => String.t()
      }
      
  """
  @type associate_phone_number_contact_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_predefined_attribute_request() :: %{
        optional("Values") => list()
      }
      
  """
  @type update_predefined_attribute_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_integration_associations_request() :: %{
        optional("IntegrationArn") => String.t(),
        optional("IntegrationType") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_integration_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_queue_request() :: %{
        optional("Description") => String.t(),
        optional("MaxContacts") => integer(),
        optional("OutboundCallerConfig") => outbound_caller_config(),
        optional("QuickConnectIds") => list(String.t()()),
        optional("Tags") => map(),
        required("HoursOfOperationId") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_queue_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attribute_and_condition() :: %{
        "HierarchyGroupCondition" => hierarchy_group_condition(),
        "TagConditions" => list(tag_condition()())
      }
      
  """
  @type attribute_and_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_contact_flow_module_response() :: %{}
      
  """
  @type delete_contact_flow_module_response() :: %{}

  @typedoc """

  ## Example:
      
      chat_participant_role_config() :: %{
        "ParticipantTimerConfigList" => list(participant_timer_configuration()())
      }
      
  """
  @type chat_participant_role_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      single_select_question_rule_category_automation() :: %{
        "Category" => String.t(),
        "Condition" => list(any()),
        "OptionRefId" => String.t()
      }
      
  """
  @type single_select_question_rule_category_automation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lex_bot() :: %{
        "LexRegion" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type lex_bot() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_info() :: %{
        "OperatingSystem" => String.t(),
        "PlatformName" => String.t(),
        "PlatformVersion" => String.t()
      }
      
  """
  @type device_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hierarchy_path() :: %{
        "LevelFive" => hierarchy_group_summary(),
        "LevelFour" => hierarchy_group_summary(),
        "LevelOne" => hierarchy_group_summary(),
        "LevelThree" => hierarchy_group_summary(),
        "LevelTwo" => hierarchy_group_summary()
      }
      
  """
  @type hierarchy_path() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      quick_connect_config() :: %{
        "PhoneConfig" => phone_number_quick_connect_config(),
        "QueueConfig" => queue_quick_connect_config(),
        "QuickConnectType" => list(any()),
        "UserConfig" => user_quick_connect_config()
      }
      
  """
  @type quick_connect_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instances_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connection_data() :: %{
        "Attendee" => attendee(),
        "Meeting" => meeting()
      }
      
  """
  @type connection_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitor_contact_response() :: %{
        "ContactArn" => String.t(),
        "ContactId" => String.t()
      }
      
  """
  @type monitor_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_instance_storage_config_response() :: %{
        "AssociationId" => String.t()
      }
      
  """
  @type associate_instance_storage_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_traffic_distribution_group_users_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_traffic_distribution_group_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_request() :: %{}
      
  """
  @type delete_user_request() :: %{}

  @typedoc """

  ## Example:
      
      get_metric_data_response() :: %{
        "MetricResults" => list(historical_metric_result()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_metric_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_evaluation_forms_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_evaluation_forms_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact_flow_module_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "State" => list(any())
      }
      
  """
  @type contact_flow_module_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      flow_association_summary() :: %{
        "FlowId" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => list(any())
      }
      
  """
  @type flow_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule() :: %{
        "Actions" => list(rule_action()()),
        "CreatedTime" => non_neg_integer(),
        "Function" => String.t(),
        "LastUpdatedBy" => String.t(),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t(),
        "PublishStatus" => list(any()),
        "RuleArn" => String.t(),
        "RuleId" => String.t(),
        "Tags" => map(),
        "TriggerEventSource" => rule_trigger_event_source()
      }
      
  """
  @type rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_hierarchy_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_user_hierarchy_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sort() :: %{
        "FieldName" => list(any()),
        "Order" => list(any())
      }
      
  """
  @type sort() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact() :: %{
        "AgentInfo" => agent_info(),
        "AnsweringMachineDetectionStatus" => list(any()),
        "Arn" => String.t(),
        "Campaign" => campaign(),
        "Channel" => list(any()),
        "ConnectedToSystemTimestamp" => non_neg_integer(),
        "Customer" => customer(),
        "CustomerVoiceActivity" => customer_voice_activity(),
        "Description" => String.t(),
        "DisconnectDetails" => disconnect_details(),
        "DisconnectTimestamp" => non_neg_integer(),
        "Id" => String.t(),
        "InitialContactId" => String.t(),
        "InitiationMethod" => list(any()),
        "InitiationTimestamp" => non_neg_integer(),
        "LastPausedTimestamp" => non_neg_integer(),
        "LastResumedTimestamp" => non_neg_integer(),
        "LastUpdateTimestamp" => non_neg_integer(),
        "Name" => String.t(),
        "PreviousContactId" => String.t(),
        "QualityMetrics" => quality_metrics(),
        "QueueInfo" => queue_info(),
        "QueuePriority" => float(),
        "QueueTimeAdjustmentSeconds" => integer(),
        "RelatedContactId" => String.t(),
        "RoutingCriteria" => routing_criteria(),
        "ScheduledTimestamp" => non_neg_integer(),
        "SegmentAttributes" => map(),
        "Tags" => map(),
        "TotalPauseCount" => integer(),
        "TotalPauseDurationInSeconds" => integer(),
        "WisdomInfo" => wisdom_info()
      }
      
  """
  @type contact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_routing_profile_default_outbound_queue_request() :: %{
        required("DefaultOutboundQueueId") => String.t()
      }
      
  """
  @type update_routing_profile_default_outbound_queue_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_routing_profile_concurrency_request() :: %{
        required("MediaConcurrencies") => list(media_concurrency()())
      }
      
  """
  @type update_routing_profile_concurrency_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      routing_profile_queue_reference() :: %{
        "Channel" => list(any()),
        "QueueId" => String.t()
      }
      
  """
  @type routing_profile_queue_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      control_plane_user_attribute_filter() :: %{
        "AndCondition" => attribute_and_condition(),
        "HierarchyGroupCondition" => hierarchy_group_condition(),
        "OrConditions" => list(attribute_and_condition()()),
        "TagCondition" => tag_condition()
      }
      
  """
  @type control_plane_user_attribute_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_agent_status_response() :: %{
        "AgentStatusARN" => String.t(),
        "AgentStatusId" => String.t()
      }
      
  """
  @type create_agent_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_views_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Type") => list(any())
      }
      
  """
  @type list_views_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_contact_streaming_request() :: %{
        required("ContactId") => String.t(),
        required("InstanceId") => String.t(),
        required("StreamingId") => String.t()
      }
      
  """
  @type stop_contact_streaming_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_reference() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }
      
  """
  @type user_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_flow_metadata_request() :: %{
        optional("ContactFlowState") => list(any()),
        optional("Description") => String.t(),
        optional("Name") => String.t()
      }
      
  """
  @type update_contact_flow_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      routing_profile_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t()
      }
      
  """
  @type routing_profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dismiss_user_contact_request() :: %{
        required("ContactId") => String.t()
      }
      
  """
  @type dismiss_user_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      voice_recording_configuration() :: %{
        "VoiceRecordingTrack" => list(any())
      }
      
  """
  @type voice_recording_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_form_numeric_question_properties() :: %{
        "Automation" => list(),
        "MaxValue" => integer(),
        "MinValue" => integer(),
        "Options" => list(evaluation_form_numeric_question_option()())
      }
      
  """
  @type evaluation_form_numeric_question_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instance_attributes_response() :: %{
        "Attributes" => list(attribute()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_instance_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_user_status_request() :: %{
        required("AgentStatusId") => String.t()
      }
      
  """
  @type put_user_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hierarchy_group() :: %{
        "Arn" => String.t(),
        "HierarchyPath" => hierarchy_path(),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "LevelId" => String.t(),
        "Name" => String.t(),
        "Tags" => map()
      }
      
  """
  @type hierarchy_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      searchable_contact_attributes_criteria() :: %{
        "Key" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type searchable_contact_attributes_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_view_versions_response() :: %{
        "NextToken" => String.t(),
        "ViewVersionSummaryList" => list(view_version_summary()())
      }
      
  """
  @type list_view_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint() :: %{
        "Address" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      queue_reference() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }
      
  """
  @type queue_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      interval_details() :: %{
        "IntervalPeriod" => list(any()),
        "TimeZone" => String.t()
      }
      
  """
  @type interval_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_contact_flow_modules_response() :: %{
        "ContactFlowModulesSummaryList" => list(contact_flow_module_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_contact_flow_modules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_action() :: %{
        "ActionType" => list(any()),
        "AssignContactCategoryAction" => assign_contact_category_action_definition(),
        "CreateCaseAction" => create_case_action_definition(),
        "EndAssociatedTasksAction" => end_associated_tasks_action_definition(),
        "EventBridgeAction" => event_bridge_action_definition(),
        "SendNotificationAction" => send_notification_action_definition(),
        "SubmitAutoEvaluationAction" => submit_auto_evaluation_action_definition(),
        "TaskAction" => task_action_definition(),
        "UpdateCaseAction" => update_case_action_definition()
      }
      
  """
  @type rule_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instances_response() :: %{
        "InstanceSummaryList" => list(instance_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_routing_profile_agent_availability_timer_request() :: %{
        required("AgentAvailabilityTimer") => list(any())
      }
      
  """
  @type update_routing_profile_agent_availability_timer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resume_contact_response() :: %{}
      
  """
  @type resume_contact_response() :: %{}

  @typedoc """

  ## Example:
      
      list_prompts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_prompts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_contact_evaluation_request() :: %{}
      
  """
  @type delete_contact_evaluation_request() :: %{}

  @typedoc """

  ## Example:
      
      list_security_profile_permissions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_security_profile_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_case_action_definition() :: %{
        "Fields" => list(field_value()())
      }
      
  """
  @type update_case_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_contact_response() :: %{}
      
  """
  @type untag_contact_response() :: %{}

  @typedoc """

  ## Example:
      
      security_profile() :: %{
        "AllowedAccessControlHierarchyGroupId" => String.t(),
        "AllowedAccessControlTags" => map(),
        "Arn" => String.t(),
        "Description" => String.t(),
        "HierarchyRestrictedResources" => list(String.t()()),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "OrganizationResourceId" => String.t(),
        "SecurityProfileName" => String.t(),
        "TagRestrictedResources" => list(String.t()()),
        "Tags" => map()
      }
      
  """
  @type security_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      quick_connect_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "QuickConnectType" => list(any())
      }
      
  """
  @type quick_connect_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_security_key_request() :: %{
        required("Key") => String.t()
      }
      
  """
  @type associate_security_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      current_metric() :: %{
        "Name" => list(any()),
        "Unit" => list(any())
      }
      
  """
  @type current_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      traffic_distribution_group() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "Id" => String.t(),
        "InstanceArn" => String.t(),
        "IsDefault" => boolean(),
        "Name" => String.t(),
        "Status" => list(any()),
        "Tags" => map()
      }
      
  """
  @type traffic_distribution_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_hierarchy_group_search_criteria() :: %{
        "AndConditions" => list(user_hierarchy_group_search_criteria()()),
        "OrConditions" => list(user_hierarchy_group_search_criteria()()),
        "StringCondition" => string_condition()
      }
      
  """
  @type user_hierarchy_group_search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_summary() :: %{
        "ActionSummaries" => list(action_summary()()),
        "CreatedTime" => non_neg_integer(),
        "EventSourceName" => list(any()),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t(),
        "PublishStatus" => list(any()),
        "RuleArn" => String.t(),
        "RuleId" => String.t()
      }
      
  """
  @type rule_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_security_profile_applications_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_security_profile_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_routing_profile_name_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t()
      }
      
  """
  @type update_routing_profile_name_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact_flow_module_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter()
      }
      
  """
  @type contact_flow_module_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_routing_profile_queues_response() :: %{
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "NextToken" => String.t(),
        "RoutingProfileQueueConfigSummaryList" => list(routing_profile_queue_config_summary()())
      }
      
  """
  @type list_routing_profile_queues_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_contact_flow_modules_request() :: %{
        optional("ContactFlowModuleState") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_contact_flow_modules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_bot_request() :: %{
        optional("LexBot") => lex_bot(),
        optional("LexV2Bot") => lex_v2_bot()
      }
      
  """
  @type associate_bot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_lex_bot_request() :: %{
        required("LexBot") => lex_bot()
      }
      
  """
  @type associate_lex_bot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_security_profile_request() :: %{}
      
  """
  @type delete_security_profile_request() :: %{}

  @typedoc """

  ## Example:
      
      describe_user_response() :: %{
        "User" => user()
      }
      
  """
  @type describe_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      string_condition() :: %{
        "ComparisonType" => list(any()),
        "FieldName" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type string_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bots_response() :: %{
        "LexBots" => list(lex_bot_config()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_bots_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact_search_summary_agent_info() :: %{
        "ConnectedToAgentTimestamp" => non_neg_integer(),
        "Id" => String.t()
      }
      
  """
  @type contact_search_summary_agent_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      quality_metrics() :: %{
        "Agent" => agent_quality_metrics(),
        "Customer" => customer_quality_metrics()
      }
      
  """
  @type quality_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_hierarchy_structure_request() :: %{
        required("HierarchyStructure") => hierarchy_structure_update()
      }
      
  """
  @type update_user_hierarchy_structure_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_traffic_distribution_group_request() :: %{}
      
  """
  @type delete_traffic_distribution_group_request() :: %{}

  @typedoc """

  ## Example:
      
      describe_rule_request() :: %{}
      
  """
  @type describe_rule_request() :: %{}

  @typedoc """

  ## Example:
      
      deactivate_evaluation_form_request() :: %{
        required("EvaluationFormVersion") => integer()
      }
      
  """
  @type deactivate_evaluation_form_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_security_profiles_request() :: %{
        required("SecurityProfileIds") => list(String.t()())
      }
      
  """
  @type update_user_security_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_status_reason() :: %{
        "Message" => String.t()
      }
      
  """
  @type instance_status_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_agent_status_request() :: %{
        optional("Description") => String.t(),
        optional("DisplayOrder") => integer(),
        optional("Tags") => map(),
        required("Name") => String.t(),
        required("State") => list(any())
      }
      
  """
  @type create_agent_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resume_contact_request() :: %{
        optional("ContactFlowId") => String.t(),
        required("ContactId") => String.t(),
        required("InstanceId") => String.t()
      }
      
  """
  @type resume_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_traffic_distribution_group_user_response() :: %{}
      
  """
  @type associate_traffic_distribution_group_user_response() :: %{}

  @typedoc """

  ## Example:
      
      customer_voice_activity() :: %{
        "GreetingEndTimestamp" => non_neg_integer(),
        "GreetingStartTimestamp" => non_neg_integer()
      }
      
  """
  @type customer_voice_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_routing_data_response() :: %{}
      
  """
  @type update_contact_routing_data_response() :: %{}

  @typedoc """

  ## Example:
      
      get_flow_association_request() :: %{}
      
  """
  @type get_flow_association_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_integration_association_request() :: %{}
      
  """
  @type delete_integration_association_request() :: %{}

  @typedoc """

  ## Example:
      
      list_security_keys_response() :: %{
        "NextToken" => String.t(),
        "SecurityKeys" => list(security_key()())
      }
      
  """
  @type list_security_keys_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_view_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("Content") => view_input_content(),
        required("Name") => String.t(),
        required("Status") => list(any())
      }
      
  """
  @type create_view_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_prompt_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("S3Uri") => String.t()
      }
      
  """
  @type update_prompt_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_search_criteria() :: %{
        "AndConditions" => list(user_search_criteria()()),
        "HierarchyGroupCondition" => hierarchy_group_condition(),
        "ListCondition" => list_condition(),
        "OrConditions" => list(user_search_criteria()()),
        "StringCondition" => string_condition()
      }
      
  """
  @type user_search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_contact_evaluation_request() :: %{}
      
  """
  @type describe_contact_evaluation_request() :: %{}

  @typedoc """

  ## Example:
      
      agent_status_search_filter() :: %{
        "AttributeFilter" => control_plane_attribute_filter()
      }
      
  """
  @type agent_status_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_traffic_distribution_response() :: %{
        "AgentConfig" => agent_config(),
        "Arn" => String.t(),
        "Id" => String.t(),
        "SignInConfig" => sign_in_config(),
        "TelephonyConfig" => telephony_config()
      }
      
  """
  @type get_traffic_distribution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transfer_contact_response() :: %{
        "ContactArn" => String.t(),
        "ContactId" => String.t()
      }
      
  """
  @type transfer_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_view_content_request() :: %{
        required("Content") => view_input_content(),
        required("Status") => list(any())
      }
      
  """
  @type update_view_content_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_evaluation_response() :: %{
        "EvaluationArn" => String.t(),
        "EvaluationId" => String.t()
      }
      
  """
  @type update_contact_evaluation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_form_single_select_question_option() :: %{
        "AutomaticFail" => boolean(),
        "RefId" => String.t(),
        "Score" => integer(),
        "Text" => String.t()
      }
      
  """
  @type evaluation_form_single_select_question_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_view_content_response() :: %{
        "View" => view()
      }
      
  """
  @type update_view_content_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_instance_request() :: %{
        optional("ClientToken") => String.t(),
        optional("DirectoryId") => String.t(),
        optional("InstanceAlias") => String.t(),
        optional("Tags") => map(),
        required("IdentityManagementType") => list(any()),
        required("InboundCallsEnabled") => boolean(),
        required("OutboundCallsEnabled") => boolean()
      }
      
  """
  @type create_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hierarchy_group_summary_reference() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }
      
  """
  @type hierarchy_group_summary_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hierarchy_structure() :: %{
        "LevelFive" => hierarchy_level(),
        "LevelFour" => hierarchy_level(),
        "LevelOne" => hierarchy_level(),
        "LevelThree" => hierarchy_level(),
        "LevelTwo" => hierarchy_level()
      }
      
  """
  @type hierarchy_structure() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_contact_streaming_response() :: %{}
      
  """
  @type stop_contact_streaming_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_instance_response() :: %{
        "Instance" => instance()
      }
      
  """
  @type describe_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      new_session_details() :: %{
        "Attributes" => map(),
        "ParticipantDetails" => participant_details(),
        "StreamingConfiguration" => chat_streaming_configuration(),
        "SupportedMessagingContentTypes" => list(String.t()())
      }
      
  """
  @type new_session_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hierarchy_groups() :: %{
        "Level1" => agent_hierarchy_group(),
        "Level2" => agent_hierarchy_group(),
        "Level3" => agent_hierarchy_group(),
        "Level4" => agent_hierarchy_group(),
        "Level5" => agent_hierarchy_group()
      }
      
  """
  @type hierarchy_groups() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_queue_outbound_caller_config_request() :: %{
        required("OutboundCallerConfig") => outbound_caller_config()
      }
      
  """
  @type update_queue_outbound_caller_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_contact_attributes_response() :: %{
        "Attributes" => map()
      }
      
  """
  @type get_contact_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Id" => String.t(),
        "IdentityManagementType" => list(any()),
        "InboundCallsEnabled" => boolean(),
        "InstanceAccessUrl" => String.t(),
        "InstanceAlias" => String.t(),
        "InstanceStatus" => list(any()),
        "OutboundCallsEnabled" => boolean(),
        "ServiceRole" => String.t(),
        "StatusReason" => instance_status_reason(),
        "Tags" => map()
      }
      
  """
  @type instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sign_in_config() :: %{
        "Distributions" => list(sign_in_distribution()())
      }
      
  """
  @type sign_in_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_routing_profiles_response() :: %{
        "NextToken" => String.t(),
        "RoutingProfileSummaryList" => list(routing_profile_summary()())
      }
      
  """
  @type list_routing_profiles_response() :: %{String.t() => any()}

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
      
      create_contact_flow_module_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }
      
  """
  @type create_contact_flow_module_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_web_r_t_c_contact_response() :: %{
        "ConnectionData" => connection_data(),
        "ContactId" => String.t(),
        "ParticipantId" => String.t(),
        "ParticipantToken" => String.t()
      }
      
  """
  @type start_web_r_t_c_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      current_metric_sort_criteria() :: %{
        "SortByMetric" => list(any()),
        "SortOrder" => list(any())
      }
      
  """
  @type current_metric_sort_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_traffic_distribution_response() :: %{}
      
  """
  @type update_traffic_distribution_response() :: %{}

  @typedoc """

  ## Example:
      
      security_key() :: %{
        "AssociationId" => String.t(),
        "CreationTime" => non_neg_integer(),
        "Key" => String.t()
      }
      
  """
  @type security_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rules_response() :: %{
        "NextToken" => String.t(),
        "RuleSummaryList" => list(rule_summary()())
      }
      
  """
  @type list_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_resource_tags_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceTypes") => list(String.t()()),
        optional("SearchCriteria") => resource_tags_search_criteria(),
        required("InstanceId") => String.t()
      }
      
  """
  @type search_resource_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disconnect_reason() :: %{
        "Code" => String.t()
      }
      
  """
  @type disconnect_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replicate_instance_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }
      
  """
  @type replicate_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      real_time_contact_analysis_character_interval() :: %{
        "BeginOffsetChar" => integer(),
        "EndOffsetChar" => integer()
      }
      
  """
  @type real_time_contact_analysis_character_interval() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      field_value() :: %{
        "Id" => String.t(),
        "Value" => field_value_union()
      }
      
  """
  @type field_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_template_constraints() :: %{
        "InvisibleFields" => list(invisible_field_info()()),
        "ReadOnlyFields" => list(read_only_field_info()()),
        "RequiredFields" => list(required_field_info()())
      }
      
  """
  @type task_template_constraints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_routing_data_request() :: %{
        optional("QueuePriority") => float(),
        optional("QueueTimeAdjustmentSeconds") => integer()
      }
      
  """
  @type update_contact_routing_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_traffic_distribution_group_response() :: %{
        "TrafficDistributionGroup" => traffic_distribution_group()
      }
      
  """
  @type describe_traffic_distribution_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hours_of_operations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_hours_of_operations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_hierarchy_group_response() :: %{
        "HierarchyGroup" => hierarchy_group()
      }
      
  """
  @type describe_user_hierarchy_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      audio_quality_metrics_info() :: %{
        "PotentialQualityIssues" => list(String.t()()),
        "QualityScore" => float()
      }
      
  """
  @type audio_quality_metrics_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_queue_name_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t()
      }
      
  """
  @type update_queue_name_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_contact_request() :: %{
        required("ContactId") => String.t(),
        required("InstanceId") => String.t(),
        required("Tags") => map()
      }
      
  """
  @type tag_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_contact_evaluation_response() :: %{
        "EvaluationArn" => String.t(),
        "EvaluationId" => String.t()
      }
      
  """
  @type start_contact_evaluation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_routing_profiles_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t(),
        "RoutingProfiles" => list(routing_profile()())
      }
      
  """
  @type search_routing_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      queue_quick_connect_config() :: %{
        "ContactFlowId" => String.t(),
        "QueueId" => String.t()
      }
      
  """
  @type queue_quick_connect_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_proficiency() :: %{
        "AttributeName" => String.t(),
        "AttributeValue" => String.t(),
        "Level" => float()
      }
      
  """
  @type user_proficiency() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      queue_search_criteria() :: %{
        "AndConditions" => list(queue_search_criteria()()),
        "OrConditions" => list(queue_search_criteria()()),
        "QueueTypeCondition" => list(any()),
        "StringCondition" => string_condition()
      }
      
  """
  @type queue_search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      submit_contact_evaluation_request() :: %{
        optional("Answers") => map(),
        optional("Notes") => map()
      }
      
  """
  @type submit_contact_evaluation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      common_attribute_and_condition() :: %{
        "TagConditions" => list(tag_condition()())
      }
      
  """
  @type common_attribute_and_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_request() :: %{}
      
  """
  @type describe_user_request() :: %{}

  @typedoc """

  ## Example:
      
      associate_user_proficiencies_request() :: %{
        required("UserProficiencies") => list(user_proficiency()())
      }
      
  """
  @type associate_user_proficiencies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_security_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchCriteria") => security_profile_search_criteria(),
        optional("SearchFilter") => security_profiles_search_filter(),
        required("InstanceId") => String.t()
      }
      
  """
  @type search_security_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_prompts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchCriteria") => prompt_search_criteria(),
        optional("SearchFilter") => prompt_search_filter(),
        required("InstanceId") => String.t()
      }
      
  """
  @type search_prompts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_security_profile_request() :: %{}
      
  """
  @type describe_security_profile_request() :: %{}

  @typedoc """

  ## Example:
      
      search_security_profiles_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t(),
        "SecurityProfiles" => list(security_profile_search_summary()())
      }
      
  """
  @type search_security_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      agent_config() :: %{
        "Distributions" => list(distribution()())
      }
      
  """
  @type agent_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_answer_input() :: %{
        "Value" => list()
      }
      
  """
  @type evaluation_answer_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_bridge_action_definition() :: %{
        "Name" => String.t()
      }
      
  """
  @type event_bridge_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_default_vocabularies_request() :: %{
        optional("LanguageCode") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_default_vocabularies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_contact_references_request() :: %{
        optional("NextToken") => String.t(),
        required("ReferenceTypes") => list(list(any())())
      }
      
  """
  @type list_contact_references_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      meeting_features_configuration() :: %{
        "Audio" => audio_features()
      }
      
  """
  @type meeting_features_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_attributes_request() :: %{
        required("Attributes") => map(),
        required("InitialContactId") => String.t(),
        required("InstanceId") => String.t()
      }
      
  """
  @type update_contact_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("References") => map()
      }
      
  """
  @type update_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_contact_flow_request() :: %{}
      
  """
  @type describe_contact_flow_request() :: %{}

  @typedoc """

  ## Example:
      
      list_queue_quick_connects_response() :: %{
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "NextToken" => String.t(),
        "QuickConnectSummaryList" => list(quick_connect_summary()())
      }
      
  """
  @type list_queue_quick_connects_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      searchable_contact_attributes() :: %{
        "Criteria" => list(searchable_contact_attributes_criteria()()),
        "MatchType" => list(any())
      }
      
  """
  @type searchable_contact_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_routing_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_routing_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_put_contact_response() :: %{
        "FailedRequestList" => list(failed_request()()),
        "SuccessfulRequestList" => list(successful_request()())
      }
      
  """
  @type batch_put_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_contact_flow_response() :: %{
        "ContactFlow" => contact_flow()
      }
      
  """
  @type describe_contact_flow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_flow_content_response() :: %{}
      
  """
  @type update_contact_flow_content_response() :: %{}

  @typedoc """

  ## Example:
      
      stop_contact_response() :: %{}
      
  """
  @type stop_contact_response() :: %{}

  @typedoc """

  ## Example:
      
      invalid_contact_flow_module_exception() :: %{
        "Problems" => list(problem_detail()())
      }
      
  """
  @type invalid_contact_flow_module_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{}
      
  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:
      
      contact_flow() :: %{
        "Arn" => String.t(),
        "Content" => String.t(),
        "Description" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "State" => list(any()),
        "Status" => list(any()),
        "Tags" => map(),
        "Type" => list(any())
      }
      
  """
  @type contact_flow() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_traffic_distribution_groups_response() :: %{
        "NextToken" => String.t(),
        "TrafficDistributionGroupSummaryList" => list(traffic_distribution_group_summary()())
      }
      
  """
  @type list_traffic_distribution_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_contact_flows_response() :: %{
        "ContactFlowSummaryList" => list(contact_flow_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_contact_flows_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      idempotency_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type idempotency_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_quick_connects_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchCriteria") => quick_connect_search_criteria(),
        optional("SearchFilter") => quick_connect_search_filter(),
        required("InstanceId") => String.t()
      }
      
  """
  @type search_quick_connects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_form_section() :: %{
        "Instructions" => String.t(),
        "Items" => list(list()()),
        "RefId" => String.t(),
        "Title" => String.t(),
        "Weight" => float()
      }
      
  """
  @type evaluation_form_section() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_contacts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchCriteria") => search_criteria(),
        optional("Sort") => sort(),
        required("InstanceId") => String.t(),
        required("TimeRange") => search_contacts_time_range()
      }
      
  """
  @type search_contacts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_quick_connect_request() :: %{}
      
  """
  @type delete_quick_connect_request() :: %{}

  @typedoc """

  ## Example:
      
      list_integration_associations_response() :: %{
        "IntegrationAssociationSummaryList" => list(integration_association_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_integration_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      field_value_union() :: %{
        "BooleanValue" => boolean(),
        "DoubleValue" => float(),
        "EmptyValue" => empty_field_value(),
        "StringValue" => String.t()
      }
      
  """
  @type field_value_union() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      phone_number_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "PhoneNumber" => String.t(),
        "PhoneNumberCountryCode" => list(any()),
        "PhoneNumberType" => list(any())
      }
      
  """
  @type phone_number_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hierarchy_level_update() :: %{
        "Name" => String.t()
      }
      
  """
  @type hierarchy_level_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resume_contact_recording_request() :: %{
        required("ContactId") => String.t(),
        required("InitialContactId") => String.t(),
        required("InstanceId") => String.t()
      }
      
  """
  @type resume_contact_recording_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_security_key_request() :: %{}
      
  """
  @type disassociate_security_key_request() :: %{}

  @typedoc """

  ## Example:
      
      instance_summary() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Id" => String.t(),
        "IdentityManagementType" => list(any()),
        "InboundCallsEnabled" => boolean(),
        "InstanceAccessUrl" => String.t(),
        "InstanceAlias" => String.t(),
        "InstanceStatus" => list(any()),
        "OutboundCallsEnabled" => boolean(),
        "ServiceRole" => String.t()
      }
      
  """
  @type instance_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instance_storage_config_request() :: %{
        required("ResourceType") => list(any())
      }
      
  """
  @type describe_instance_storage_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_participant_role_config_request() :: %{
        required("ChannelConfiguration") => list()
      }
      
  """
  @type update_participant_role_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_predefined_attributes_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchCriteria") => predefined_attribute_search_criteria(),
        required("InstanceId") => String.t()
      }
      
  """
  @type search_predefined_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_instance_request() :: %{}
      
  """
  @type delete_instance_request() :: %{}

  @typedoc """

  ## Example:
      
      current_metric_data() :: %{
        "Metric" => current_metric(),
        "Value" => float()
      }
      
  """
  @type current_metric_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user() :: %{
        "Arn" => String.t(),
        "DirectoryUserId" => String.t(),
        "HierarchyGroupId" => String.t(),
        "Id" => String.t(),
        "IdentityInfo" => user_identity_info(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "PhoneConfig" => user_phone_config(),
        "RoutingProfileId" => String.t(),
        "SecurityProfileIds" => list(String.t()()),
        "Tags" => map(),
        "Username" => String.t()
      }
      
  """
  @type user() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_flow_name_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t()
      }
      
  """
  @type update_contact_flow_name_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vocabulary_request() :: %{}
      
  """
  @type delete_vocabulary_request() :: %{}

  @typedoc """

  ## Example:
      
      expression() :: %{
        "AndExpression" => list(expression()()),
        "AttributeCondition" => attribute_condition(),
        "OrExpression" => list(expression()())
      }
      
  """
  @type expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact_search_summary() :: %{
        "AgentInfo" => contact_search_summary_agent_info(),
        "Arn" => String.t(),
        "Channel" => list(any()),
        "DisconnectTimestamp" => non_neg_integer(),
        "Id" => String.t(),
        "InitialContactId" => String.t(),
        "InitiationMethod" => list(any()),
        "InitiationTimestamp" => non_neg_integer(),
        "PreviousContactId" => String.t(),
        "QueueInfo" => contact_search_summary_queue_info(),
        "ScheduledTimestamp" => non_neg_integer()
      }
      
  """
  @type contact_search_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_contact_flow_module_response() :: %{
        "ContactFlowModule" => contact_flow_module()
      }
      
  """
  @type describe_contact_flow_module_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_flow_response() :: %{}
      
  """
  @type disassociate_flow_response() :: %{}

  @typedoc """

  ## Example:
      
      predefined_attribute_search_criteria() :: %{
        "AndConditions" => list(predefined_attribute_search_criteria()()),
        "OrConditions" => list(predefined_attribute_search_criteria()()),
        "StringCondition" => string_condition()
      }
      
  """
  @type predefined_attribute_search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_quick_connect_response() :: %{
        "QuickConnect" => quick_connect()
      }
      
  """
  @type describe_quick_connect_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predefined_attribute_summary() :: %{
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t()
      }
      
  """
  @type predefined_attribute_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      real_time_contact_analysis_transcript_item_redaction() :: %{
        "CharacterOffsets" => list(real_time_contact_analysis_character_interval()())
      }
      
  """
  @type real_time_contact_analysis_transcript_item_redaction() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_hierarchy_group_request() :: %{
        optional("ParentGroupId") => String.t(),
        optional("Tags") => map(),
        required("Name") => String.t()
      }
      
  """
  @type create_user_hierarchy_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hours_of_operation_response() :: %{
        "HoursOfOperationArn" => String.t(),
        "HoursOfOperationId" => String.t()
      }
      
  """
  @type create_hours_of_operation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hours_of_operation_search_criteria() :: %{
        "AndConditions" => list(hours_of_operation_search_criteria()()),
        "OrConditions" => list(hours_of_operation_search_criteria()()),
        "StringCondition" => string_condition()
      }
      
  """
  @type hours_of_operation_search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_routing_profile_response() :: %{
        "RoutingProfileArn" => String.t(),
        "RoutingProfileId" => String.t()
      }
      
  """
  @type create_routing_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assign_contact_category_action_definition() :: %{}
      
  """
  @type assign_contact_category_action_definition() :: %{}

  @typedoc """

  ## Example:
      
      search_contact_flows_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchCriteria") => contact_flow_search_criteria(),
        optional("SearchFilter") => contact_flow_search_filter(),
        required("InstanceId") => String.t()
      }
      
  """
  @type search_contact_flows_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_prompt_file_request() :: %{}
      
  """
  @type get_prompt_file_request() :: %{}

  @typedoc """

  ## Example:
      
      analytics_data_association_result() :: %{
        "DataSetId" => String.t(),
        "ResourceShareArn" => String.t(),
        "ResourceShareId" => String.t(),
        "TargetAccountId" => String.t()
      }
      
  """
  @type analytics_data_association_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_attached_file_upload_response() :: %{
        "CreatedBy" => list(),
        "CreationTime" => String.t(),
        "FileArn" => String.t(),
        "FileId" => String.t(),
        "FileStatus" => list(any()),
        "UploadUrlMetadata" => upload_url_metadata()
      }
      
  """
  @type start_attached_file_upload_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_view_response() :: %{}
      
  """
  @type delete_view_response() :: %{}

  @typedoc """

  ## Example:
      
      list_phone_numbers_v2_response() :: %{
        "ListPhoneNumbersSummaryList" => list(list_phone_numbers_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_phone_numbers_v2_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_proficiencies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_user_proficiencies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_task_template_response() :: %{
        "Arn" => String.t(),
        "Constraints" => task_template_constraints(),
        "ContactFlowId" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Defaults" => task_template_defaults(),
        "Description" => String.t(),
        "Fields" => list(task_template_field()()),
        "Id" => String.t(),
        "InstanceId" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type update_task_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_v2() :: %{
        "MetricFilters" => list(metric_filter_v2()()),
        "Name" => String.t(),
        "Threshold" => list(threshold_v2()())
      }
      
  """
  @type metric_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      threshold() :: %{
        "Comparison" => list(any()),
        "ThresholdValue" => float()
      }
      
  """
  @type threshold() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_outbound_voice_contact_request() :: %{
        optional("AnswerMachineDetectionConfig") => answer_machine_detection_config(),
        optional("Attributes") => map(),
        optional("CampaignId") => String.t(),
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("QueueId") => String.t(),
        optional("References") => map(),
        optional("RelatedContactId") => String.t(),
        optional("SourcePhoneNumber") => String.t(),
        optional("TrafficType") => list(any()),
        required("ContactFlowId") => String.t(),
        required("DestinationPhoneNumber") => String.t(),
        required("InstanceId") => String.t()
      }
      
  """
  @type start_outbound_voice_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attribute() :: %{
        "AttributeType" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_use_case_request() :: %{
        optional("Tags") => map(),
        required("UseCaseType") => list(any())
      }
      
  """
  @type create_use_case_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_users_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      default_vocabulary() :: %{
        "InstanceId" => String.t(),
        "LanguageCode" => list(any()),
        "VocabularyId" => String.t(),
        "VocabularyName" => String.t()
      }
      
  """
  @type default_vocabulary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_task_contact_response() :: %{
        "ContactId" => String.t()
      }
      
  """
  @type start_task_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      chat_event() :: %{
        "Content" => String.t(),
        "ContentType" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type chat_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filters() :: %{
        "Channels" => list(list(any())()),
        "Queues" => list(String.t()()),
        "RoutingProfiles" => list(String.t()()),
        "RoutingStepExpressions" => list(String.t()())
      }
      
  """
  @type filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_agent_status_response() :: %{
        "AgentStatusSummaryList" => list(agent_status_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_agent_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_routing_profile_request() :: %{
        required("RoutingProfileId") => String.t()
      }
      
  """
  @type update_user_routing_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_template_field_identifier() :: %{
        "Name" => String.t()
      }
      
  """
  @type task_template_field_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_queue_quick_connects_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_queue_quick_connects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_queues_response() :: %{
        "NextToken" => String.t(),
        "QueueSummaryList" => list(queue_summary()())
      }
      
  """
  @type list_queues_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_evaluation_forms_response() :: %{
        "EvaluationFormSummaryList" => list(evaluation_form_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_evaluation_forms_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_form_single_select_question_properties() :: %{
        "Automation" => evaluation_form_single_select_question_automation(),
        "DisplayAs" => list(any()),
        "Options" => list(evaluation_form_single_select_question_option()())
      }
      
  """
  @type evaluation_form_single_select_question_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_traffic_distribution_request() :: %{}
      
  """
  @type get_traffic_distribution_request() :: %{}

  @typedoc """

  ## Example:
      
      complete_attached_file_upload_request() :: %{
        required("AssociatedResourceArn") => String.t()
      }
      
  """
  @type complete_attached_file_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attendee() :: %{
        "AttendeeId" => String.t(),
        "JoinToken" => String.t()
      }
      
  """
  @type attendee() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_authentication_profile_response() :: %{
        "AuthenticationProfile" => authentication_profile()
      }
      
  """
  @type describe_authentication_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disconnect_details() :: %{
        "PotentialDisconnectIssue" => String.t()
      }
      
  """
  @type disconnect_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      agent_status_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type agent_status_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_traffic_distribution_group_user_response() :: %{}
      
  """
  @type disassociate_traffic_distribution_group_user_response() :: %{}

  @typedoc """

  ## Example:
      
      search_vocabularies_request() :: %{
        optional("LanguageCode") => list(any()),
        optional("MaxResults") => integer(),
        optional("NameStartsWith") => String.t(),
        optional("NextToken") => String.t(),
        optional("State") => list(any())
      }
      
  """
  @type search_vocabularies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      prompt_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter()
      }
      
  """
  @type prompt_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_queue_status_request() :: %{
        required("Status") => list(any())
      }
      
  """
  @type update_queue_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_vocabulary_response() :: %{
        "Vocabulary" => vocabulary()
      }
      
  """
  @type describe_vocabulary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_flow_request() :: %{
        required("FlowId") => String.t(),
        required("ResourceId") => String.t(),
        required("ResourceType") => list(any())
      }
      
  """
  @type associate_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_data_v2() :: %{
        "Metric" => metric_v2(),
        "Value" => float()
      }
      
  """
  @type metric_data_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_prompt_request() :: %{}
      
  """
  @type describe_prompt_request() :: %{}

  @typedoc """

  ## Example:
      
      list_phone_numbers_response() :: %{
        "NextToken" => String.t(),
        "PhoneNumberSummaryList" => list(phone_number_summary()())
      }
      
  """
  @type list_phone_numbers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      real_time_contact_analysis_attachment() :: %{
        "AttachmentId" => String.t(),
        "AttachmentName" => String.t(),
        "ContentType" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type real_time_contact_analysis_attachment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact_search_summary_queue_info() :: %{
        "EnqueueTimestamp" => non_neg_integer(),
        "Id" => String.t()
      }
      
  """
  @type contact_search_summary_queue_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_queue_request() :: %{}
      
  """
  @type delete_queue_request() :: %{}

  @typedoc """

  ## Example:
      
      evaluation() :: %{
        "Answers" => map(),
        "CreatedTime" => non_neg_integer(),
        "EvaluationArn" => String.t(),
        "EvaluationId" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Metadata" => evaluation_metadata(),
        "Notes" => map(),
        "Scores" => map(),
        "Status" => list(any()),
        "Tags" => map()
      }
      
  """
  @type evaluation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vocabulary_response() :: %{
        "State" => list(any()),
        "VocabularyArn" => String.t(),
        "VocabularyId" => String.t()
      }
      
  """
  @type delete_vocabulary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_phone_number_metadata_request() :: %{
        optional("ClientToken") => String.t(),
        optional("PhoneNumberDescription") => String.t()
      }
      
  """
  @type update_phone_number_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sign_in_distribution() :: %{
        "Enabled" => boolean(),
        "Region" => String.t()
      }
      
  """
  @type sign_in_distribution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      media_concurrency() :: %{
        "Channel" => list(any()),
        "Concurrency" => integer(),
        "CrossChannelBehavior" => cross_channel_behavior()
      }
      
  """
  @type media_concurrency() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      control_plane_tag_filter() :: %{
        "AndConditions" => list(tag_condition()()),
        "OrConditions" => list(list(tag_condition()())()),
        "TagCondition" => tag_condition()
      }
      
  """
  @type control_plane_tag_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_metadata() :: %{
        "ContactAgentId" => String.t(),
        "ContactId" => String.t(),
        "EvaluatorArn" => String.t(),
        "Score" => evaluation_score()
      }
      
  """
  @type evaluation_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_form_scoring_strategy() :: %{
        "Mode" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type evaluation_form_scoring_strategy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_agent_statuses_response() :: %{
        "AgentStatuses" => list(agent_status()()),
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t()
      }
      
  """
  @type search_agent_statuses_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      quick_connect() :: %{
        "Description" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "QuickConnectARN" => String.t(),
        "QuickConnectConfig" => quick_connect_config(),
        "QuickConnectId" => String.t(),
        "Tags" => map()
      }
      
  """
  @type quick_connect() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_contact_flows_response() :: %{
        "ApproximateTotalCount" => float(),
        "ContactFlows" => list(contact_flow()()),
        "NextToken" => String.t()
      }
      
  """
  @type search_contact_flows_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pause_contact_response() :: %{}
      
  """
  @type pause_contact_response() :: %{}

  @typedoc """

  ## Example:
      
      associate_security_key_response() :: %{
        "AssociationId" => String.t()
      }
      
  """
  @type associate_security_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hours_of_operation_config() :: %{
        "Day" => list(any()),
        "EndTime" => hours_of_operation_time_slice(),
        "StartTime" => hours_of_operation_time_slice()
      }
      
  """
  @type hours_of_operation_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_attached_file_upload_request() :: %{
        optional("ClientToken") => String.t(),
        optional("CreatedBy") => list(),
        optional("Tags") => map(),
        optional("UrlExpiryInSeconds") => integer(),
        required("AssociatedResourceArn") => String.t(),
        required("FileName") => String.t(),
        required("FileSizeInBytes") => float(),
        required("FileUseCaseType") => list(any())
      }
      
  """
  @type start_attached_file_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activate_evaluation_form_response() :: %{
        "EvaluationFormArn" => String.t(),
        "EvaluationFormId" => String.t(),
        "EvaluationFormVersion" => integer()
      }
      
  """
  @type activate_evaluation_form_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_approved_origins_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_approved_origins_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      historical_metric() :: %{
        "Name" => list(any()),
        "Statistic" => list(any()),
        "Threshold" => threshold(),
        "Unit" => list(any())
      }
      
  """
  @type historical_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failed_request() :: %{
        "FailureReasonCode" => list(any()),
        "FailureReasonMessage" => String.t(),
        "RequestIdentifier" => String.t()
      }
      
  """
  @type failed_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_associate_analytics_data_set_request() :: %{
        optional("TargetAccountId") => String.t(),
        required("DataSetIds") => list(String.t()())
      }
      
  """
  @type batch_associate_analytics_data_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      step() :: %{
        "Expiry" => expiry(),
        "Expression" => expression(),
        "Status" => list(any())
      }
      
  """
  @type step() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_queue_quick_connects_request() :: %{
        required("QuickConnectIds") => list(String.t()())
      }
      
  """
  @type associate_queue_quick_connects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_search_condition() :: %{
        "tagKey" => String.t(),
        "tagKeyComparisonType" => list(any()),
        "tagValue" => String.t(),
        "tagValueComparisonType" => list(any())
      }
      
  """
  @type tag_search_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_template_metadata() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "Id" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type task_template_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attachment_reference() :: %{
        "Name" => String.t(),
        "Status" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type attachment_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      url_reference() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type url_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      string_reference() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type string_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_predefined_attributes_response() :: %{
        "NextToken" => String.t(),
        "PredefinedAttributeSummaryList" => list(predefined_attribute_summary()())
      }
      
  """
  @type list_predefined_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      routing_profile() :: %{
        "AgentAvailabilityTimer" => list(any()),
        "AssociatedQueueIds" => list(String.t()()),
        "DefaultOutboundQueueId" => String.t(),
        "Description" => String.t(),
        "InstanceId" => String.t(),
        "IsDefault" => boolean(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "MediaConcurrencies" => list(media_concurrency()()),
        "Name" => String.t(),
        "NumberOfAssociatedQueues" => float(),
        "NumberOfAssociatedUsers" => float(),
        "RoutingProfileArn" => String.t(),
        "RoutingProfileId" => String.t(),
        "Tags" => map()
      }
      
  """
  @type routing_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_routing_profile_response() :: %{
        "RoutingProfile" => routing_profile()
      }
      
  """
  @type describe_routing_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_trigger_event_source() :: %{
        "EventSourceName" => list(any()),
        "IntegrationAssociationId" => String.t()
      }
      
  """
  @type rule_trigger_event_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_routing_profile_request() :: %{
        optional("AgentAvailabilityTimer") => list(any()),
        optional("QueueConfigs") => list(routing_profile_queue_config()()),
        optional("Tags") => map(),
        required("DefaultOutboundQueueId") => String.t(),
        required("Description") => String.t(),
        required("MediaConcurrencies") => list(media_concurrency()()),
        required("Name") => String.t()
      }
      
  """
  @type create_routing_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_chat_contact_request() :: %{
        optional("Attributes") => map(),
        optional("ChatDurationInMinutes") => integer(),
        optional("ClientToken") => String.t(),
        optional("InitialMessage") => chat_message(),
        optional("PersistentChat") => persistent_chat(),
        optional("RelatedContactId") => String.t(),
        optional("SegmentAttributes") => map(),
        optional("SupportedMessagingContentTypes") => list(String.t()()),
        required("ContactFlowId") => String.t(),
        required("InstanceId") => String.t(),
        required("ParticipantDetails") => participant_details()
      }
      
  """
  @type start_chat_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_chat_contact_response() :: %{
        "ContactId" => String.t(),
        "ContinuedFromContactId" => String.t(),
        "ParticipantId" => String.t(),
        "ParticipantToken" => String.t()
      }
      
  """
  @type start_chat_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_phone_number_request() :: %{
        optional("ClientToken") => String.t(),
        optional("InstanceId") => String.t(),
        optional("TargetArn") => String.t()
      }
      
  """
  @type update_phone_number_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_schedule_request() :: %{
        required("ContactId") => String.t(),
        required("InstanceId") => String.t(),
        required("ScheduledTime") => non_neg_integer()
      }
      
  """
  @type update_contact_schedule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_user_status_response() :: %{}
      
  """
  @type put_user_status_response() :: %{}

  @typedoc """

  ## Example:
      
      hours_of_operation_time_slice() :: %{
        "Hours" => integer(),
        "Minutes" => integer()
      }
      
  """
  @type hours_of_operation_time_slice() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      prompt_search_criteria() :: %{
        "AndConditions" => list(prompt_search_criteria()()),
        "OrConditions" => list(prompt_search_criteria()()),
        "StringCondition" => string_condition()
      }
      
  """
  @type prompt_search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_criteria() :: %{
        "AgentHierarchyGroups" => agent_hierarchy_groups(),
        "AgentIds" => list(String.t()()),
        "Channels" => list(list(any())()),
        "ContactAnalysis" => contact_analysis(),
        "InitiationMethods" => list(list(any())()),
        "QueueIds" => list(String.t()()),
        "SearchableContactAttributes" => searchable_contact_attributes()
      }
      
  """
  @type search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_flow_module_metadata_response() :: %{}
      
  """
  @type update_contact_flow_module_metadata_response() :: %{}

  @typedoc """

  ## Example:
      
      list_security_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_security_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_hours_of_operation_request() :: %{}
      
  """
  @type describe_hours_of_operation_request() :: %{}

  @typedoc """

  ## Example:
      
      describe_routing_profile_request() :: %{}
      
  """
  @type describe_routing_profile_request() :: %{}

  @typedoc """

  ## Example:
      
      kinesis_video_stream_config() :: %{
        "EncryptionConfig" => encryption_config(),
        "Prefix" => String.t(),
        "RetentionPeriodHours" => integer()
      }
      
  """
  @type kinesis_video_stream_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_contact_evaluation_request() :: %{
        optional("ClientToken") => String.t(),
        required("ContactId") => String.t(),
        required("EvaluationFormId") => String.t()
      }
      
  """
  @type start_contact_evaluation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      claimed_phone_number_summary() :: %{
        "InstanceId" => String.t(),
        "PhoneNumber" => String.t(),
        "PhoneNumberArn" => String.t(),
        "PhoneNumberCountryCode" => list(any()),
        "PhoneNumberDescription" => String.t(),
        "PhoneNumberId" => String.t(),
        "PhoneNumberStatus" => phone_number_status(),
        "PhoneNumberType" => list(any()),
        "SourcePhoneNumberArn" => String.t(),
        "Tags" => map(),
        "TargetArn" => String.t()
      }
      
  """
  @type claimed_phone_number_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_quick_connects_response() :: %{
        "NextToken" => String.t(),
        "QuickConnectSummaryList" => list(quick_connect_summary()())
      }
      
  """
  @type list_quick_connects_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_task_template_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }
      
  """
  @type create_task_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_user_hierarchy_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchCriteria") => user_hierarchy_group_search_criteria(),
        optional("SearchFilter") => user_hierarchy_group_search_filter(),
        required("InstanceId") => String.t()
      }
      
  """
  @type search_user_hierarchy_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_summary() :: %{
        "CreatedTime" => non_neg_integer(),
        "EvaluationArn" => String.t(),
        "EvaluationFormId" => String.t(),
        "EvaluationFormTitle" => String.t(),
        "EvaluationId" => String.t(),
        "EvaluatorArn" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Score" => evaluation_score(),
        "Status" => list(any())
      }
      
  """
  @type evaluation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      end_associated_tasks_action_definition() :: %{}
      
  """
  @type end_associated_tasks_action_definition() :: %{}

  @typedoc """

  ## Example:
      
      historical_metric_data() :: %{
        "Metric" => historical_metric(),
        "Value" => float()
      }
      
  """
  @type historical_metric_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_flow_response() :: %{}
      
  """
  @type associate_flow_response() :: %{}

  @typedoc """

  ## Example:
      
      list_instance_storage_configs_response() :: %{
        "NextToken" => String.t(),
        "StorageConfigs" => list(instance_storage_config()())
      }
      
  """
  @type list_instance_storage_configs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_ready_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_ready_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_form_single_select_question_automation() :: %{
        "DefaultOptionRefId" => String.t(),
        "Options" => list(list()())
      }
      
  """
  @type evaluation_form_single_select_question_automation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_queues_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t(),
        "Queues" => list(queue()())
      }
      
  """
  @type search_queues_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      routing_profile_reference() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }
      
  """
  @type routing_profile_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      real_time_contact_analysis_issue_detected() :: %{
        "TranscriptItems" => list(real_time_contact_analysis_transcript_item_with_content()())
      }
      
  """
  @type real_time_contact_analysis_issue_detected() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_authentication_profile_request() :: %{
        optional("AllowedIps") => list(String.t()()),
        optional("BlockedIps") => list(String.t()()),
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("PeriodicSessionDuration") => integer()
      }
      
  """
  @type update_authentication_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_quick_connect_request() :: %{}
      
  """
  @type describe_quick_connect_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_predefined_attribute_request() :: %{}
      
  """
  @type delete_predefined_attribute_request() :: %{}

  @typedoc """

  ## Example:
      
      create_user_response() :: %{
        "UserArn" => String.t(),
        "UserId" => String.t()
      }
      
  """
  @type create_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instance_storage_configs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ResourceType") => list(any())
      }
      
  """
  @type list_instance_storage_configs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_views_response() :: %{
        "NextToken" => String.t(),
        "ViewsSummaryList" => list(view_summary()())
      }
      
  """
  @type list_views_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_resource_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type duplicate_resource_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_hours_of_operation_request() :: %{}
      
  """
  @type delete_hours_of_operation_request() :: %{}

  @typedoc """

  ## Example:
      
      maximum_result_returned_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type maximum_result_returned_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_persistent_contact_association_request() :: %{
        optional("ClientToken") => String.t(),
        required("RehydrationType") => list(any()),
        required("SourceContactId") => String.t()
      }
      
  """
  @type create_persistent_contact_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_analytics_data_associations_response() :: %{
        "NextToken" => String.t(),
        "Results" => list(analytics_data_association_result()())
      }
      
  """
  @type list_analytics_data_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_traffic_distribution_group_response() :: %{}
      
  """
  @type delete_traffic_distribution_group_response() :: %{}

  @typedoc """

  ## Example:
      
      resource_conflict_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_hierarchy_groups_response() :: %{
        "NextToken" => String.t(),
        "UserHierarchyGroupSummaryList" => list(hierarchy_group_summary()())
      }
      
  """
  @type list_user_hierarchy_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_web_r_t_c_contact_request() :: %{
        optional("AllowedCapabilities") => allowed_capabilities(),
        optional("Attributes") => map(),
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("References") => map(),
        optional("RelatedContactId") => String.t(),
        required("ContactFlowId") => String.t(),
        required("InstanceId") => String.t(),
        required("ParticipantDetails") => participant_details()
      }
      
  """
  @type start_web_r_t_c_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hierarchy_structure_update() :: %{
        "LevelFive" => hierarchy_level_update(),
        "LevelFour" => hierarchy_level_update(),
        "LevelOne" => hierarchy_level_update(),
        "LevelThree" => hierarchy_level_update(),
        "LevelTwo" => hierarchy_level_update()
      }
      
  """
  @type hierarchy_structure_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_default_vocabularies_response() :: %{
        "DefaultVocabularyList" => list(default_vocabulary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_default_vocabularies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter(),
        "UserAttributeFilter" => control_plane_user_attribute_filter()
      }
      
  """
  @type user_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      prompt() :: %{
        "Description" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "PromptARN" => String.t(),
        "PromptId" => String.t(),
        "Tags" => map()
      }
      
  """
  @type prompt() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      media_placement() :: %{
        "AudioFallbackUrl" => String.t(),
        "AudioHostUrl" => String.t(),
        "EventIngestionUrl" => String.t(),
        "SignalingUrl" => String.t(),
        "TurnControlUrl" => String.t()
      }
      
  """
  @type media_placement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_realtime_contact_analysis_segments_v2_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("OutputType") => list(any()),
        required("SegmentTypes") => list(list(any())())
      }
      
  """
  @type list_realtime_contact_analysis_segments_v2_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_contact_flow_request() :: %{}
      
  """
  @type delete_contact_flow_request() :: %{}

  @typedoc """

  ## Example:
      
      get_current_metric_data_response() :: %{
        "ApproximateTotalCount" => float(),
        "DataSnapshotTime" => non_neg_integer(),
        "MetricResults" => list(current_metric_result()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_current_metric_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_authentication_profiles_response() :: %{
        "AuthenticationProfileSummaryList" => list(authentication_profile_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_authentication_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_available_phone_numbers_request() :: %{
        optional("InstanceId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PhoneNumberPrefix") => String.t(),
        optional("TargetArn") => String.t(),
        required("PhoneNumberCountryCode") => list(any()),
        required("PhoneNumberType") => list(any())
      }
      
  """
  @type search_available_phone_numbers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_rule_response() :: %{
        "Rule" => rule()
      }
      
  """
  @type describe_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      participant_details() :: %{
        "DisplayName" => String.t()
      }
      
  """
  @type participant_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      date_reference() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type date_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_queue_response() :: %{
        "QueueArn" => String.t(),
        "QueueId" => String.t()
      }
      
  """
  @type create_queue_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predefined_attribute() :: %{
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Values" => list()
      }
      
  """
  @type predefined_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_hierarchy_group_name_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type update_user_hierarchy_group_name_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      real_time_contact_analysis_segment_attachments() :: %{
        "Attachments" => list(real_time_contact_analysis_attachment()()),
        "DisplayName" => String.t(),
        "Id" => String.t(),
        "ParticipantId" => String.t(),
        "ParticipantRole" => list(any()),
        "Time" => list()
      }
      
  """
  @type real_time_contact_analysis_segment_attachments() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expiry() :: %{
        "DurationInSeconds" => integer(),
        "ExpiryTimestamp" => non_neg_integer()
      }
      
  """
  @type expiry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      real_time_contact_analysis_segment_transcript() :: %{
        "Content" => String.t(),
        "ContentType" => String.t(),
        "DisplayName" => String.t(),
        "Id" => String.t(),
        "ParticipantId" => String.t(),
        "ParticipantRole" => list(any()),
        "Redaction" => real_time_contact_analysis_transcript_item_redaction(),
        "Sentiment" => list(any()),
        "Time" => list()
      }
      
  """
  @type real_time_contact_analysis_segment_transcript() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transcript_criteria() :: %{
        "MatchType" => list(any()),
        "ParticipantRole" => list(any()),
        "SearchText" => list(String.t()())
      }
      
  """
  @type transcript_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_contact_flow_response() :: %{
        "ContactFlowArn" => String.t(),
        "ContactFlowId" => String.t()
      }
      
  """
  @type create_contact_flow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_queue_request() :: %{}
      
  """
  @type describe_queue_request() :: %{}

  @typedoc """

  ## Example:
      
      batch_disassociate_analytics_data_set_response() :: %{
        "Deleted" => list(String.t()()),
        "Errors" => list(error_result()())
      }
      
  """
  @type batch_disassociate_analytics_data_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      submit_auto_evaluation_action_definition() :: %{
        "EvaluationFormId" => String.t()
      }
      
  """
  @type submit_auto_evaluation_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_flow_module_content_response() :: %{}
      
  """
  @type update_contact_flow_module_content_response() :: %{}

  @typedoc """

  ## Example:
      
      batch_get_flow_association_response() :: %{
        "FlowAssociationSummaryList" => list(flow_association_summary()())
      }
      
  """
  @type batch_get_flow_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_tags_search_criteria() :: %{
        "TagSearchCondition" => tag_search_condition()
      }
      
  """
  @type resource_tags_search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      suspend_contact_recording_request() :: %{
        required("ContactId") => String.t(),
        required("InitialContactId") => String.t(),
        required("InstanceId") => String.t()
      }
      
  """
  @type suspend_contact_recording_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_request() :: %{
        optional("DirectoryUserId") => String.t(),
        optional("HierarchyGroupId") => String.t(),
        optional("IdentityInfo") => user_identity_info(),
        optional("Password") => String.t(),
        optional("Tags") => map(),
        required("PhoneConfig") => user_phone_config(),
        required("RoutingProfileId") => String.t(),
        required("SecurityProfileIds") => list(String.t()()),
        required("Username") => String.t()
      }
      
  """
  @type create_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      property_validation_exception_property() :: %{
        "Message" => String.t(),
        "PropertyPath" => String.t(),
        "Reason" => list(any())
      }
      
  """
  @type property_validation_exception_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_form_content() :: %{
        "Description" => String.t(),
        "EvaluationFormArn" => String.t(),
        "EvaluationFormId" => String.t(),
        "EvaluationFormVersion" => integer(),
        "Items" => list(list()()),
        "ScoringStrategy" => evaluation_form_scoring_strategy(),
        "Title" => String.t()
      }
      
  """
  @type evaluation_form_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dismiss_user_contact_response() :: %{}
      
  """
  @type dismiss_user_contact_response() :: %{}

  @typedoc """

  ## Example:
      
      update_contact_flow_module_content_request() :: %{
        required("Content") => String.t()
      }
      
  """
  @type update_contact_flow_module_content_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_storage_config() :: %{
        "AssociationId" => String.t(),
        "KinesisFirehoseConfig" => kinesis_firehose_config(),
        "KinesisStreamConfig" => kinesis_stream_config(),
        "KinesisVideoStreamConfig" => kinesis_video_stream_config(),
        "S3Config" => s3_config(),
        "StorageType" => list(any())
      }
      
  """
  @type instance_storage_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_routing_profile_queues_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_routing_profile_queues_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      agent_status_reference() :: %{
        "StatusArn" => String.t(),
        "StatusName" => String.t(),
        "StatusStartTimestamp" => non_neg_integer()
      }
      
  """
  @type agent_status_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      allowed_capabilities() :: %{
        "Agent" => participant_capabilities(),
        "Customer" => participant_capabilities()
      }
      
  """
  @type allowed_capabilities() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_contact_attributes_request() :: %{}
      
  """
  @type get_contact_attributes_request() :: %{}

  @typedoc """

  ## Example:
      
      batch_associate_analytics_data_set_response() :: %{
        "Created" => list(analytics_data_association_result()()),
        "Errors" => list(error_result()())
      }
      
  """
  @type batch_associate_analytics_data_set_response() :: %{String.t() => any()}

  @type activate_evaluation_form_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_analytics_data_set_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_approved_origin_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_bot_errors() ::
          resource_conflict_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_default_vocabulary_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_flow_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_instance_storage_config_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_lambda_function_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_lex_bot_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_phone_number_contact_flow_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_queue_quick_connects_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_routing_profile_queues_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_security_key_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_traffic_distribution_group_user_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_user_proficiencies_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type batch_associate_analytics_data_set_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type batch_disassociate_analytics_data_set_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type batch_get_attached_file_metadata_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type batch_get_flow_association_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type batch_put_contact_errors() ::
          limit_exceeded_exception()
          | idempotency_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type claim_phone_number_errors() ::
          throttling_exception()
          | idempotency_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type complete_attached_file_upload_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_agent_status_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_contact_flow_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | invalid_contact_flow_exception()

  @type create_contact_flow_module_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | idempotency_exception()
          | invalid_contact_flow_module_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_evaluation_form_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_hours_of_operation_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_instance_errors() ::
          throttling_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_integration_association_errors() ::
          duplicate_resource_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_participant_errors() ::
          throttling_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_persistent_contact_association_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_predefined_attribute_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_prompt_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type create_queue_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_quick_connect_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_routing_profile_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_rule_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_security_profile_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_task_template_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | property_validation_exception()

  @type create_traffic_distribution_group_errors() ::
          resource_conflict_exception()
          | resource_not_ready_exception()
          | throttling_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_use_case_errors() ::
          duplicate_resource_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_user_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_user_hierarchy_group_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_view_errors() ::
          duplicate_resource_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type create_view_version_errors() ::
          invalid_parameter_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type create_vocabulary_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type deactivate_evaluation_form_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_attached_file_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_contact_evaluation_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_contact_flow_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_contact_flow_module_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_evaluation_form_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_hours_of_operation_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_instance_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_integration_association_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_predefined_attribute_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type delete_prompt_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_queue_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type delete_quick_connect_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_routing_profile_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type delete_rule_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_security_profile_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type delete_task_template_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_traffic_distribution_group_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type delete_use_case_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_user_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_user_hierarchy_group_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type delete_view_errors() ::
          invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type delete_view_version_errors() ::
          invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type delete_vocabulary_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type describe_agent_status_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_authentication_profile_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_contact_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_contact_evaluation_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_contact_flow_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | contact_flow_not_published_exception()

  @type describe_contact_flow_module_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_evaluation_form_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_hours_of_operation_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_instance_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_instance_attribute_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_instance_storage_config_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_phone_number_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_predefined_attribute_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_prompt_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_queue_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_quick_connect_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_routing_profile_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_rule_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_security_profile_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_traffic_distribution_group_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_user_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_user_hierarchy_group_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_user_hierarchy_structure_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_view_errors() ::
          invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_exception()

  @type describe_vocabulary_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_analytics_data_set_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_approved_origin_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_bot_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_flow_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_instance_storage_config_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_lambda_function_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_lex_bot_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_phone_number_contact_flow_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_queue_quick_connects_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_routing_profile_queues_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_security_key_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_traffic_distribution_group_user_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_user_proficiencies_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type dismiss_user_contact_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_attached_file_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_contact_attributes_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_current_metric_data_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_current_user_data_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_federation_token_errors() ::
          duplicate_resource_exception()
          | invalid_parameter_exception()
          | user_not_found_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_flow_association_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_metric_data_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_metric_data_v2_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_prompt_file_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_task_template_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_traffic_distribution_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type import_phone_number_errors() ::
          throttling_exception()
          | idempotency_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_agent_statuses_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_analytics_data_associations_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_approved_origins_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_authentication_profiles_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_bots_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_contact_evaluations_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_contact_flow_modules_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_contact_flows_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_contact_references_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_default_vocabularies_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type list_evaluation_form_versions_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_evaluation_forms_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_flow_associations_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_hours_of_operations_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_instance_attributes_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_instance_storage_configs_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_instances_errors() :: invalid_request_exception() | internal_service_exception()

  @type list_integration_associations_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_lambda_functions_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_lex_bots_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_phone_numbers_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_phone_numbers_v2_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_predefined_attributes_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_prompts_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_queue_quick_connects_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_queues_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_quick_connects_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_realtime_contact_analysis_segments_v2_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | output_type_not_found_exception()

  @type list_routing_profile_queues_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_routing_profiles_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_rules_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_security_keys_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_security_profile_applications_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_security_profile_permissions_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_security_profiles_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_task_templates_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_traffic_distribution_group_users_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_traffic_distribution_groups_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type list_use_cases_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_user_hierarchy_groups_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_user_proficiencies_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_users_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_view_versions_errors() ::
          invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_exception()

  @type list_views_errors() ::
          invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_exception()

  @type monitor_contact_errors() ::
          throttling_exception()
          | idempotency_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type pause_contact_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_exception()

  @type put_user_status_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type release_phone_number_errors() ::
          throttling_exception()
          | idempotency_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type replicate_instance_errors() ::
          resource_conflict_exception()
          | resource_not_ready_exception()
          | throttling_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type resume_contact_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_exception()

  @type resume_contact_recording_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_agent_statuses_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_available_phone_numbers_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_service_exception()

  @type search_contact_flow_modules_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_contact_flows_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_contacts_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_hours_of_operations_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_predefined_attributes_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_prompts_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_queues_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_quick_connects_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_resource_tags_errors() ::
          maximum_result_returned_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_routing_profiles_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_security_profiles_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_user_hierarchy_groups_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_users_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_vocabularies_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type send_chat_integration_event_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type start_attached_file_upload_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type start_chat_contact_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type start_contact_evaluation_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type start_contact_recording_errors() ::
          invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type start_contact_streaming_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type start_outbound_voice_contact_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | destination_not_allowed_exception()
          | internal_service_exception()
          | outbound_contact_not_permitted_exception()

  @type start_task_contact_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type start_web_r_t_c_contact_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type stop_contact_errors() ::
          invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | contact_not_found_exception()

  @type stop_contact_recording_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type stop_contact_streaming_errors() ::
          invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type submit_contact_evaluation_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type suspend_contact_recording_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type tag_contact_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type transfer_contact_errors() ::
          throttling_exception()
          | idempotency_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type untag_contact_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_agent_status_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_authentication_profile_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_contact_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_contact_attributes_errors() ::
          invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_contact_evaluation_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_contact_flow_content_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | invalid_contact_flow_exception()

  @type update_contact_flow_metadata_errors() ::
          duplicate_resource_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_contact_flow_module_content_errors() ::
          throttling_exception()
          | invalid_contact_flow_module_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_contact_flow_module_metadata_errors() ::
          duplicate_resource_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_contact_flow_name_errors() ::
          duplicate_resource_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_contact_routing_data_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_contact_schedule_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_evaluation_form_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_hours_of_operation_errors() ::
          duplicate_resource_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_instance_attribute_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_instance_storage_config_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_participant_role_config_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_phone_number_errors() ::
          throttling_exception()
          | idempotency_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type update_phone_number_metadata_errors() ::
          throttling_exception()
          | idempotency_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type update_predefined_attribute_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_prompt_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_queue_hours_of_operation_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_queue_max_contacts_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_queue_name_errors() ::
          duplicate_resource_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_queue_outbound_caller_config_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_queue_status_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_quick_connect_config_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_quick_connect_name_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_routing_profile_agent_availability_timer_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_routing_profile_concurrency_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_routing_profile_default_outbound_queue_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_routing_profile_name_errors() ::
          duplicate_resource_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_routing_profile_queues_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_rule_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_security_profile_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_task_template_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | property_validation_exception()

  @type update_traffic_distribution_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_user_hierarchy_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_user_hierarchy_group_name_errors() ::
          duplicate_resource_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_user_hierarchy_structure_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type update_user_identity_info_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_user_phone_config_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_user_proficiencies_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_user_routing_profile_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_user_security_profiles_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_view_content_errors() ::
          invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type update_view_metadata_errors() ::
          duplicate_resource_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  def metadata do
    %{
      api_version: "2017-08-08",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "connect",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Connect",
      signature_version: "v4",
      signing_name: "connect",
      target_prefix: nil
    }
  end

  @doc """
  Activates an evaluation form in the specified Amazon Connect instance. After the
  evaluation form is activated, it is available to start new evaluations based
  on the form.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ActivateEvaluationForm&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:evaluation_form_id` (`t:string` required) The unique identifier for the
  evaluation form.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec activate_evaluation_form(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, activate_evaluation_form_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, activate_evaluation_form_errors()}
  def activate_evaluation_form(%Client{} = client, evaluation_form_id, instance_id, options \\ []) do
    url_path =
      "/evaluation-forms/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(evaluation_form_id)}/activate"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20AssociateAnalyticsDataSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec associate_analytics_data_set(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, associate_analytics_data_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_analytics_data_set_errors()}
  def associate_analytics_data_set(%Client{} = client, instance_id, options \\ []) do
    url_path = "/analytics-data/instance/#{AWS.Util.encode_uri(instance_id)}/association"

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

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20AssociateApprovedOrigin&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec associate_approved_origin(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_approved_origin_errors()}
  def associate_approved_origin(%Client{} = client, instance_id, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/approved-origin"

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

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20AssociateBot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec associate_bot(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_bot_errors()}
  def associate_bot(%Client{} = client, instance_id, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/bot"

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

  @doc """
  Associates an existing vocabulary as the default. Contact Lens for Amazon
  Connect uses the vocabulary in post-call and real-time analysis sessions for
  the given language.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20AssociateDefaultVocabulary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:language_code`
  (`t:enum["AR_AE|DE_CH|DE_DE|EN_AB|EN_AU|EN_GB|EN_IE|EN_IN|EN_NZ|EN_US|EN_WL|EN_ZA|ES_ES|ES_US|FR_CA|FR_FR|HI_IN|IT_IT|JA_JP|KO_KR|PT_BR|PT_PT|ZH_CN"]`
  required) The language code of the vocabulary entries. For a list of
  languages and their corresponding language codes, see What is Amazon
  Transcribe?
  ## Keyword parameters:
  """
  @spec associate_default_vocabulary(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, associate_default_vocabulary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_default_vocabulary_errors()}
  def associate_default_vocabulary(%Client{} = client, instance_id, language_code, options \\ []) do
    url_path =
      "/default-vocabulary/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(language_code)}"

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

  @doc """
  Associates a connect resource to a flow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20AssociateFlow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec associate_flow(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, associate_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_flow_errors()}
  def associate_flow(%Client{} = client, instance_id, options \\ []) do
    url_path = "/flow-associations/#{AWS.Util.encode_uri(instance_id)}"

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

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.
  Associates a storage resource type for the first time. You can only associate
  one type of storage configuration in a single call. This means, for example,
  that you can't define an instance with multiple S3 buckets for storing chat
  transcripts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20AssociateInstanceStorageConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec associate_instance_storage_config(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, associate_instance_storage_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_instance_storage_config_errors()}
  def associate_instance_storage_config(%Client{} = client, instance_id, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/storage-config"

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

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20AssociateLambdaFunction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec associate_lambda_function(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_lambda_function_errors()}
  def associate_lambda_function(%Client{} = client, instance_id, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/lambda-function"

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

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20AssociateLexBot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec associate_lex_bot(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_lex_bot_errors()}
  def associate_lex_bot(%Client{} = client, instance_id, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/lex-bot"

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

  @doc """
  Associates a flow with a phone number claimed to your Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20AssociatePhoneNumberContactFlow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:phone_number_id` (`t:string` required) A unique identifier for the phone
  number.
  ## Keyword parameters:
  """
  @spec associate_phone_number_contact_flow(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_phone_number_contact_flow_errors()}
  def associate_phone_number_contact_flow(%Client{} = client, phone_number_id, options \\ []) do
    url_path = "/phone-number/#{AWS.Util.encode_uri(phone_number_id)}/contact-flow"

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

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20AssociateQueueQuickConnects&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:queue_id` (`t:string` required) The identifier for the queue.
  ## Keyword parameters:
  """
  @spec associate_queue_quick_connects(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_queue_quick_connects_errors()}
  def associate_queue_quick_connects(%Client{} = client, instance_id, queue_id, options \\ []) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/associate-quick-connects"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Associates a set of queues with a routing profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20AssociateRoutingProfileQueues&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:routing_profile_id` (`t:string` required) The identifier of the routing
  profile.
  ## Keyword parameters:
  """
  @spec associate_routing_profile_queues(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_routing_profile_queues_errors()}
  def associate_routing_profile_queues(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/associate-queues"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20AssociateSecurityKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec associate_security_key(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, associate_security_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_security_key_errors()}
  def associate_security_key(%Client{} = client, instance_id, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/security-key"

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

  @doc """
  Associates an agent with a traffic distribution group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20AssociateTrafficDistributionGroupUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:traffic_distribution_group_id` (`t:string` required) The identifier of the
  traffic distribution group. This can be the ID or the ARN if the API is
  being called in the Region where the traffic distribution group was created.
  The ARN must be provided if the call is from the replicated Region.
  ## Keyword parameters:
  """
  @spec associate_traffic_distribution_group_user(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, associate_traffic_distribution_group_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_traffic_distribution_group_user_errors()}
  def associate_traffic_distribution_group_user(
        %Client{} = client,
        traffic_distribution_group_id,
        options \\ []
      ) do
    url_path =
      "/traffic-distribution-group/#{AWS.Util.encode_uri(traffic_distribution_group_id)}/user"

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

  @doc """
  >Associates a set of proficiencies with a user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20AssociateUserProficiencies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN of
  the instance).
  * `:user_id` (`t:string` required) The identifier of the user account.
  ## Keyword parameters:
  """
  @spec associate_user_proficiencies(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_user_proficiencies_errors()}
  def associate_user_proficiencies(%Client{} = client, instance_id, user_id, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/associate-proficiencies"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20BatchAssociateAnalyticsDataSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec batch_associate_analytics_data_set(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, batch_associate_analytics_data_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_associate_analytics_data_set_errors()}
  def batch_associate_analytics_data_set(%Client{} = client, instance_id, options \\ []) do
    url_path = "/analytics-data/instance/#{AWS.Util.encode_uri(instance_id)}/associations"

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

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20BatchDisassociateAnalyticsDataSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec batch_disassociate_analytics_data_set(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, batch_disassociate_analytics_data_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_disassociate_analytics_data_set_errors()}
  def batch_disassociate_analytics_data_set(%Client{} = client, instance_id, options \\ []) do
    url_path = "/analytics-data/instance/#{AWS.Util.encode_uri(instance_id)}/associations"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Allows you to retrieve metadata about multiple attached files on an associated
  resource. Each attached file provided in the input list must be associated
  with the input AssociatedResourceArn.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20BatchGetAttachedFileMetadata&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The unique identifier of the Connect
  instance.
  * `:associated_resource_arn` (`t:string` required) The resource to which the
  attached file is (being) uploaded to. Cases are the only current supported
  resource.
  ## Keyword parameters:
  """
  @spec batch_get_attached_file_metadata(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, batch_get_attached_file_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_attached_file_metadata_errors()}
  def batch_get_attached_file_metadata(
        %Client{} = client,
        instance_id,
        associated_resource_arn,
        options \\ []
      )
      when is_binary(associated_resource_arn) do
    url_path = "/attached-files/#{AWS.Util.encode_uri(instance_id)}"

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
    query_params = [{"associatedResourceArn", associated_resource_arn}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieve the flow associations for the given resources.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20BatchGetFlowAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec batch_get_flow_association(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, batch_get_flow_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_flow_association_errors()}
  def batch_get_flow_association(%Client{} = client, instance_id, options \\ []) do
    url_path = "/flow-associations-batch/#{AWS.Util.encode_uri(instance_id)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Only the Amazon Connect outbound campaigns service principal is allowed to
  assume a role in your account and call this API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20BatchPutContact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec batch_put_contact(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, batch_put_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_put_contact_errors()}
  def batch_put_contact(%Client{} = client, instance_id, options \\ []) do
    url_path = "/contact/batch/#{AWS.Util.encode_uri(instance_id)}"

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

  @doc """
  Claims an available phone number to your Amazon Connect instance or traffic
  distribution group. You can call this API only in the same Amazon Web Services
  Region where the Amazon Connect instance or traffic distribution group was
  created. For more information about how to use this operation, see [Claim a
  phone number in your
  country](https://docs.aws.amazon.com/connect/latest/adminguide/claim-phone-number.html)
  and [Claim phone numbers to traffic distribution
  groups](https://docs.aws.amazon.com/connect/latest/adminguide/claim-phone-numbers-traffic-distribution-groups.html)
  in the *Amazon Connect Administrator Guide*. You can call the
  [SearchAvailablePhoneNumbers](https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchAvailablePhoneNumbers.html)
  API for available phone numbers that you can claim. Call the
  [DescribePhoneNumber](https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html)
  API to verify the status of a previous
  [ClaimPhoneNumber](https://docs.aws.amazon.com/connect/latest/APIReference/API_ClaimPhoneNumber.html)
  operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ClaimPhoneNumber&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec claim_phone_number(AWS.Client.t(), Keyword.t()) ::
          {:ok, claim_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, claim_phone_number_errors()}
  def claim_phone_number(%Client{} = client, options \\ []) do
    url_path = "/phone-number/claim"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Allows you to confirm that the attached file has been uploaded using the
  pre-signed URL provided in the StartAttachedFileUpload API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CompleteAttachedFileUpload&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:file_id` (`t:string` required) The unique identifier of the attached file
  resource.
  * `:instance_id` (`t:string` required) The unique identifier of the Amazon
  Connect instance.
  * `:associated_resource_arn` (`t:string` required) The resource to which the
  attached file is (being) uploaded to. Cases are the only current supported
  resource.
  ## Keyword parameters:
  """
  @spec complete_attached_file_upload(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, complete_attached_file_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, complete_attached_file_upload_errors()}
  def complete_attached_file_upload(
        %Client{} = client,
        file_id,
        instance_id,
        associated_resource_arn,
        options \\ []
      )
      when is_binary(associated_resource_arn) do
    url_path =
      "/attached-files/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(file_id)}"

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
    query_params = [{"associatedResourceArn", associated_resource_arn}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreateAgentStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec create_agent_status(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_agent_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_agent_status_errors()}
  def create_agent_status(%Client{} = client, instance_id, options \\ []) do
    url_path = "/agent-status/#{AWS.Util.encode_uri(instance_id)}"

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

  @doc """
  Creates a flow for the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreateContactFlow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance.
  ## Keyword parameters:
  """
  @spec create_contact_flow(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_contact_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_contact_flow_errors()}
  def create_contact_flow(%Client{} = client, instance_id, options \\ []) do
    url_path = "/contact-flows/#{AWS.Util.encode_uri(instance_id)}"

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

  @doc """
  Creates a flow module for the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreateContactFlowModule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec create_contact_flow_module(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_contact_flow_module_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_contact_flow_module_errors()}
  def create_contact_flow_module(%Client{} = client, instance_id, options \\ []) do
    url_path = "/contact-flow-modules/#{AWS.Util.encode_uri(instance_id)}"

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

  @doc """
  Creates an evaluation form in the specified Amazon Connect instance. The form
  can be used to define questions related to agent performance, and create
  sections to organize such questions. Question and section identifiers cannot
  be duplicated within the same evaluation form.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreateEvaluationForm&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec create_evaluation_form(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_evaluation_form_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_evaluation_form_errors()}
  def create_evaluation_form(%Client{} = client, instance_id, options \\ []) do
    url_path = "/evaluation-forms/#{AWS.Util.encode_uri(instance_id)}"

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

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreateHoursOfOperation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec create_hours_of_operation(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_hours_of_operation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_hours_of_operation_errors()}
  def create_hours_of_operation(%Client{} = client, instance_id, options \\ []) do
    url_path = "/hours-of-operations/#{AWS.Util.encode_uri(instance_id)}"

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

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.
  Initiates an Amazon Connect instance with all the supported channels enabled.
  It does not attach any storage, such as Amazon Simple Storage Service (Amazon
  S3) or Amazon Kinesis. It also does not allow for any configurations on
  features, such as Contact Lens for Amazon Connect.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreateInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_instance(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_instance_errors()}
  def create_instance(%Client{} = client, options \\ []) do
    url_path = "/instance"

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

  @doc """
  Creates an Amazon Web Services resource association with an Amazon Connect
  instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreateIntegrationAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec create_integration_association(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_integration_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_integration_association_errors()}
  def create_integration_association(%Client{} = client, instance_id, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/integration-associations"

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

  @doc """
  Adds a new participant into an on-going chat contact. For more information, see
  [Customize chat flow experiences by integrating custom
  participants](https://docs.aws.amazon.com/connect/latest/adminguide/chat-customize-flow.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreateParticipant&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_participant(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_participant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_participant_errors()}
  def create_participant(%Client{} = client, options \\ []) do
    url_path = "/contact/create-participant"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Enables rehydration of chats for the lifespan of a contact. For more information
  about chat rehydration, see [Enable persistent
  chat](https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html)
  in the *Amazon Connect Administrator Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreatePersistentContactAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:initial_contact_id` (`t:string` required) This is the contactId of the
  current contact that the CreatePersistentContactAssociation API is being
  called from.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec create_persistent_contact_association(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, create_persistent_contact_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_persistent_contact_association_errors()}
  def create_persistent_contact_association(
        %Client{} = client,
        initial_contact_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/contact/persistent-contact-association/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(initial_contact_id)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a new predefined attribute for the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreatePredefinedAttribute&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec create_predefined_attribute(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_predefined_attribute_errors()}
  def create_predefined_attribute(%Client{} = client, instance_id, options \\ []) do
    url_path = "/predefined-attributes/#{AWS.Util.encode_uri(instance_id)}"

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

  @doc """
  Creates a prompt. For more information about prompts, such as supported file
  types and maximum length, see [Create
  prompts](https://docs.aws.amazon.com/connect/latest/adminguide/prompts.html)
  in the *Amazon Connect Administrator Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreatePrompt&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec create_prompt(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_prompt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_prompt_errors()}
  def create_prompt(%Client{} = client, instance_id, options \\ []) do
    url_path = "/prompts/#{AWS.Util.encode_uri(instance_id)}"

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

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.
  Creates a new queue for the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreateQueue&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec create_queue(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_queue_errors()}
  def create_queue(%Client{} = client, instance_id, options \\ []) do
    url_path = "/queues/#{AWS.Util.encode_uri(instance_id)}"

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

  @doc """
  Creates a quick connect for the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreateQuickConnect&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec create_quick_connect(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_quick_connect_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_quick_connect_errors()}
  def create_quick_connect(%Client{} = client, instance_id, options \\ []) do
    url_path = "/quick-connects/#{AWS.Util.encode_uri(instance_id)}"

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

  @doc """
  Creates a new routing profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreateRoutingProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec create_routing_profile(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_routing_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_routing_profile_errors()}
  def create_routing_profile(%Client{} = client, instance_id, options \\ []) do
    url_path = "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}"

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

  @doc """
  Creates a rule for the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreateRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec create_rule(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_rule_errors()}
  def create_rule(%Client{} = client, instance_id, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(instance_id)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a security profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreateSecurityProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec create_security_profile(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_security_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_security_profile_errors()}
  def create_security_profile(%Client{} = client, instance_id, options \\ []) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(instance_id)}"

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

  @doc """
  Creates a new task template in the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreateTaskTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec create_task_template(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_task_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_task_template_errors()}
  def create_task_template(%Client{} = client, instance_id, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/task/template"

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

  @doc """
  Creates a traffic distribution group given an Amazon Connect instance that has
  been replicated.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreateTrafficDistributionGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_traffic_distribution_group(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_traffic_distribution_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_traffic_distribution_group_errors()}
  def create_traffic_distribution_group(%Client{} = client, options \\ []) do
    url_path = "/traffic-distribution-group"

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

  @doc """
  Creates a use case for an integration association.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreateUseCase&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:integration_association_id` (`t:string` required) The identifier for the
  integration association.
  ## Keyword parameters:
  """
  @spec create_use_case(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, create_use_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_use_case_errors()}
  def create_use_case(%Client{} = client, instance_id, integration_association_id, options \\ []) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/integration-associations/#{AWS.Util.encode_uri(integration_association_id)}/use-cases"

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

  @doc """
  Creates a user account for the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreateUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec create_user(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_errors()}
  def create_user(%Client{} = client, instance_id, options \\ []) do
    url_path = "/users/#{AWS.Util.encode_uri(instance_id)}"

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

  @doc """
  Creates a new user hierarchy group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreateUserHierarchyGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec create_user_hierarchy_group(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_user_hierarchy_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_hierarchy_group_errors()}
  def create_user_hierarchy_group(%Client{} = client, instance_id, options \\ []) do
    url_path = "/user-hierarchy-groups/#{AWS.Util.encode_uri(instance_id)}"

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

  @doc """
  Creates a new view with the possible status of `SAVED` or `PUBLISHED`. The views
  will have a unique name for each connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreateView&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instanceId in the ARN of the instance.
  ## Keyword parameters:
  """
  @spec create_view(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_view_errors()}
  def create_view(%Client{} = client, instance_id, options \\ []) do
    url_path = "/views/#{AWS.Util.encode_uri(instance_id)}"

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

  @doc """
  Publishes a new version of the view identifier. Versions are immutable and
  monotonically increasing.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreateViewVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instanceId in the ARN of the instance.
  * `:view_id` (`t:string` required) The identifier of the view. Both ViewArn and
  ViewId can be used.
  ## Keyword parameters:
  """
  @spec create_view_version(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, create_view_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_view_version_errors()}
  def create_view_version(%Client{} = client, instance_id, view_id, options \\ []) do
    url_path =
      "/views/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(view_id)}/versions"

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

  @doc """
  Creates a custom vocabulary associated with your Amazon Connect instance. You
  can set a custom vocabulary to be your default vocabulary for a given
  language. Contact Lens for Amazon Connect uses the default vocabulary in
  post-call and real-time contact analysis sessions for that language.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20CreateVocabulary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec create_vocabulary(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_vocabulary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_vocabulary_errors()}
  def create_vocabulary(%Client{} = client, instance_id, options \\ []) do
    url_path = "/vocabulary/#{AWS.Util.encode_uri(instance_id)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Deactivates an evaluation form in the specified Amazon Connect instance. After a
  form is deactivated, it is no longer available for users to start new
  evaluations based on the form.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeactivateEvaluationForm&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:evaluation_form_id` (`t:string` required) The unique identifier for the
  evaluation form.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec deactivate_evaluation_form(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, deactivate_evaluation_form_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deactivate_evaluation_form_errors()}
  def deactivate_evaluation_form(
        %Client{} = client,
        evaluation_form_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/evaluation-forms/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(evaluation_form_id)}/deactivate"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Deletes an attached file along with the underlying S3 Object.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeleteAttachedFile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:file_id` (`t:string` required) The unique identifier of the attached file
  resource.
  * `:instance_id` (`t:string` required) The unique identifier of the Connect
  instance.
  * `:associated_resource_arn` (`t:string` required) The resource to which the
  attached file is (being) uploaded to. Cases are the only current supported
  resource.
  ## Keyword parameters:
  """
  @spec delete_attached_file(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_attached_file_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_attached_file_errors()}
  def delete_attached_file(
        %Client{} = client,
        file_id,
        instance_id,
        associated_resource_arn,
        options \\ []
      )
      when is_binary(associated_resource_arn) do
    url_path =
      "/attached-files/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(file_id)}"

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
    query_params = [{"associatedResourceArn", associated_resource_arn}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes a contact evaluation in the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeleteContactEvaluation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:evaluation_id` (`t:string` required) A unique identifier for the contact
  evaluation.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec delete_contact_evaluation(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_contact_evaluation_errors()}
  def delete_contact_evaluation(%Client{} = client, evaluation_id, instance_id, options \\ []) do
    url_path =
      "/contact-evaluations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(evaluation_id)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes a flow for the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeleteContactFlow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_flow_id` (`t:string` required) The identifier of the flow.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec delete_contact_flow(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_contact_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_contact_flow_errors()}
  def delete_contact_flow(%Client{} = client, contact_flow_id, instance_id, options \\ []) do
    url_path =
      "/contact-flows/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_id)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes the specified flow module.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeleteContactFlowModule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_flow_module_id` (`t:string` required) The identifier of the flow
  module.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec delete_contact_flow_module(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_contact_flow_module_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_contact_flow_module_errors()}
  def delete_contact_flow_module(
        %Client{} = client,
        contact_flow_module_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/contact-flow-modules/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_module_id)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes an evaluation form in the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeleteEvaluationForm&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:evaluation_form_id` (`t:string` required) The unique identifier for the
  evaluation form.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:evaluation_form_version` (`t:integer`) The unique identifier for the
  evaluation form.
  """
  @spec delete_evaluation_form(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_evaluation_form_errors()}
  def delete_evaluation_form(%Client{} = client, evaluation_form_id, instance_id, options \\ []) do
    url_path =
      "/evaluation-forms/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(evaluation_form_id)}"

    # Validate optional parameters
    optional_params = [evaluation_form_version: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :evaluation_form_version) do
        [{"version", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:evaluation_form_version])

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeleteHoursOfOperation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:hours_of_operation_id` (`t:string` required) The identifier for the hours of
  operation.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec delete_hours_of_operation(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_hours_of_operation_errors()}
  def delete_hours_of_operation(
        %Client{} = client,
        hours_of_operation_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/hours-of-operations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hours_of_operation_id)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.
  Deletes the Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeleteInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec delete_instance(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_instance_errors()}
  def delete_instance(%Client{} = client, instance_id, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes an Amazon Web Services resource association from an Amazon Connect
  instance. The association must not have any use cases associated with it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeleteIntegrationAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:integration_association_id` (`t:string` required) The identifier for the
  integration association.
  ## Keyword parameters:
  """
  @spec delete_integration_association(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_integration_association_errors()}
  def delete_integration_association(
        %Client{} = client,
        instance_id,
        integration_association_id,
        options \\ []
      ) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/integration-associations/#{AWS.Util.encode_uri(integration_association_id)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes a predefined attribute from the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeletePredefinedAttribute&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:name` (`t:string` required) The name of the predefined attribute.
  ## Keyword parameters:
  """
  @spec delete_predefined_attribute(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_predefined_attribute_errors()}
  def delete_predefined_attribute(%Client{} = client, instance_id, name, options \\ []) do
    url_path =
      "/predefined-attributes/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(name)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes a prompt.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeletePrompt&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:prompt_id` (`t:string` required) A unique identifier for the prompt.
  ## Keyword parameters:
  """
  @spec delete_prompt(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_prompt_errors()}
  def delete_prompt(%Client{} = client, instance_id, prompt_id, options \\ []) do
    url_path = "/prompts/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(prompt_id)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes a queue.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeleteQueue&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:queue_id` (`t:string` required) The identifier for the queue.
  ## Keyword parameters:
  """
  @spec delete_queue(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_queue_errors()}
  def delete_queue(%Client{} = client, instance_id, queue_id, options \\ []) do
    url_path = "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes a quick connect.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeleteQuickConnect&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:quick_connect_id` (`t:string` required) The identifier for the quick
  connect.
  ## Keyword parameters:
  """
  @spec delete_quick_connect(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_quick_connect_errors()}
  def delete_quick_connect(%Client{} = client, instance_id, quick_connect_id, options \\ []) do
    url_path =
      "/quick-connects/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(quick_connect_id)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes a routing profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeleteRoutingProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:routing_profile_id` (`t:string` required) The identifier of the routing
  profile.
  ## Keyword parameters:
  """
  @spec delete_routing_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_routing_profile_errors()}
  def delete_routing_profile(%Client{} = client, instance_id, routing_profile_id, options \\ []) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes a rule for the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeleteRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:rule_id` (`t:string` required) A unique identifier for the rule.
  ## Keyword parameters:
  """
  @spec delete_rule(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_rule_errors()}
  def delete_rule(%Client{} = client, instance_id, rule_id, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(rule_id)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes a security profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeleteSecurityProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:security_profile_id` (`t:string` required) The identifier for the security
  profle.
  ## Keyword parameters:
  """
  @spec delete_security_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_security_profile_errors()}
  def delete_security_profile(%Client{} = client, instance_id, security_profile_id, options \\ []) do
    url_path =
      "/security-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(security_profile_id)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes the task template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeleteTaskTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:task_template_id` (`t:string` required) A unique identifier for the task
  template.
  ## Keyword parameters:
  """
  @spec delete_task_template(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_task_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_task_template_errors()}
  def delete_task_template(%Client{} = client, instance_id, task_template_id, options \\ []) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/task/template/#{AWS.Util.encode_uri(task_template_id)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes a traffic distribution group. This API can be called only in the Region
  where the traffic distribution group is created.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeleteTrafficDistributionGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:traffic_distribution_group_id` (`t:string` required) The identifier of the
  traffic distribution group. This can be the ID or the ARN if the API is
  being called in the Region where the traffic distribution group was created.
  The ARN must be provided if the call is from the replicated Region.
  ## Keyword parameters:
  """
  @spec delete_traffic_distribution_group(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_traffic_distribution_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_traffic_distribution_group_errors()}
  def delete_traffic_distribution_group(
        %Client{} = client,
        traffic_distribution_group_id,
        options \\ []
      ) do
    url_path = "/traffic-distribution-group/#{AWS.Util.encode_uri(traffic_distribution_group_id)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes a use case from an integration association.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeleteUseCase&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:integration_association_id` (`t:string` required) The identifier for the
  integration association.
  * `:use_case_id` (`t:string` required) The identifier for the use case.
  ## Keyword parameters:
  """
  @spec delete_use_case(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_use_case_errors()}
  def delete_use_case(
        %Client{} = client,
        instance_id,
        integration_association_id,
        use_case_id,
        options \\ []
      ) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/integration-associations/#{AWS.Util.encode_uri(integration_association_id)}/use-cases/#{AWS.Util.encode_uri(use_case_id)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes a user account from the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeleteUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:user_id` (`t:string` required) The identifier of the user.
  ## Keyword parameters:
  """
  @spec delete_user(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_errors()}
  def delete_user(%Client{} = client, instance_id, user_id, options \\ []) do
    url_path = "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes an existing user hierarchy group. It must not be associated with any
  agents or have any active child groups.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeleteUserHierarchyGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:hierarchy_group_id` (`t:string` required) The identifier of the hierarchy
  group.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec delete_user_hierarchy_group(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_hierarchy_group_errors()}
  def delete_user_hierarchy_group(
        %Client{} = client,
        hierarchy_group_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/user-hierarchy-groups/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hierarchy_group_id)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes the view entirely. It deletes the view and all associated qualifiers
  (versions and aliases).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeleteView&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instanceId in the ARN of the instance.
  * `:view_id` (`t:string` required) The identifier of the view. Both ViewArn and
  ViewId can be used.
  ## Keyword parameters:
  """
  @spec delete_view(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_view_errors()}
  def delete_view(%Client{} = client, instance_id, view_id, options \\ []) do
    url_path = "/views/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(view_id)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes the particular version specified in `ViewVersion` identifier.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeleteViewVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instanceId in the ARN of the instance.
  * `:view_id` (`t:string` required) The identifier of the view. Both ViewArn and
  ViewId can be used.
  * `:view_version` (`t:integer` required) The version number of the view.
  ## Keyword parameters:
  """
  @spec delete_view_version(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_view_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_view_version_errors()}
  def delete_view_version(%Client{} = client, instance_id, view_id, view_version, options \\ []) do
    url_path =
      "/views/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(view_id)}/versions/#{AWS.Util.encode_uri(view_version)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Deletes the vocabulary that has the given identifier.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DeleteVocabulary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:vocabulary_id` (`t:string` required) The identifier of the custom
  vocabulary.
  ## Keyword parameters:
  """
  @spec delete_vocabulary(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_vocabulary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_vocabulary_errors()}
  def delete_vocabulary(%Client{} = client, instance_id, vocabulary_id, options \\ []) do
    url_path =
      "/vocabulary-remove/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(vocabulary_id)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribeAgentStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:agent_status_id` (`t:string` required) The identifier for the agent status.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec describe_agent_status(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_agent_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_agent_status_errors()}
  def describe_agent_status(%Client{} = client, agent_status_id, instance_id, options \\ []) do
    url_path =
      "/agent-status/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(agent_status_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change. To
  request access to this API, contact Amazon Web Services Support.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribeAuthenticationProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:authentication_profile_id` (`t:string` required) A unique identifier for the
  authentication profile.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec describe_authentication_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_authentication_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_authentication_profile_errors()}
  def describe_authentication_profile(
        %Client{} = client,
        authentication_profile_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/authentication-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(authentication_profile_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.
  Describes the specified contact.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribeContact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_id` (`t:string` required) The identifier of the contact.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec describe_contact(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_contact_errors()}
  def describe_contact(%Client{} = client, contact_id, instance_id, options \\ []) do
    url_path = "/contacts/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a contact evaluation in the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribeContactEvaluation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:evaluation_id` (`t:string` required) A unique identifier for the contact
  evaluation.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec describe_contact_evaluation(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_contact_evaluation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_contact_evaluation_errors()}
  def describe_contact_evaluation(%Client{} = client, evaluation_id, instance_id, options \\ []) do
    url_path =
      "/contact-evaluations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(evaluation_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the specified flow. You can also create and update flows using the
  [Amazon Connect Flow
  language](https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribeContactFlow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_flow_id` (`t:string` required) The identifier of the flow.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance.
  ## Keyword parameters:
  """
  @spec describe_contact_flow(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_contact_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_contact_flow_errors()}
  def describe_contact_flow(%Client{} = client, contact_flow_id, instance_id, options \\ []) do
    url_path =
      "/contact-flows/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the specified flow module.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribeContactFlowModule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_flow_module_id` (`t:string` required) The identifier of the flow
  module.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec describe_contact_flow_module(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_contact_flow_module_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_contact_flow_module_errors()}
  def describe_contact_flow_module(
        %Client{} = client,
        contact_flow_module_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/contact-flow-modules/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_module_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an evaluation form in the specified Amazon Connect instance. If the
  version property is not provided, the latest version of the evaluation form is
  described.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribeEvaluationForm&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:evaluation_form_id` (`t:string` required) A unique identifier for the
  contact evaluation.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:evaluation_form_version` (`t:integer`) A version of the evaluation form.
  """
  @spec describe_evaluation_form(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_evaluation_form_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_evaluation_form_errors()}
  def describe_evaluation_form(%Client{} = client, evaluation_form_id, instance_id, options \\ []) do
    url_path =
      "/evaluation-forms/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(evaluation_form_id)}"

    # Validate optional parameters
    optional_params = [evaluation_form_version: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :evaluation_form_version) do
        [{"version", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:evaluation_form_version])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribeHoursOfOperation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:hours_of_operation_id` (`t:string` required) The identifier for the hours of
  operation.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec describe_hours_of_operation(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_hours_of_operation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_hours_of_operation_errors()}
  def describe_hours_of_operation(
        %Client{} = client,
        hours_of_operation_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/hours-of-operations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hours_of_operation_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.
  Returns the current state of the specified instance identifier. It tracks the
  instance while it is being created and returns an error status, if applicable.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribeInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec describe_instance(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_instance_errors()}
  def describe_instance(%Client{} = client, instance_id, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribeInstanceAttribute&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:attribute_type`
  (`t:enum["AUTO_RESOLVE_BEST_VOICES|CONTACTFLOW_LOGS|CONTACT_LENS|EARLY_MEDIA|ENHANCED_CHAT_MONITORING|ENHANCED_CONTACT_MONITORING|HIGH_VOLUME_OUTBOUND|INBOUND_CALLS|MULTI_PARTY_CONFERENCE|OUTBOUND_CALLS|USE_CUSTOM_TTS_VOICES"]`
  required) The type of attribute.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec describe_instance_attribute(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_instance_attribute_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_instance_attribute_errors()}
  def describe_instance_attribute(%Client{} = client, attribute_type, instance_id, options \\ []) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/attribute/#{AWS.Util.encode_uri(attribute_type)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribeInstanceStorageConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:association_id` (`t:string` required) The existing association identifier
  that uniquely identifies the resource type and storage config for the given
  instance ID.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:resource_type`
  (`t:enum["AGENT_EVENTS|ATTACHMENTS|CALL_RECORDINGS|CHAT_TRANSCRIPTS|CONTACT_EVALUATIONS|CONTACT_TRACE_RECORDS|MEDIA_STREAMS|REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS|REAL_TIME_CONTACT_ANALYSIS_SEGMENTS|REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS|SCHEDULED_REPORTS|SCREEN_RECORDINGS"]`
  required) A valid resource type.
  ## Keyword parameters:
  """
  @spec describe_instance_storage_config(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, describe_instance_storage_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_instance_storage_config_errors()}
  def describe_instance_storage_config(
        %Client{} = client,
        association_id,
        instance_id,
        resource_type,
        options \\ []
      )
      when is_binary(resource_type) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/storage-config/#{AWS.Util.encode_uri(association_id)}"

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
    query_params = [{"resourceType", resource_type}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details and status of a phone number that’s claimed to your Amazon Connect
  instance or traffic distribution group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribePhoneNumber&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:phone_number_id` (`t:string` required) A unique identifier for the phone
  number.
  ## Keyword parameters:
  """
  @spec describe_phone_number(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_phone_number_errors()}
  def describe_phone_number(%Client{} = client, phone_number_id, options \\ []) do
    url_path = "/phone-number/#{AWS.Util.encode_uri(phone_number_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a predefined attribute for the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribePredefinedAttribute&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:name` (`t:string` required) The name of the predefined attribute.
  ## Keyword parameters:
  """
  @spec describe_predefined_attribute(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_predefined_attribute_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_predefined_attribute_errors()}
  def describe_predefined_attribute(%Client{} = client, instance_id, name, options \\ []) do
    url_path =
      "/predefined-attributes/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(name)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the prompt.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribePrompt&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:prompt_id` (`t:string` required) A unique identifier for the prompt.
  ## Keyword parameters:
  """
  @spec describe_prompt(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_prompt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_prompt_errors()}
  def describe_prompt(%Client{} = client, instance_id, prompt_id, options \\ []) do
    url_path = "/prompts/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(prompt_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribeQueue&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:queue_id` (`t:string` required) The identifier for the queue.
  ## Keyword parameters:
  """
  @spec describe_queue(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_queue_errors()}
  def describe_queue(%Client{} = client, instance_id, queue_id, options \\ []) do
    url_path = "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the quick connect.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribeQuickConnect&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:quick_connect_id` (`t:string` required) The identifier for the quick
  connect.
  ## Keyword parameters:
  """
  @spec describe_quick_connect(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_quick_connect_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_quick_connect_errors()}
  def describe_quick_connect(%Client{} = client, instance_id, quick_connect_id, options \\ []) do
    url_path =
      "/quick-connects/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(quick_connect_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the specified routing profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribeRoutingProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:routing_profile_id` (`t:string` required) The identifier of the routing
  profile.
  ## Keyword parameters:
  """
  @spec describe_routing_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_routing_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_routing_profile_errors()}
  def describe_routing_profile(%Client{} = client, instance_id, routing_profile_id, options \\ []) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a rule for the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribeRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:rule_id` (`t:string` required) A unique identifier for the rule.
  ## Keyword parameters:
  """
  @spec describe_rule(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_rule_errors()}
  def describe_rule(%Client{} = client, instance_id, rule_id, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(rule_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets basic information about the security profle.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribeSecurityProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:security_profile_id` (`t:string` required) The identifier for the security
  profle.
  ## Keyword parameters:
  """
  @spec describe_security_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_security_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_security_profile_errors()}
  def describe_security_profile(
        %Client{} = client,
        instance_id,
        security_profile_id,
        options \\ []
      ) do
    url_path =
      "/security-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(security_profile_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details and status of a traffic distribution group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribeTrafficDistributionGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:traffic_distribution_group_id` (`t:string` required) The identifier of the
  traffic distribution group. This can be the ID or the ARN if the API is
  being called in the Region where the traffic distribution group was created.
  The ARN must be provided if the call is from the replicated Region.
  ## Keyword parameters:
  """
  @spec describe_traffic_distribution_group(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_traffic_distribution_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_traffic_distribution_group_errors()}
  def describe_traffic_distribution_group(
        %Client{} = client,
        traffic_distribution_group_id,
        options \\ []
      ) do
    url_path = "/traffic-distribution-group/#{AWS.Util.encode_uri(traffic_distribution_group_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the specified user. You can [find the instance ID in the Amazon
  Connect
  console](https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
  (it’s the final part of the ARN). The console does not display the user IDs.
  Instead, list the users and note the IDs provided in the output.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribeUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:user_id` (`t:string` required) The identifier of the user account.
  ## Keyword parameters:
  """
  @spec describe_user(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_user_errors()}
  def describe_user(%Client{} = client, instance_id, user_id, options \\ []) do
    url_path = "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the specified hierarchy group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribeUserHierarchyGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:hierarchy_group_id` (`t:string` required) The identifier of the hierarchy
  group.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec describe_user_hierarchy_group(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_user_hierarchy_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_user_hierarchy_group_errors()}
  def describe_user_hierarchy_group(
        %Client{} = client,
        hierarchy_group_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/user-hierarchy-groups/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hierarchy_group_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the hierarchy structure of the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribeUserHierarchyStructure&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec describe_user_hierarchy_structure(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_user_hierarchy_structure_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_user_hierarchy_structure_errors()}
  def describe_user_hierarchy_structure(%Client{} = client, instance_id, options \\ []) do
    url_path = "/user-hierarchy-structure/#{AWS.Util.encode_uri(instance_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the view for the specified Amazon Connect instance and view
  identifier. The view identifier can be supplied as a ViewId or ARN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribeView&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instanceId in the ARN of the instance.
  * `:view_id` (`t:string` required) The ViewId of the view. This must be an ARN
  for Amazon Web Services managed views.
  ## Keyword parameters:
  """
  @spec describe_view(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_view_errors()}
  def describe_view(%Client{} = client, instance_id, view_id, options \\ []) do
    url_path = "/views/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(view_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the specified vocabulary.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DescribeVocabulary&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:vocabulary_id` (`t:string` required) The identifier of the custom
  vocabulary.
  ## Keyword parameters:
  """
  @spec describe_vocabulary(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, describe_vocabulary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_vocabulary_errors()}
  def describe_vocabulary(%Client{} = client, instance_id, vocabulary_id, options \\ []) do
    url_path =
      "/vocabulary/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(vocabulary_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DisassociateAnalyticsDataSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec disassociate_analytics_data_set(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_analytics_data_set_errors()}
  def disassociate_analytics_data_set(%Client{} = client, instance_id, options \\ []) do
    url_path = "/analytics-data/instance/#{AWS.Util.encode_uri(instance_id)}/association"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DisassociateApprovedOrigin&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:origin` (`t:string` required) The domain URL of the integrated application.
  ## Keyword parameters:
  """
  @spec disassociate_approved_origin(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_approved_origin_errors()}
  def disassociate_approved_origin(%Client{} = client, instance_id, origin, options \\ [])
      when is_binary(origin) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/approved-origin"

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
    query_params = [{"origin", origin}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DisassociateBot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec disassociate_bot(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_bot_errors()}
  def disassociate_bot(%Client{} = client, instance_id, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/bot"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Disassociates a connect resource from a flow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DisassociateFlow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:resource_id` (`t:string` required) The identifier of the resource.
  * `:resource_type` (`t:enum["SMS_PHONE_NUMBER"]` required) A valid resource
  type.
  ## Keyword parameters:
  """
  @spec disassociate_flow(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, disassociate_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_flow_errors()}
  def disassociate_flow(
        %Client{} = client,
        instance_id,
        resource_id,
        resource_type,
        options \\ []
      ) do
    url_path =
      "/flow-associations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(resource_id)}/#{AWS.Util.encode_uri(resource_type)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DisassociateInstanceStorageConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:association_id` (`t:string` required) The existing association identifier
  that uniquely identifies the resource type and storage config for the given
  instance ID.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:resource_type`
  (`t:enum["AGENT_EVENTS|ATTACHMENTS|CALL_RECORDINGS|CHAT_TRANSCRIPTS|CONTACT_EVALUATIONS|CONTACT_TRACE_RECORDS|MEDIA_STREAMS|REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS|REAL_TIME_CONTACT_ANALYSIS_SEGMENTS|REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS|SCHEDULED_REPORTS|SCREEN_RECORDINGS"]`
  required) A valid resource type.
  ## Keyword parameters:
  """
  @spec disassociate_instance_storage_config(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_instance_storage_config_errors()}
  def disassociate_instance_storage_config(
        %Client{} = client,
        association_id,
        instance_id,
        resource_type,
        options \\ []
      )
      when is_binary(resource_type) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/storage-config/#{AWS.Util.encode_uri(association_id)}"

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
    query_params = [{"resourceType", resource_type}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DisassociateLambdaFunction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance..
  * `:function_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
  Lambda function being disassociated.
  ## Keyword parameters:
  """
  @spec disassociate_lambda_function(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_lambda_function_errors()}
  def disassociate_lambda_function(%Client{} = client, instance_id, function_arn, options \\ [])
      when is_binary(function_arn) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/lambda-function"

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
    query_params = [{"functionArn", function_arn}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DisassociateLexBot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:bot_name` (`t:string` required) The name of the Amazon Lex bot. Maximum
  character limit of 50.
  * `:lex_region` (`t:string` required) The Amazon Web Services Region in which
  the Amazon Lex bot has been created.
  ## Keyword parameters:
  """
  @spec disassociate_lex_bot(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_lex_bot_errors()}
  def disassociate_lex_bot(%Client{} = client, instance_id, bot_name, lex_region, options \\ [])
      when is_binary(bot_name) and is_binary(lex_region) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/lex-bot"

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
    query_params = [{"botName", bot_name}, {"lexRegion", lex_region}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Removes the flow association from a phone number claimed to your Amazon Connect
  instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DisassociatePhoneNumberContactFlow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:phone_number_id` (`t:string` required) A unique identifier for the phone
  number.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec disassociate_phone_number_contact_flow(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_phone_number_contact_flow_errors()}
  def disassociate_phone_number_contact_flow(
        %Client{} = client,
        phone_number_id,
        instance_id,
        options \\ []
      )
      when is_binary(instance_id) do
    url_path = "/phone-number/#{AWS.Util.encode_uri(phone_number_id)}/contact-flow"

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
    query_params = [{"instanceId", instance_id}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DisassociateQueueQuickConnects&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:queue_id` (`t:string` required) The identifier for the queue.
  ## Keyword parameters:
  """
  @spec disassociate_queue_quick_connects(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_queue_quick_connects_errors()}
  def disassociate_queue_quick_connects(%Client{} = client, instance_id, queue_id, options \\ []) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/disassociate-quick-connects"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Disassociates a set of queues from a routing profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DisassociateRoutingProfileQueues&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:routing_profile_id` (`t:string` required) The identifier of the routing
  profile.
  ## Keyword parameters:
  """
  @spec disassociate_routing_profile_queues(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_routing_profile_queues_errors()}
  def disassociate_routing_profile_queues(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/disassociate-queues"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DisassociateSecurityKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:association_id` (`t:string` required) The existing association identifier
  that uniquely identifies the resource type and storage config for the given
  instance ID.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec disassociate_security_key(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_security_key_errors()}
  def disassociate_security_key(%Client{} = client, association_id, instance_id, options \\ []) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/security-key/#{AWS.Util.encode_uri(association_id)}"

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

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Disassociates an agent from a traffic distribution group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DisassociateTrafficDistributionGroupUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:traffic_distribution_group_id` (`t:string` required) The identifier of the
  traffic distribution group. This can be the ID or the ARN if the API is
  being called in the Region where the traffic distribution group was created.
  The ARN must be provided if the call is from the replicated Region.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:user_id` (`t:string` required) The identifier for the user. This can be the
  ID or the ARN of the user.
  ## Keyword parameters:
  """
  @spec disassociate_traffic_distribution_group_user(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, disassociate_traffic_distribution_group_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_traffic_distribution_group_user_errors()}
  def disassociate_traffic_distribution_group_user(
        %Client{} = client,
        traffic_distribution_group_id,
        instance_id,
        user_id,
        options \\ []
      )
      when is_binary(instance_id) and is_binary(user_id) do
    url_path =
      "/traffic-distribution-group/#{AWS.Util.encode_uri(traffic_distribution_group_id)}/user"

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
    query_params = [{"InstanceId", instance_id}, {"UserId", user_id}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Disassociates a set of proficiencies from a user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DisassociateUserProficiencies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:user_id` (`t:string` required) The identifier of the user account.
  ## Keyword parameters:
  """
  @spec disassociate_user_proficiencies(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_user_proficiencies_errors()}
  def disassociate_user_proficiencies(%Client{} = client, instance_id, user_id, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/disassociate-proficiencies"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Dismisses contacts from an agent’s CCP and returns the agent to an available
  state, which allows the agent to receive a new routed contact. Contacts can
  only be dismissed if they are in a `MISSED`, `ERROR`, `ENDED`, or `REJECTED`
  state in the [Agent Event
  Stream](https://docs.aws.amazon.com/connect/latest/adminguide/about-contact-states.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20DismissUserContact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instanceId in the ARN of the instance.
  * `:user_id` (`t:string` required) The identifier of the user account.
  ## Keyword parameters:
  """
  @spec dismiss_user_contact(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, dismiss_user_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, dismiss_user_contact_errors()}
  def dismiss_user_contact(%Client{} = client, instance_id, user_id, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/contact"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Provides a pre-signed URL for download of an approved attached file. This API
  also returns metadata about the attached file. It will only return a
  downloadURL if the status of the attached file is `APPROVED`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20GetAttachedFile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:file_id` (`t:string` required) The unique identifier of the attached file
  resource.
  * `:instance_id` (`t:string` required) The unique identifier of the Connect
  instance.
  * `:associated_resource_arn` (`t:string` required) The resource to which the
  attached file is (being) uploaded to. Cases are the only current supported
  resource.
  ## Keyword parameters:
  * `:url_expiry_in_seconds` (`t:integer`) Optional override for the expiry of the
  pre-signed S3 URL in seconds. The default value is 300.
  """
  @spec get_attached_file(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_attached_file_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_attached_file_errors()}
  def get_attached_file(
        %Client{} = client,
        file_id,
        instance_id,
        associated_resource_arn,
        options \\ []
      )
      when is_binary(associated_resource_arn) do
    url_path =
      "/attached-files/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(file_id)}"

    # Validate optional parameters
    optional_params = [url_expiry_in_seconds: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"associatedResourceArn", associated_resource_arn}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :url_expiry_in_seconds) do
        [{"urlExpiryInSeconds", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:url_expiry_in_seconds])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the contact attributes for the specified contact.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20GetContactAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:initial_contact_id` (`t:string` required) The identifier of the initial
  contact.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance.
  ## Keyword parameters:
  """
  @spec get_contact_attributes(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_contact_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_contact_attributes_errors()}
  def get_contact_attributes(%Client{} = client, initial_contact_id, instance_id, options \\ []) do
    url_path =
      "/contact/attributes/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(initial_contact_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the real-time metric data from the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20GetCurrentMetricData&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec get_current_metric_data(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_current_metric_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_current_metric_data_errors()}
  def get_current_metric_data(%Client{} = client, instance_id, options \\ []) do
    url_path = "/metrics/current/#{AWS.Util.encode_uri(instance_id)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Gets the real-time active user data from the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20GetCurrentUserData&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec get_current_user_data(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_current_user_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_current_user_data_errors()}
  def get_current_user_data(%Client{} = client, instance_id, options \\ []) do
    url_path = "/metrics/userdata/#{AWS.Util.encode_uri(instance_id)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Supports SAML sign-in for Amazon Connect. Retrieves a token for federation. The
  token is for the Amazon Connect user which corresponds to the IAM credentials
  that were used to invoke this action. For more information about how SAML
  sign-in works in Amazon Connect, see [Configure SAML with IAM for Amazon
  Connect in the *Amazon Connect Administrator
  Guide*.](https://docs.aws.amazon.com/connect/latest/adminguide/configure-saml.html
  )

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20GetFederationToken&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec get_federation_token(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_federation_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_federation_token_errors()}
  def get_federation_token(%Client{} = client, instance_id, options \\ []) do
    url_path = "/user/federate/#{AWS.Util.encode_uri(instance_id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the flow associated for a given resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20GetFlowAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:resource_id` (`t:string` required) The identifier of the resource.
  * `:resource_type` (`t:enum["SMS_PHONE_NUMBER"]` required) A valid resource
  type.
  ## Keyword parameters:
  """
  @spec get_flow_association(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_flow_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_flow_association_errors()}
  def get_flow_association(
        %Client{} = client,
        instance_id,
        resource_id,
        resource_type,
        options \\ []
      ) do
    url_path =
      "/flow-associations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(resource_id)}/#{AWS.Util.encode_uri(resource_type)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets historical metric data from the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20GetMetricData&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec get_metric_data(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_metric_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_metric_data_errors()}
  def get_metric_data(%Client{} = client, instance_id, options \\ []) do
    url_path = "/metrics/historical/#{AWS.Util.encode_uri(instance_id)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Gets metric data from the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20GetMetricDataV2&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_metric_data_v2(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_metric_data_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_metric_data_v2_errors()}
  def get_metric_data_v2(%Client{} = client, options \\ []) do
    url_path = "/metrics/data"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Gets the prompt file.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20GetPromptFile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:prompt_id` (`t:string` required) A unique identifier for the prompt.
  ## Keyword parameters:
  """
  @spec get_prompt_file(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_prompt_file_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_prompt_file_errors()}
  def get_prompt_file(%Client{} = client, instance_id, prompt_id, options \\ []) do
    url_path =
      "/prompts/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(prompt_id)}/file"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details about a specific task template in the specified Amazon Connect
  instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20GetTaskTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:task_template_id` (`t:string` required) A unique identifier for the task
  template.
  ## Keyword parameters:
  * `:snapshot_version` (`t:string`) The system generated version of a task
  template that is associated with a task, when the task is created.
  """
  @spec get_task_template(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_task_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_task_template_errors()}
  def get_task_template(%Client{} = client, instance_id, task_template_id, options \\ []) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/task/template/#{AWS.Util.encode_uri(task_template_id)}"

    # Validate optional parameters
    optional_params = [snapshot_version: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :snapshot_version) do
        [{"snapshotVersion", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:snapshot_version])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the current traffic distribution for a given traffic distribution
  group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20GetTrafficDistribution&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string` required) The identifier of the traffic distribution group.
  This can be the ID or the ARN if the API is being called in the Region where
  the traffic distribution group was created. The ARN must be provided if the
  call is from the replicated Region.
  ## Keyword parameters:
  """
  @spec get_traffic_distribution(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_traffic_distribution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_traffic_distribution_errors()}
  def get_traffic_distribution(%Client{} = client, id, options \\ []) do
    url_path = "/traffic-distribution/#{AWS.Util.encode_uri(id)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Imports a claimed phone number from an external service, such as Amazon
  Pinpoint, into an Amazon Connect instance. You can call this API only in the
  same Amazon Web Services Region where the Amazon Connect instance was created.
  Call the
  [DescribePhoneNumber](https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html)
  API to verify the status of a previous `ImportPhoneNumber` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ImportPhoneNumber&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec import_phone_number(AWS.Client.t(), Keyword.t()) ::
          {:ok, import_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_phone_number_errors()}
  def import_phone_number(%Client{} = client, options \\ []) do
    url_path = "/phone-number/import"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListAgentStatuses&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:agent_status_types` (`t:list[com.amazonaws.connect#AgentStatusType]`)
  Available agent status types.
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_agent_statuses(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_agent_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_agent_statuses_errors()}
  def list_agent_statuses(%Client{} = client, instance_id, options \\ []) do
    url_path = "/agent-status/#{AWS.Util.encode_uri(instance_id)}"

    # Validate optional parameters
    optional_params = [agent_status_types: nil, max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :agent_status_types) do
        [{"AgentStatusTypes", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:agent_status_types, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListAnalyticsDataAssociations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:data_set_id` (`t:string`) The identifier of the dataset to get the
  association status.
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_analytics_data_associations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_analytics_data_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_analytics_data_associations_errors()}
  def list_analytics_data_associations(%Client{} = client, instance_id, options \\ []) do
    url_path = "/analytics-data/instance/#{AWS.Util.encode_uri(instance_id)}/association"

    # Validate optional parameters
    optional_params = [data_set_id: nil, max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :data_set_id) do
        [{"DataSetId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:data_set_id, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListApprovedOrigins&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_approved_origins(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_approved_origins_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_approved_origins_errors()}
  def list_approved_origins(%Client{} = client, instance_id, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/approved-origins"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change. To
  request access to this API, contact Amazon Web Services Support.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListAuthenticationProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_authentication_profiles(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_authentication_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_authentication_profiles_errors()}
  def list_authentication_profiles(%Client{} = client, instance_id, options \\ []) do
    url_path = "/authentication-profiles-summary/#{AWS.Util.encode_uri(instance_id)}"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListBots&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:lex_version` (`t:enum["V1|V2"]` required) The version of Amazon Lex or
  Amazon Lex V2.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_bots(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_bots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_bots_errors()}
  def list_bots(%Client{} = client, instance_id, lex_version, options \\ [])
      when is_binary(lex_version) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/bots"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"lexVersion", lex_version}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists contact evaluations in the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListContactEvaluations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:contact_id` (`t:string` required) The identifier of the contact in this
  instance of Amazon Connect.
  ## Keyword parameters:
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_contact_evaluations(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_contact_evaluations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_contact_evaluations_errors()}
  def list_contact_evaluations(%Client{} = client, instance_id, contact_id, options \\ [])
      when is_binary(contact_id) do
    url_path = "/contact-evaluations/#{AWS.Util.encode_uri(instance_id)}"

    # Validate optional parameters
    optional_params = [next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"contactId", contact_id}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides information about the flow modules for the specified Amazon Connect
  instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListContactFlowModules&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:contact_flow_module_state` (`t:enum["ACTIVE|ARCHIVED"]`) The state of the
  flow module.
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_contact_flow_modules(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_contact_flow_modules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_contact_flow_modules_errors()}
  def list_contact_flow_modules(%Client{} = client, instance_id, options \\ []) do
    url_path = "/contact-flow-modules-summary/#{AWS.Util.encode_uri(instance_id)}"

    # Validate optional parameters
    optional_params = [contact_flow_module_state: nil, max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :contact_flow_module_state) do
        [{"state", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:contact_flow_module_state, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides information about the flows for the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListContactFlows&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:contact_flow_types` (`t:list[com.amazonaws.connect#ContactFlowType]`) The
  type of flow.
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  The default MaxResult size is 100.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_contact_flows(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_contact_flows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_contact_flows_errors()}
  def list_contact_flows(%Client{} = client, instance_id, options \\ []) do
    url_path = "/contact-flows-summary/#{AWS.Util.encode_uri(instance_id)}"

    # Validate optional parameters
    optional_params = [contact_flow_types: nil, max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :contact_flow_types) do
        [{"contactFlowTypes", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:contact_flow_types, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListContactReferences&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_id` (`t:string` required) The identifier of the initial contact.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:reference_types` (`t:list[com.amazonaws.connect#ReferenceType]` required)
  The type of reference.
  ## Keyword parameters:
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_contact_references(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_contact_references_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_contact_references_errors()}
  def list_contact_references(
        %Client{} = client,
        contact_id,
        instance_id,
        reference_types,
        options \\ []
      )
      when is_binary(reference_types) do
    url_path =
      "/contact/references/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_id)}"

    # Validate optional parameters
    optional_params = [next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"referenceTypes", reference_types}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the default vocabularies for the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListDefaultVocabularies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec list_default_vocabularies(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_default_vocabularies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_default_vocabularies_errors()}
  def list_default_vocabularies(%Client{} = client, instance_id, options \\ []) do
    url_path = "/default-vocabulary-summary/#{AWS.Util.encode_uri(instance_id)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Lists versions of an evaluation form in the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListEvaluationFormVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:evaluation_form_id` (`t:string` required) The unique identifier for the
  evaluation form.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_evaluation_form_versions(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_evaluation_form_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_evaluation_form_versions_errors()}
  def list_evaluation_form_versions(
        %Client{} = client,
        evaluation_form_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/evaluation-forms/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(evaluation_form_id)}/versions"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists evaluation forms in the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListEvaluationForms&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_evaluation_forms(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_evaluation_forms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_evaluation_forms_errors()}
  def list_evaluation_forms(%Client{} = client, instance_id, options \\ []) do
    url_path = "/evaluation-forms/#{AWS.Util.encode_uri(instance_id)}"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the flow association based on the filters.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListFlowAssociations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  * `:resource_type` (`t:enum["VOICE_PHONE_NUMBER"]`) A valid resource type.
  """
  @spec list_flow_associations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_flow_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_flow_associations_errors()}
  def list_flow_associations(%Client{} = client, instance_id, options \\ []) do
    url_path = "/flow-associations-summary/#{AWS.Util.encode_uri(instance_id)}"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, resource_type: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :resource_type) do
        [{"ResourceType", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :resource_type])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides information about the hours of operation for the specified Amazon
  Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListHoursOfOperations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  The default MaxResult size is 100.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_hours_of_operations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_hours_of_operations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_hours_of_operations_errors()}
  def list_hours_of_operations(%Client{} = client, instance_id, options \\ []) do
    url_path = "/hours-of-operations-summary/#{AWS.Util.encode_uri(instance_id)}"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListInstanceAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_instance_attributes(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_instance_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_instance_attributes_errors()}
  def list_instance_attributes(%Client{} = client, instance_id, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/attributes"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListInstanceStorageConfigs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:resource_type`
  (`t:enum["AGENT_EVENTS|ATTACHMENTS|CALL_RECORDINGS|CHAT_TRANSCRIPTS|CONTACT_EVALUATIONS|CONTACT_TRACE_RECORDS|MEDIA_STREAMS|REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS|REAL_TIME_CONTACT_ANALYSIS_SEGMENTS|REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS|SCHEDULED_REPORTS|SCREEN_RECORDINGS"]`
  required) A valid resource type.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_instance_storage_configs(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_instance_storage_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_instance_storage_configs_errors()}
  def list_instance_storage_configs(%Client{} = client, instance_id, resource_type, options \\ [])
      when is_binary(resource_type) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/storage-configs"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"resourceType", resource_type}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListInstances&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_instances(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_instances_errors()}
  def list_instances(%Client{} = client, options \\ []) do
    url_path = "/instance"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides summary information about the Amazon Web Services resource associations
  for the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListIntegrationAssociations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:integration_arn` (`t:string`) The Amazon Resource Name (ARN) of the
  integration.
  * `:integration_type`
  (`t:enum["APPLICATION|CASES_DOMAIN|EVENT|FILE_SCANNER|PINPOINT_APP|VOICE_ID|WISDOM_ASSISTANT|WISDOM_KNOWLEDGE_BASE|WISDOM_QUICK_RESPONSES"]`)
  The integration type.
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_integration_associations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_integration_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_integration_associations_errors()}
  def list_integration_associations(%Client{} = client, instance_id, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/integration-associations"

    # Validate optional parameters
    optional_params = [
      integration_arn: nil,
      integration_type: nil,
      max_results: nil,
      next_token: nil
    ]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :integration_type) do
        [{"integrationType", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :integration_arn) do
        [{"integrationArn", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:integration_arn, :integration_type, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListLambdaFunctions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_lambda_functions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_lambda_functions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_lambda_functions_errors()}
  def list_lambda_functions(%Client{} = client, instance_id, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/lambda-functions"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListLexBots&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  If no value is specified, the default is 10.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_lex_bots(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_lex_bots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_lex_bots_errors()}
  def list_lex_bots(%Client{} = client, instance_id, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/lex-bots"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides information about the phone numbers for the specified Amazon Connect
  instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListPhoneNumbers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  The default MaxResult size is 100.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  * `:phone_number_country_codes`
  (`t:list[com.amazonaws.connect#PhoneNumberCountryCode]`) The ISO country
  code.
  * `:phone_number_types` (`t:list[com.amazonaws.connect#PhoneNumberType]`) The
  type of phone number.
  """
  @spec list_phone_numbers(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_phone_numbers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_phone_numbers_errors()}
  def list_phone_numbers(%Client{} = client, instance_id, options \\ []) do
    url_path = "/phone-numbers-summary/#{AWS.Util.encode_uri(instance_id)}"

    # Validate optional parameters
    optional_params = [
      max_results: nil,
      next_token: nil,
      phone_number_country_codes: nil,
      phone_number_types: nil
    ]

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
    query_params =
      if opt_val = Keyword.get(options, :phone_number_types) do
        [{"phoneNumberTypes", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :phone_number_country_codes) do
        [{"phoneNumberCountryCodes", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :max_results,
        :next_token,
        :phone_number_country_codes,
        :phone_number_types
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists phone numbers claimed to your Amazon Connect instance or traffic
  distribution group. If the provided `TargetArn` is a traffic distribution
  group, you can call this API in both Amazon Web Services Regions associated
  with traffic distribution group. For more information about phone numbers, see
  [Set Up Phone Numbers for Your Contact
  Center](https://docs.aws.amazon.com/connect/latest/adminguide/contact-center-phone-number.html)
  in the *Amazon Connect Administrator Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListPhoneNumbersV2&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_phone_numbers_v2(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_phone_numbers_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_phone_numbers_v2_errors()}
  def list_phone_numbers_v2(%Client{} = client, options \\ []) do
    url_path = "/phone-number/list"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Lists predefined attributes for the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListPredefinedAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_predefined_attributes(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_predefined_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_predefined_attributes_errors()}
  def list_predefined_attributes(%Client{} = client, instance_id, options \\ []) do
    url_path = "/predefined-attributes/#{AWS.Util.encode_uri(instance_id)}"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides information about the prompts for the specified Amazon Connect
  instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListPrompts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  The default MaxResult size is 100.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_prompts(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_prompts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_prompts_errors()}
  def list_prompts(%Client{} = client, instance_id, options \\ []) do
    url_path = "/prompts-summary/#{AWS.Util.encode_uri(instance_id)}"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListQueueQuickConnects&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:queue_id` (`t:string` required) The identifier for the queue.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  The default MaxResult size is 100.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_queue_quick_connects(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_queue_quick_connects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_queue_quick_connects_errors()}
  def list_queue_quick_connects(%Client{} = client, instance_id, queue_id, options \\ []) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/quick-connects"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides information about the queues for the specified Amazon Connect instance.
  If you do not specify a `QueueTypes` parameter, both standard and agent queues
  are returned. This might cause an unexpected truncation of results if you have
  more than 1000 agents and you limit the number of results of the API call in
  code.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListQueues&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  The default MaxResult size is 100.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  * `:queue_types` (`t:list[com.amazonaws.connect#QueueType]`) The type of queue.
  """
  @spec list_queues(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_queues_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_queues_errors()}
  def list_queues(%Client{} = client, instance_id, options \\ []) do
    url_path = "/queues-summary/#{AWS.Util.encode_uri(instance_id)}"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, queue_types: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :queue_types) do
        [{"queueTypes", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :queue_types])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides information about the quick connects for the specified Amazon Connect
  instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListQuickConnects&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  The default MaxResult size is 100.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  * `:quick_connect_types` (`t:list[com.amazonaws.connect#QuickConnectType]`) The
  type of quick connect. In the Amazon Connect admin website, when you create
  a quick connect, you are prompted to assign one of the following types:
  Agent (USER), External (PHONE_NUMBER), or Queue (QUEUE).
  """
  @spec list_quick_connects(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_quick_connects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_quick_connects_errors()}
  def list_quick_connects(%Client{} = client, instance_id, options \\ []) do
    url_path = "/quick-connects/#{AWS.Util.encode_uri(instance_id)}"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, quick_connect_types: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :quick_connect_types) do
        [{"QuickConnectTypes", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :quick_connect_types])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides a list of analysis segments for a real-time analysis session.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListRealtimeContactAnalysisSegmentsV2&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_id` (`t:string` required) The identifier of the contact in this
  instance of Amazon Connect.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec list_realtime_contact_analysis_segments_v2(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, list_realtime_contact_analysis_segments_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_realtime_contact_analysis_segments_v2_errors()}
  def list_realtime_contact_analysis_segments_v2(
        %Client{} = client,
        contact_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/contact/list-real-time-analysis-segments-v2/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_id)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Lists the queues associated with a routing profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListRoutingProfileQueues&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:routing_profile_id` (`t:string` required) The identifier of the routing
  profile.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  The default MaxResult size is 100.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_routing_profile_queues(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_routing_profile_queues_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_routing_profile_queues_errors()}
  def list_routing_profile_queues(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/queues"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides summary information about the routing profiles for the specified Amazon
  Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListRoutingProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  The default MaxResult size is 100.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_routing_profiles(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_routing_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_routing_profiles_errors()}
  def list_routing_profiles(%Client{} = client, instance_id, options \\ []) do
    url_path = "/routing-profiles-summary/#{AWS.Util.encode_uri(instance_id)}"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all rules for the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListRules&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:event_source_name`
  (`t:enum["OnCaseCreate|OnCaseUpdate|OnContactEvaluationSubmit|OnMetricDataUpdate|OnPostCallAnalysisAvailable|OnPostChatAnalysisAvailable|OnRealTimeCallAnalysisAvailable|OnRealTimeChatAnalysisAvailable|OnSalesforceCaseCreate|OnZendeskTicketCreate|OnZendeskTicketStatusUpdate"]`)
  The name of the event source.
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  * `:publish_status` (`t:enum["DRAFT|PUBLISHED"]`) The publish status of the
  rule.
  """
  @spec list_rules(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_rules_errors()}
  def list_rules(%Client{} = client, instance_id, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(instance_id)}"

    # Validate optional parameters
    optional_params = [
      event_source_name: nil,
      max_results: nil,
      next_token: nil,
      publish_status: nil
    ]

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
    query_params =
      if opt_val = Keyword.get(options, :publish_status) do
        [{"publishStatus", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :event_source_name) do
        [{"eventSourceName", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:event_source_name, :max_results, :next_token, :publish_status])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListSecurityKeys&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_security_keys(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_security_keys_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_security_keys_errors()}
  def list_security_keys(%Client{} = client, instance_id, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/security-keys"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of third-party applications in a specific security profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListSecurityProfileApplications&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:security_profile_id` (`t:string` required) The identifier for the security
  profle.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_security_profile_applications(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_security_profile_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_security_profile_applications_errors()}
  def list_security_profile_applications(
        %Client{} = client,
        instance_id,
        security_profile_id,
        options \\ []
      ) do
    url_path =
      "/security-profiles-applications/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(security_profile_id)}"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the permissions granted to a security profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListSecurityProfilePermissions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:security_profile_id` (`t:string` required) The identifier for the security
  profle.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_security_profile_permissions(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_security_profile_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_security_profile_permissions_errors()}
  def list_security_profile_permissions(
        %Client{} = client,
        instance_id,
        security_profile_id,
        options \\ []
      ) do
    url_path =
      "/security-profiles-permissions/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(security_profile_id)}"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides summary information about the security profiles for the specified
  Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListSecurityProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  The default MaxResult size is 100.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_security_profiles(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_security_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_security_profiles_errors()}
  def list_security_profiles(%Client{} = client, instance_id, options \\ []) do
    url_path = "/security-profiles-summary/#{AWS.Util.encode_uri(instance_id)}"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags for the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
  resource. All Amazon Connect resources (instances, queues, flows, routing
  profiles, etc) have an ARN. To locate the ARN for an instance, for example,
  see Find your Amazon Connect instance ID/ARN.
  ## Keyword parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists task templates for the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListTaskTemplates&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:name` (`t:string`) The name of the task template.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  * `:status` (`t:enum["ACTIVE|INACTIVE"]`) Marks a template as ACTIVE or INACTIVE
  for a task to refer to it. Tasks can only be created from ACTIVE templates.
  If a template is marked as INACTIVE, then a task that refers to this
  template cannot be created.
  """
  @spec list_task_templates(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_task_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_task_templates_errors()}
  def list_task_templates(%Client{} = client, instance_id, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/task/template"

    # Validate optional parameters
    optional_params = [max_results: nil, name: nil, next_token: nil, status: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :status) do
        [{"status", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :name) do
        [{"name", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :name, :next_token, :status])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists traffic distribution group users.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListTrafficDistributionGroupUsers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:traffic_distribution_group_id` (`t:string` required) The identifier of the
  traffic distribution group. This can be the ID or the ARN if the API is
  being called in the Region where the traffic distribution group was created.
  The ARN must be provided if the call is from the replicated Region.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_traffic_distribution_group_users(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_traffic_distribution_group_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_traffic_distribution_group_users_errors()}
  def list_traffic_distribution_group_users(
        %Client{} = client,
        traffic_distribution_group_id,
        options \\ []
      ) do
    url_path =
      "/traffic-distribution-group/#{AWS.Util.encode_uri(traffic_distribution_group_id)}/user"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists traffic distribution groups.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListTrafficDistributionGroups&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:instance_id` (`t:string`) The identifier of the Amazon Connect instance. You
  can find the instance ID in the Amazon Resource Name (ARN) of the instance.
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_traffic_distribution_groups(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_traffic_distribution_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_traffic_distribution_groups_errors()}
  def list_traffic_distribution_groups(%Client{} = client, options \\ []) do
    url_path = "/traffic-distribution-groups"

    # Validate optional parameters
    optional_params = [instance_id: nil, max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :instance_id) do
        [{"instanceId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:instance_id, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the use cases for the integration association.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListUseCases&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:integration_association_id` (`t:string` required) The identifier for the
  integration association.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_use_cases(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_use_cases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_use_cases_errors()}
  def list_use_cases(%Client{} = client, instance_id, integration_association_id, options \\ []) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/integration-associations/#{AWS.Util.encode_uri(integration_association_id)}/use-cases"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides summary information about the hierarchy groups for the specified Amazon
  Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListUserHierarchyGroups&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  The default MaxResult size is 100.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_user_hierarchy_groups(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_user_hierarchy_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_user_hierarchy_groups_errors()}
  def list_user_hierarchy_groups(%Client{} = client, instance_id, options \\ []) do
    url_path = "/user-hierarchy-groups-summary/#{AWS.Util.encode_uri(instance_id)}"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists proficiencies associated with a user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListUserProficiencies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:user_id` (`t:string` required) The identifier of the user account.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_user_proficiencies(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_user_proficiencies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_user_proficiencies_errors()}
  def list_user_proficiencies(%Client{} = client, instance_id, user_id, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/proficiencies"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides summary information about the users for the specified Amazon Connect
  instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListUsers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  The default MaxResult size is 100.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_users(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_users_errors()}
  def list_users(%Client{} = client, instance_id, options \\ []) do
    url_path = "/users-summary/#{AWS.Util.encode_uri(instance_id)}"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns all the available versions for the specified Amazon Connect instance and
  view identifier.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListViewVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instanceId in the ARN of the instance.
  * `:view_id` (`t:string` required) The identifier of the view. Both ViewArn and
  ViewId can be used.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  The default MaxResult size is 100.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """
  @spec list_view_versions(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_view_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_view_versions_errors()}
  def list_view_versions(%Client{} = client, instance_id, view_id, options \\ []) do
    url_path =
      "/views/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(view_id)}/versions"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns views in the given instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ListViews&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instanceId in the ARN of the instance.
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  The default MaxResult size is 100.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  * `:type` (`t:enum["AWS_MANAGED|CUSTOMER_MANAGED"]`) The type of the view.
  """
  @spec list_views(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_views_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_views_errors()}
  def list_views(%Client{} = client, instance_id, options \\ []) do
    url_path = "/views/#{AWS.Util.encode_uri(instance_id)}"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, type: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :type) do
        [{"type", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"nextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"maxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :type])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Initiates silent monitoring of a contact. The Contact Control Panel (CCP) of the
  user specified by *userId* will be set to silent monitoring mode on the
  contact.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20MonitorContact&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec monitor_contact(AWS.Client.t(), Keyword.t()) ::
          {:ok, monitor_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, monitor_contact_errors()}
  def monitor_contact(%Client{} = client, options \\ []) do
    url_path = "/contact/monitor"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Allows pausing an ongoing task contact.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20PauseContact&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec pause_contact(AWS.Client.t(), Keyword.t()) ::
          {:ok, pause_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, pause_contact_errors()}
  def pause_contact(%Client{} = client, options \\ []) do
    url_path = "/contact/pause"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Changes the current status of a user or agent in Amazon Connect. If the agent is
  currently handling a contact, this sets the agent's next status.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20PutUserStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:user_id` (`t:string` required) The identifier of the user.
  ## Keyword parameters:
  """
  @spec put_user_status(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, put_user_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_user_status_errors()}
  def put_user_status(%Client{} = client, instance_id, user_id, options \\ []) do
    url_path = "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/status"

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

  @doc """
  Releases a phone number previously claimed to an Amazon Connect instance or
  traffic distribution group. You can call this API only in the Amazon Web
  Services Region where the number was claimed. To release phone numbers from a
  traffic distribution group, use the `ReleasePhoneNumber` API, not the Amazon
  Connect admin website. After releasing a phone number, the phone number enters
  into a cooldown period for up to 180 days. It cannot be searched for or
  claimed again until the period has ended. If you accidentally release a phone
  number, contact Amazon Web Services Support.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ReleasePhoneNumber&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:phone_number_id` (`t:string` required) A unique identifier for the phone
  number.
  ## Keyword parameters:
  * `:client_token` (`t:string`) A unique, case-sensitive identifier that you
  provide to ensure the idempotency of the request. If not provided, the
  Amazon Web Services SDK populates this field. For more information about
  idempotency, see Making retries safe with idempotent APIs.
  """
  @spec release_phone_number(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, release_phone_number_errors()}
  def release_phone_number(%Client{} = client, phone_number_id, options \\ []) do
    url_path = "/phone-number/#{AWS.Util.encode_uri(phone_number_id)}"

    # Validate optional parameters
    optional_params = [client_token: nil]

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
    query_params =
      if opt_val = Keyword.get(options, :client_token) do
        [{"clientToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Replicates an Amazon Connect instance in the specified Amazon Web Services
  Region and copies configuration information for Amazon Connect resources
  across Amazon Web Services Regions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ReplicateInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance. You can provide the InstanceId, or the entire ARN.
  ## Keyword parameters:
  """
  @spec replicate_instance(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, replicate_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, replicate_instance_errors()}
  def replicate_instance(%Client{} = client, instance_id, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/replicate"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Allows resuming a task contact in a paused state.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ResumeContact&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec resume_contact(AWS.Client.t(), Keyword.t()) ::
          {:ok, resume_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resume_contact_errors()}
  def resume_contact(%Client{} = client, options \\ []) do
    url_path = "/contact/resume"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  When a contact is being recorded, and the recording has been suspended using
  SuspendContactRecording, this API resumes recording whatever recording is
  selected in the flow configuration: call, screen, or both. If only call
  recording or only screen recording is enabled, then it would resume.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20ResumeContactRecording&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec resume_contact_recording(AWS.Client.t(), Keyword.t()) ::
          {:ok, resume_contact_recording_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resume_contact_recording_errors()}
  def resume_contact_recording(%Client{} = client, options \\ []) do
    url_path = "/contact/resume-recording"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Searches AgentStatuses in an Amazon Connect instance, with optional filtering.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20SearchAgentStatuses&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec search_agent_statuses(AWS.Client.t(), Keyword.t()) ::
          {:ok, search_agent_statuses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_agent_statuses_errors()}
  def search_agent_statuses(%Client{} = client, options \\ []) do
    url_path = "/search-agent-statuses"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Searches for available phone numbers that you can claim to your Amazon Connect
  instance or traffic distribution group. If the provided `TargetArn` is a
  traffic distribution group, you can call this API in both Amazon Web Services
  Regions associated with the traffic distribution group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20SearchAvailablePhoneNumbers&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec search_available_phone_numbers(AWS.Client.t(), Keyword.t()) ::
          {:ok, search_available_phone_numbers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_available_phone_numbers_errors()}
  def search_available_phone_numbers(%Client{} = client, options \\ []) do
    url_path = "/phone-number/search-available"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Searches the flow modules in an Amazon Connect instance, with optional
  filtering.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20SearchContactFlowModules&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec search_contact_flow_modules(AWS.Client.t(), Keyword.t()) ::
          {:ok, search_contact_flow_modules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_contact_flow_modules_errors()}
  def search_contact_flow_modules(%Client{} = client, options \\ []) do
    url_path = "/search-contact-flow-modules"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Searches the contact flows in an Amazon Connect instance, with optional
  filtering.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20SearchContactFlows&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec search_contact_flows(AWS.Client.t(), Keyword.t()) ::
          {:ok, search_contact_flows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_contact_flows_errors()}
  def search_contact_flows(%Client{} = client, options \\ []) do
    url_path = "/search-contact-flows"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Searches contacts in an Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20SearchContacts&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec search_contacts(AWS.Client.t(), Keyword.t()) ::
          {:ok, search_contacts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_contacts_errors()}
  def search_contacts(%Client{} = client, options \\ []) do
    url_path = "/search-contacts"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Searches the hours of operation in an Amazon Connect instance, with optional
  filtering.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20SearchHoursOfOperations&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec search_hours_of_operations(AWS.Client.t(), Keyword.t()) ::
          {:ok, search_hours_of_operations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_hours_of_operations_errors()}
  def search_hours_of_operations(%Client{} = client, options \\ []) do
    url_path = "/search-hours-of-operations"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Predefined attributes that meet certain criteria.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20SearchPredefinedAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec search_predefined_attributes(AWS.Client.t(), Keyword.t()) ::
          {:ok, search_predefined_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_predefined_attributes_errors()}
  def search_predefined_attributes(%Client{} = client, options \\ []) do
    url_path = "/search-predefined-attributes"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Searches prompts in an Amazon Connect instance, with optional filtering.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20SearchPrompts&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec search_prompts(AWS.Client.t(), Keyword.t()) ::
          {:ok, search_prompts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_prompts_errors()}
  def search_prompts(%Client{} = client, options \\ []) do
    url_path = "/search-prompts"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Searches queues in an Amazon Connect instance, with optional filtering.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20SearchQueues&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec search_queues(AWS.Client.t(), Keyword.t()) ::
          {:ok, search_queues_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_queues_errors()}
  def search_queues(%Client{} = client, options \\ []) do
    url_path = "/search-queues"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Searches quick connects in an Amazon Connect instance, with optional filtering.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20SearchQuickConnects&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec search_quick_connects(AWS.Client.t(), Keyword.t()) ::
          {:ok, search_quick_connects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_quick_connects_errors()}
  def search_quick_connects(%Client{} = client, options \\ []) do
    url_path = "/search-quick-connects"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Searches tags used in an Amazon Connect instance using optional search criteria.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20SearchResourceTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec search_resource_tags(AWS.Client.t(), Keyword.t()) ::
          {:ok, search_resource_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_resource_tags_errors()}
  def search_resource_tags(%Client{} = client, options \\ []) do
    url_path = "/search-resource-tags"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Searches routing profiles in an Amazon Connect instance, with optional
  filtering.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20SearchRoutingProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec search_routing_profiles(AWS.Client.t(), Keyword.t()) ::
          {:ok, search_routing_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_routing_profiles_errors()}
  def search_routing_profiles(%Client{} = client, options \\ []) do
    url_path = "/search-routing-profiles"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Searches security profiles in an Amazon Connect instance, with optional
  filtering.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20SearchSecurityProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec search_security_profiles(AWS.Client.t(), Keyword.t()) ::
          {:ok, search_security_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_security_profiles_errors()}
  def search_security_profiles(%Client{} = client, options \\ []) do
    url_path = "/search-security-profiles"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Searches UserHierarchyGroups in an Amazon Connect instance, with optional
  filtering.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20SearchUserHierarchyGroups&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec search_user_hierarchy_groups(AWS.Client.t(), Keyword.t()) ::
          {:ok, search_user_hierarchy_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_user_hierarchy_groups_errors()}
  def search_user_hierarchy_groups(%Client{} = client, options \\ []) do
    url_path = "/search-user-hierarchy-groups"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Searches users in an Amazon Connect instance, with optional filtering.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20SearchUsers&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec search_users(AWS.Client.t(), Keyword.t()) ::
          {:ok, search_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_users_errors()}
  def search_users(%Client{} = client, options \\ []) do
    url_path = "/search-users"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Searches for vocabularies within a specific Amazon Connect instance using
  `State`, `NameStartsWith`, and `LanguageCode`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20SearchVocabularies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec search_vocabularies(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, search_vocabularies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_vocabularies_errors()}
  def search_vocabularies(%Client{} = client, instance_id, options \\ []) do
    url_path = "/vocabulary-summary/#{AWS.Util.encode_uri(instance_id)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Processes chat integration events from Amazon Web Services or external
  integrations to Amazon Connect. A chat integration event includes:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20SendChatIntegrationEvent&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec send_chat_integration_event(AWS.Client.t(), Keyword.t()) ::
          {:ok, send_chat_integration_event_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_chat_integration_event_errors()}
  def send_chat_integration_event(%Client{} = client, options \\ []) do
    url_path = "/chat-integration-event"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Provides a pre-signed Amazon S3 URL in response for uploading your content.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20StartAttachedFileUpload&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The unique identifier of the Amazon
  Connect instance.
  * `:associated_resource_arn` (`t:string` required) The resource to which the
  attached file is (being) uploaded to. Cases are the only current supported
  resource.
  ## Keyword parameters:
  """
  @spec start_attached_file_upload(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, start_attached_file_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_attached_file_upload_errors()}
  def start_attached_file_upload(
        %Client{} = client,
        instance_id,
        associated_resource_arn,
        options \\ []
      )
      when is_binary(associated_resource_arn) do
    url_path = "/attached-files/#{AWS.Util.encode_uri(instance_id)}"

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
    query_params = [{"associatedResourceArn", associated_resource_arn}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Initiates a flow to start a new chat for the customer. Response of this API
  provides a token required to obtain credentials from the
  [CreateParticipantConnection](https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html)
  API in the Amazon Connect Participant Service. When a new chat contact is
  successfully created, clients must subscribe to the participant’s connection
  for the created chat within 5 minutes. This is achieved by invoking
  [CreateParticipantConnection](https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html)
  with WEBSOCKET and CONNECTION_CREDENTIALS. A 429 error occurs in the following
  situations:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20StartChatContact&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec start_chat_contact(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_chat_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_chat_contact_errors()}
  def start_chat_contact(%Client{} = client, options \\ []) do
    url_path = "/contact/chat"

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

  @doc """
  Starts an empty evaluation in the specified Amazon Connect instance, using the
  given evaluation form for the particular contact. The evaluation form version
  used for the contact evaluation corresponds to the currently activated
  version. If no version is activated for the evaluation form, the contact
  evaluation cannot be started.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20StartContactEvaluation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec start_contact_evaluation(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, start_contact_evaluation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_contact_evaluation_errors()}
  def start_contact_evaluation(%Client{} = client, instance_id, options \\ []) do
    url_path = "/contact-evaluations/#{AWS.Util.encode_uri(instance_id)}"

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

  @doc """
  Starts recording the contact:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20StartContactRecording&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec start_contact_recording(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_contact_recording_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_contact_recording_errors()}
  def start_contact_recording(%Client{} = client, options \\ []) do
    url_path = "/contact/start-recording"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Initiates real-time message streaming for a new chat contact. For more
  information about message streaming, see [Enable real-time chat message
  streaming](https://docs.aws.amazon.com/connect/latest/adminguide/chat-message-streaming.html)
  in the *Amazon Connect Administrator Guide*. For more information about chat,
  see the following topics in the *Amazon Connect Administrator Guide*:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20StartContactStreaming&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec start_contact_streaming(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_contact_streaming_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_contact_streaming_errors()}
  def start_contact_streaming(%Client{} = client, options \\ []) do
    url_path = "/contact/start-streaming"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Places an outbound call to a contact, and then initiates the flow. It performs
  the actions in the flow that's specified (in `ContactFlowId`). Agents do not
  initiate the outbound API, which means that they do not dial the contact. If
  the flow places an outbound call to a contact, and then puts the contact in
  queue, the call is then routed to the agent, like any other inbound case.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20StartOutboundVoiceContact&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec start_outbound_voice_contact(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_outbound_voice_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_outbound_voice_contact_errors()}
  def start_outbound_voice_contact(%Client{} = client, options \\ []) do
    url_path = "/contact/outbound-voice"

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

  @doc """
  Initiates a flow to start a new task contact. For more information about task
  contacts, see [Concepts: Tasks in Amazon
  Connect](https://docs.aws.amazon.com/connect/latest/adminguide/tasks.html) in
  the *Amazon Connect Administrator Guide*. When using `PreviousContactId` and
  `RelatedContactId` input parameters, note the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20StartTaskContact&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec start_task_contact(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_task_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_task_contact_errors()}
  def start_task_contact(%Client{} = client, options \\ []) do
    url_path = "/contact/task"

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

  @doc """
  Places an inbound in-app, web, or video call to a contact, and then initiates
  the flow. It performs the actions in the flow that are specified (in
  ContactFlowId) and present in the Amazon Connect instance (specified as
  InstanceId).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20StartWebRTCContact&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec start_web_r_t_c_contact(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_web_r_t_c_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_web_r_t_c_contact_errors()}
  def start_web_r_t_c_contact(%Client{} = client, options \\ []) do
    url_path = "/contact/webrtc"

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

  @doc """
  Ends the specified contact. Use this API to stop queued callbacks. It does not
  work for voice contacts that use the following initiation methods:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20StopContact&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec stop_contact(AWS.Client.t(), Keyword.t()) ::
          {:ok, stop_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_contact_errors()}
  def stop_contact(%Client{} = client, options \\ []) do
    url_path = "/contact/stop"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Stops recording a call when a contact is being recorded. StopContactRecording is
  a one-time action. If you use StopContactRecording to stop recording an
  ongoing call, you can't use StartContactRecording to restart it. For scenarios
  where the recording has started and you want to suspend it for sensitive
  information (for example, to collect a credit card number), and then restart
  it, use SuspendContactRecording and ResumeContactRecording.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20StopContactRecording&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec stop_contact_recording(AWS.Client.t(), Keyword.t()) ::
          {:ok, stop_contact_recording_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_contact_recording_errors()}
  def stop_contact_recording(%Client{} = client, options \\ []) do
    url_path = "/contact/stop-recording"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Ends message streaming on a specified contact. To restart message streaming on
  that contact, call the
  [StartContactStreaming](https://docs.aws.amazon.com/connect/latest/APIReference/API_StartContactStreaming.html)
  API.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20StopContactStreaming&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec stop_contact_streaming(AWS.Client.t(), Keyword.t()) ::
          {:ok, stop_contact_streaming_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_contact_streaming_errors()}
  def stop_contact_streaming(%Client{} = client, options \\ []) do
    url_path = "/contact/stop-streaming"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Submits a contact evaluation in the specified Amazon Connect instance. Answers
  included in the request are merged with existing answers for the given
  evaluation. If no answers or notes are passed, the evaluation is submitted
  with the existing answers and notes. You can delete an answer or note by
  passing an empty object (`{}`) to the question identifier.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20SubmitContactEvaluation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:evaluation_id` (`t:string` required) A unique identifier for the contact
  evaluation.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec submit_contact_evaluation(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, submit_contact_evaluation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, submit_contact_evaluation_errors()}
  def submit_contact_evaluation(%Client{} = client, evaluation_id, instance_id, options \\ []) do
    url_path =
      "/contact-evaluations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(evaluation_id)}/submit"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  When a contact is being recorded, this API suspends recording whatever is
  selected in the flow configuration: call, screen, or both. If only call
  recording or only screen recording is enabled, then it would be suspended. For
  example, you might suspend the screen recording while collecting sensitive
  information, such as a credit card number. Then use ResumeContactRecording to
  restart recording the screen. The period of time that the recording is
  suspended is filled with silence in the final recording.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20SuspendContactRecording&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec suspend_contact_recording(AWS.Client.t(), Keyword.t()) ::
          {:ok, suspend_contact_recording_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, suspend_contact_recording_errors()}
  def suspend_contact_recording(%Client{} = client, options \\ []) do
    url_path = "/contact/suspend-recording"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Adds the specified tags to the contact resource. For more information about this
  API is used, see [Set up granular billing for a detailed view of your Amazon
  Connect
  usage](https://docs.aws.amazon.com/connect/latest/adminguide/granular-billing.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20TagContact&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec tag_contact(AWS.Client.t(), Keyword.t()) ::
          {:ok, tag_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_contact_errors()}
  def tag_contact(%Client{} = client, options \\ []) do
    url_path = "/contact/tags"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Adds the specified tags to the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
  resource.
  ## Keyword parameters:
  """
  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Transfers contacts from one agent or queue to another agent or queue at any
  point after a contact is created. You can transfer a contact to another queue
  by providing the flow which orchestrates the contact to the destination queue.
  This gives you more control over contact handling and helps you adhere to the
  service level agreement (SLA) guaranteed to your customers. Note the following
  requirements:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20TransferContact&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec transfer_contact(AWS.Client.t(), Keyword.t()) ::
          {:ok, transfer_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, transfer_contact_errors()}
  def transfer_contact(%Client{} = client, options \\ []) do
    url_path = "/contact/transfer"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Removes the specified tags from the contact resource. For more information about
  this API is used, see [Set up granular billing for a detailed view of your
  Amazon Connect
  usage](https://docs.aws.amazon.com/connect/latest/adminguide/granular-billing.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UntagContact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_id` (`t:string` required) The identifier of the contact in this
  instance of Amazon Connect.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:tag_keys` (`t:list[com.amazonaws.connect#ContactTagKey]` required) A list of
  tag keys. Existing tags on the contact whose keys are members of this list
  will be removed.
  ## Keyword parameters:
  """
  @spec untag_contact(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, untag_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_contact_errors()}
  def untag_contact(%Client{} = client, contact_id, instance_id, tag_keys, options \\ [])
      when is_binary(tag_keys) do
    url_path =
      "/contact/tags/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_id)}"

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
    query_params = [{"TagKeys", tag_keys}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Removes the specified tags from the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
  resource.
  * `:tag_keys` (`t:list[com.amazonaws.connect#TagKey]` required) The tag keys.
  ## Keyword parameters:
  """
  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, tag_keys, options \\ [])
      when is_binary(tag_keys) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
    query_params = [{"tagKeys", tag_keys}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateAgentStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:agent_status_id` (`t:string` required) The identifier of the agent status.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec update_agent_status(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_agent_status_errors()}
  def update_agent_status(%Client{} = client, agent_status_id, instance_id, options \\ []) do
    url_path =
      "/agent-status/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(agent_status_id)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change. To
  request access to this API, contact Amazon Web Services Support.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateAuthenticationProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:authentication_profile_id` (`t:string` required) A unique identifier for the
  authentication profile.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec update_authentication_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_authentication_profile_errors()}
  def update_authentication_profile(
        %Client{} = client,
        authentication_profile_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/authentication-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(authentication_profile_id)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change. Adds
  or updates user-defined contact information associated with the specified
  contact. At least one field to be updated must be present in the request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateContact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_id` (`t:string` required) The identifier of the contact. This is the
  identifier of the contact associated with the first interaction with your
  contact center.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec update_contact(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_contact_errors()}
  def update_contact(%Client{} = client, contact_id, instance_id, options \\ []) do
    url_path = "/contacts/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_id)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates or updates user-defined contact attributes associated with the specified
  contact. You can create or update user-defined attributes for both ongoing and
  completed contacts. For example, while the call is active, you can update the
  customer's name or the reason the customer called. You can add notes about
  steps that the agent took during the call that display to the next agent that
  takes the call. You can also update attributes for a contact using data from
  your CRM application and save the data with the contact in Amazon Connect. You
  could also flag calls for additional analysis, such as legal review or to
  identify abusive callers.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateContactAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec update_contact_attributes(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_contact_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_contact_attributes_errors()}
  def update_contact_attributes(%Client{} = client, options \\ []) do
    url_path = "/contact/attributes"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates details about a contact evaluation in the specified Amazon Connect
  instance. A contact evaluation must be in draft state. Answers included in the
  request are merged with existing answers for the given evaluation. An answer
  or note can be deleted by passing an empty object (`{}`) to the question
  identifier.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateContactEvaluation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:evaluation_id` (`t:string` required) A unique identifier for the contact
  evaluation.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec update_contact_evaluation(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_contact_evaluation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_contact_evaluation_errors()}
  def update_contact_evaluation(%Client{} = client, evaluation_id, instance_id, options \\ []) do
    url_path =
      "/contact-evaluations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(evaluation_id)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the specified flow. You can also create and update flows using the
  [Amazon Connect Flow
  language](https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateContactFlowContent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_flow_id` (`t:string` required) The identifier of the flow.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance.
  ## Keyword parameters:
  """
  @spec update_contact_flow_content(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_contact_flow_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_contact_flow_content_errors()}
  def update_contact_flow_content(%Client{} = client, contact_flow_id, instance_id, options \\ []) do
    url_path =
      "/contact-flows/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_id)}/content"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates metadata about specified flow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateContactFlowMetadata&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_flow_id` (`t:string` required) The identifier of the flow.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec update_contact_flow_metadata(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_contact_flow_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_contact_flow_metadata_errors()}
  def update_contact_flow_metadata(
        %Client{} = client,
        contact_flow_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/contact-flows/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_id)}/metadata"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates specified flow module for the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateContactFlowModuleContent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_flow_module_id` (`t:string` required) The identifier of the flow
  module.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec update_contact_flow_module_content(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_contact_flow_module_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_contact_flow_module_content_errors()}
  def update_contact_flow_module_content(
        %Client{} = client,
        contact_flow_module_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/contact-flow-modules/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_module_id)}/content"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates metadata about specified flow module.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateContactFlowModuleMetadata&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_flow_module_id` (`t:string` required) The identifier of the flow
  module.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec update_contact_flow_module_metadata(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_contact_flow_module_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_contact_flow_module_metadata_errors()}
  def update_contact_flow_module_metadata(
        %Client{} = client,
        contact_flow_module_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/contact-flow-modules/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_module_id)}/metadata"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  The name of the flow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateContactFlowName&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_flow_id` (`t:string` required) The identifier of the flow.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance.
  ## Keyword parameters:
  """
  @spec update_contact_flow_name(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_contact_flow_name_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_contact_flow_name_errors()}
  def update_contact_flow_name(%Client{} = client, contact_flow_id, instance_id, options \\ []) do
    url_path =
      "/contact-flows/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_id)}/name"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates routing priority and age on the contact (**QueuePriority** and
  **QueueTimeAdjustmentInSeconds**). These properties can be used to change a
  customer's position in the queue. For example, you can move a contact to the
  back of the queue by setting a lower routing priority relative to other
  contacts in queue; or you can move a contact to the front of the queue by
  increasing the routing age which will make the contact look artificially older
  and therefore higher up in the first-in-first-out routing order. Note that
  adjusting the routing age of a contact affects only its position in queue, and
  not its actual queue wait time as reported through metrics. These properties
  can also be updated by using [the Set routing priority / age flow
  block](https://docs.aws.amazon.com/connect/latest/adminguide/change-routing-priority.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateContactRoutingData&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_id` (`t:string` required) The identifier of the contact in this
  instance of Amazon Connect.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec update_contact_routing_data(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_contact_routing_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_contact_routing_data_errors()}
  def update_contact_routing_data(%Client{} = client, contact_id, instance_id, options \\ []) do
    url_path =
      "/contacts/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_id)}/routing-data"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the scheduled time of a task contact that is already scheduled.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateContactSchedule&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec update_contact_schedule(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_contact_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_contact_schedule_errors()}
  def update_contact_schedule(%Client{} = client, options \\ []) do
    url_path = "/contact/schedule"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates details about a specific evaluation form version in the specified Amazon
  Connect instance. Question and section identifiers cannot be duplicated within
  the same evaluation form.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateEvaluationForm&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:evaluation_form_id` (`t:string` required) The unique identifier for the
  evaluation form.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec update_evaluation_form(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_evaluation_form_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_evaluation_form_errors()}
  def update_evaluation_form(%Client{} = client, evaluation_form_id, instance_id, options \\ []) do
    url_path =
      "/evaluation-forms/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(evaluation_form_id)}"

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

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateHoursOfOperation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:hours_of_operation_id` (`t:string` required) The identifier of the hours of
  operation.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec update_hours_of_operation(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_hours_of_operation_errors()}
  def update_hours_of_operation(
        %Client{} = client,
        hours_of_operation_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/hours-of-operations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hours_of_operation_id)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateInstanceAttribute&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:attribute_type`
  (`t:enum["AUTO_RESOLVE_BEST_VOICES|CONTACTFLOW_LOGS|CONTACT_LENS|EARLY_MEDIA|ENHANCED_CHAT_MONITORING|ENHANCED_CONTACT_MONITORING|HIGH_VOLUME_OUTBOUND|INBOUND_CALLS|MULTI_PARTY_CONFERENCE|OUTBOUND_CALLS|USE_CUSTOM_TTS_VOICES"]`
  required) The type of attribute.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec update_instance_attribute(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_instance_attribute_errors()}
  def update_instance_attribute(%Client{} = client, attribute_type, instance_id, options \\ []) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/attribute/#{AWS.Util.encode_uri(attribute_type)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateInstanceStorageConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:association_id` (`t:string` required) The existing association identifier
  that uniquely identifies the resource type and storage config for the given
  instance ID.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:resource_type`
  (`t:enum["AGENT_EVENTS|ATTACHMENTS|CALL_RECORDINGS|CHAT_TRANSCRIPTS|CONTACT_EVALUATIONS|CONTACT_TRACE_RECORDS|MEDIA_STREAMS|REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS|REAL_TIME_CONTACT_ANALYSIS_SEGMENTS|REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS|SCHEDULED_REPORTS|SCREEN_RECORDINGS"]`
  required) A valid resource type.
  ## Keyword parameters:
  """
  @spec update_instance_storage_config(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_instance_storage_config_errors()}
  def update_instance_storage_config(
        %Client{} = client,
        association_id,
        instance_id,
        resource_type,
        options \\ []
      )
      when is_binary(resource_type) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/storage-config/#{AWS.Util.encode_uri(association_id)}"

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
    query_params = [{"resourceType", resource_type}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates timeouts for when human chat participants are to be considered idle, and
  when agents are automatically disconnected from a chat due to idleness. You
  can set four timers:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateParticipantRoleConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:contact_id` (`t:string` required) The identifier of the contact in this
  instance of Amazon Connect.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec update_participant_role_config(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_participant_role_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_participant_role_config_errors()}
  def update_participant_role_config(%Client{} = client, contact_id, instance_id, options \\ []) do
    url_path =
      "/contact/participant-role-config/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_id)}"

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

  @doc """
  Updates your claimed phone number from its current Amazon Connect instance or
  traffic distribution group to another Amazon Connect instance or traffic
  distribution group in the same Amazon Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdatePhoneNumber&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:phone_number_id` (`t:string` required) A unique identifier for the phone
  number.
  ## Keyword parameters:
  """
  @spec update_phone_number(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_phone_number_errors()}
  def update_phone_number(%Client{} = client, phone_number_id, options \\ []) do
    url_path = "/phone-number/#{AWS.Util.encode_uri(phone_number_id)}"

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

  @doc """
  Updates a phone number’s metadata.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdatePhoneNumberMetadata&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:phone_number_id` (`t:string` required) The Amazon Resource Name (ARN) or
  resource ID of the phone number.
  ## Keyword parameters:
  """
  @spec update_phone_number_metadata(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_phone_number_metadata_errors()}
  def update_phone_number_metadata(%Client{} = client, phone_number_id, options \\ []) do
    url_path = "/phone-number/#{AWS.Util.encode_uri(phone_number_id)}/metadata"

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

  @doc """
  Updates a predefined attribute for the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdatePredefinedAttribute&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:name` (`t:string` required) The name of the predefined attribute.
  ## Keyword parameters:
  """
  @spec update_predefined_attribute(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_predefined_attribute_errors()}
  def update_predefined_attribute(%Client{} = client, instance_id, name, options \\ []) do
    url_path =
      "/predefined-attributes/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(name)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates a prompt.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdatePrompt&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:prompt_id` (`t:string` required) A unique identifier for the prompt.
  ## Keyword parameters:
  """
  @spec update_prompt(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_prompt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_prompt_errors()}
  def update_prompt(%Client{} = client, instance_id, prompt_id, options \\ []) do
    url_path = "/prompts/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(prompt_id)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateQueueHoursOfOperation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:queue_id` (`t:string` required) The identifier for the queue.
  ## Keyword parameters:
  """
  @spec update_queue_hours_of_operation(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_queue_hours_of_operation_errors()}
  def update_queue_hours_of_operation(%Client{} = client, instance_id, queue_id, options \\ []) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/hours-of-operation"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateQueueMaxContacts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:queue_id` (`t:string` required) The identifier for the queue.
  ## Keyword parameters:
  """
  @spec update_queue_max_contacts(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_queue_max_contacts_errors()}
  def update_queue_max_contacts(%Client{} = client, instance_id, queue_id, options \\ []) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/max-contacts"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateQueueName&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:queue_id` (`t:string` required) The identifier for the queue.
  ## Keyword parameters:
  """
  @spec update_queue_name(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_queue_name_errors()}
  def update_queue_name(%Client{} = client, instance_id, queue_id, options \\ []) do
    url_path = "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/name"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.
  Updates the outbound caller ID name, number, and outbound whisper flow for a
  specified queue.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateQueueOutboundCallerConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:queue_id` (`t:string` required) The identifier for the queue.
  ## Keyword parameters:
  """
  @spec update_queue_outbound_caller_config(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_queue_outbound_caller_config_errors()}
  def update_queue_outbound_caller_config(
        %Client{} = client,
        instance_id,
        queue_id,
        options \\ []
      ) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/outbound-caller-config"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateQueueStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:queue_id` (`t:string` required) The identifier for the queue.
  ## Keyword parameters:
  """
  @spec update_queue_status(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_queue_status_errors()}
  def update_queue_status(%Client{} = client, instance_id, queue_id, options \\ []) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/status"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the configuration settings for the specified quick connect.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateQuickConnectConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:quick_connect_id` (`t:string` required) The identifier for the quick
  connect.
  ## Keyword parameters:
  """
  @spec update_quick_connect_config(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_quick_connect_config_errors()}
  def update_quick_connect_config(
        %Client{} = client,
        instance_id,
        quick_connect_id,
        options \\ []
      ) do
    url_path =
      "/quick-connects/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(quick_connect_id)}/config"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the name and description of a quick connect. The request accepts the
  following data in JSON format. At least `Name` or `Description` must be
  provided.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateQuickConnectName&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:quick_connect_id` (`t:string` required) The identifier for the quick
  connect.
  ## Keyword parameters:
  """
  @spec update_quick_connect_name(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_quick_connect_name_errors()}
  def update_quick_connect_name(%Client{} = client, instance_id, quick_connect_id, options \\ []) do
    url_path =
      "/quick-connects/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(quick_connect_id)}/name"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Whether agents with this routing profile will have their routing order
  calculated based on *time since their last inbound contact* or *longest idle
  time*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateRoutingProfileAgentAvailabilityTimer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:routing_profile_id` (`t:string` required) The identifier of the routing
  profile.
  ## Keyword parameters:
  """
  @spec update_routing_profile_agent_availability_timer(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_routing_profile_agent_availability_timer_errors()}
  def update_routing_profile_agent_availability_timer(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/agent-availability-timer"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the channels that agents can handle in the Contact Control Panel (CCP)
  for a routing profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateRoutingProfileConcurrency&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:routing_profile_id` (`t:string` required) The identifier of the routing
  profile.
  ## Keyword parameters:
  """
  @spec update_routing_profile_concurrency(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_routing_profile_concurrency_errors()}
  def update_routing_profile_concurrency(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/concurrency"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the default outbound queue of a routing profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateRoutingProfileDefaultOutboundQueue&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:routing_profile_id` (`t:string` required) The identifier of the routing
  profile.
  ## Keyword parameters:
  """
  @spec update_routing_profile_default_outbound_queue(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_routing_profile_default_outbound_queue_errors()}
  def update_routing_profile_default_outbound_queue(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/default-outbound-queue"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the name and description of a routing profile. The request accepts the
  following data in JSON format. At least `Name` or `Description` must be
  provided.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateRoutingProfileName&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:routing_profile_id` (`t:string` required) The identifier of the routing
  profile.
  ## Keyword parameters:
  """
  @spec update_routing_profile_name(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_routing_profile_name_errors()}
  def update_routing_profile_name(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/name"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the properties associated with a set of queues for a routing profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateRoutingProfileQueues&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:routing_profile_id` (`t:string` required) The identifier of the routing
  profile.
  ## Keyword parameters:
  """
  @spec update_routing_profile_queues(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_routing_profile_queues_errors()}
  def update_routing_profile_queues(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/queues"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates a rule for the specified Amazon Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:rule_id` (`t:string` required) A unique identifier for the rule.
  ## Keyword parameters:
  """
  @spec update_rule(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_rule_errors()}
  def update_rule(%Client{} = client, instance_id, rule_id, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(rule_id)}"

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

  @doc """
  Updates a security profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateSecurityProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:security_profile_id` (`t:string` required) The identifier for the security
  profle.
  ## Keyword parameters:
  """
  @spec update_security_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_security_profile_errors()}
  def update_security_profile(%Client{} = client, instance_id, security_profile_id, options \\ []) do
    url_path =
      "/security-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(security_profile_id)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates details about a specific task template in the specified Amazon Connect
  instance. This operation does not support partial updates. Instead it does a
  full update of template content.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateTaskTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:task_template_id` (`t:string` required) A unique identifier for the task
  template.
  ## Keyword parameters:
  """
  @spec update_task_template(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_task_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_task_template_errors()}
  def update_task_template(%Client{} = client, instance_id, task_template_id, options \\ []) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/task/template/#{AWS.Util.encode_uri(task_template_id)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the traffic distribution for a given traffic distribution group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateTrafficDistribution&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string` required) The identifier of the traffic distribution group.
  This can be the ID or the ARN if the API is being called in the Region where
  the traffic distribution group was created. The ARN must be provided if the
  call is from the replicated Region.
  ## Keyword parameters:
  """
  @spec update_traffic_distribution(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_traffic_distribution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_traffic_distribution_errors()}
  def update_traffic_distribution(%Client{} = client, id, options \\ []) do
    url_path = "/traffic-distribution/#{AWS.Util.encode_uri(id)}"

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

  @doc """
  Assigns the specified hierarchy group to the specified user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateUserHierarchy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:user_id` (`t:string` required) The identifier of the user account.
  ## Keyword parameters:
  """
  @spec update_user_hierarchy(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_hierarchy_errors()}
  def update_user_hierarchy(%Client{} = client, instance_id, user_id, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/hierarchy"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the name of the user hierarchy group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateUserHierarchyGroupName&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:hierarchy_group_id` (`t:string` required) The identifier of the hierarchy
  group.
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec update_user_hierarchy_group_name(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_hierarchy_group_name_errors()}
  def update_user_hierarchy_group_name(
        %Client{} = client,
        hierarchy_group_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/user-hierarchy-groups/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hierarchy_group_id)}/name"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the user hierarchy structure: add, remove, and rename user hierarchy
  levels.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateUserHierarchyStructure&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  ## Keyword parameters:
  """
  @spec update_user_hierarchy_structure(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_hierarchy_structure_errors()}
  def update_user_hierarchy_structure(%Client{} = client, instance_id, options \\ []) do
    url_path = "/user-hierarchy-structure/#{AWS.Util.encode_uri(instance_id)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the identity information for the specified user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateUserIdentityInfo&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:user_id` (`t:string` required) The identifier of the user account.
  ## Keyword parameters:
  """
  @spec update_user_identity_info(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_identity_info_errors()}
  def update_user_identity_info(%Client{} = client, instance_id, user_id, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/identity-info"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the phone configuration settings for the specified user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateUserPhoneConfig&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:user_id` (`t:string` required) The identifier of the user account.
  ## Keyword parameters:
  """
  @spec update_user_phone_config(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_phone_config_errors()}
  def update_user_phone_config(%Client{} = client, instance_id, user_id, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/phone-config"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the properties associated with the proficiencies of a user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateUserProficiencies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:user_id` (`t:string` required) The identifier of the user account.
  ## Keyword parameters:
  """
  @spec update_user_proficiencies(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_proficiencies_errors()}
  def update_user_proficiencies(%Client{} = client, instance_id, user_id, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/proficiencies"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Assigns the specified routing profile to the specified user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateUserRoutingProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:user_id` (`t:string` required) The identifier of the user account.
  ## Keyword parameters:
  """
  @spec update_user_routing_profile(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_routing_profile_errors()}
  def update_user_routing_profile(%Client{} = client, instance_id, user_id, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/routing-profile"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Assigns the specified security profiles to the specified user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateUserSecurityProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instance ID in the Amazon Resource Name (ARN) of
  the instance.
  * `:user_id` (`t:string` required) The identifier of the user account.
  ## Keyword parameters:
  """
  @spec update_user_security_profiles(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_security_profiles_errors()}
  def update_user_security_profiles(%Client{} = client, instance_id, user_id, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/security-profiles"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the view content of the given view identifier in the specified Amazon
  Connect instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateViewContent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instanceId in the ARN of the instance.
  * `:view_id` (`t:string` required) The identifier of the view. Both ViewArn and
  ViewId can be used.
  ## Keyword parameters:
  """
  @spec update_view_content(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_view_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_view_content_errors()}
  def update_view_content(%Client{} = client, instance_id, view_id, options \\ []) do
    url_path = "/views/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(view_id)}"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the view metadata. Note that either `Name` or `Description` must be
  provided.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connect%20UpdateViewMetadata&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string` required) The identifier of the Amazon Connect
  instance. You can find the instanceId in the ARN of the instance.
  * `:view_id` (`t:string` required) The identifier of the view. Both ViewArn and
  ViewId can be used.
  ## Keyword parameters:
  """
  @spec update_view_metadata(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_view_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_view_metadata_errors()}
  def update_view_metadata(%Client{} = client, instance_id, view_id, options \\ []) do
    url_path =
      "/views/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(view_id)}/metadata"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end
end
