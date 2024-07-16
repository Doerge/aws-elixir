# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CustomerProfiles do
  @moduledoc """
  Amazon Connect Customer Profiles Amazon Connect Customer Profiles is a unified
  customer profile for your contact center that has pre-built connectors powered
  by AppFlow that make it easy to combine customer information from third party
  applications, such as Salesforce (CRM), ServiceNow (ITSM), and your enterprise
  resource planning (ERP), with contact history from your Amazon Connect contact
  center.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      profile() :: %{
        "AccountNumber" => String.t(),
        "AdditionalInformation" => String.t(),
        "Address" => address(),
        "Attributes" => map(),
        "BillingAddress" => address(),
        "BirthDate" => String.t(),
        "BusinessEmailAddress" => String.t(),
        "BusinessName" => String.t(),
        "BusinessPhoneNumber" => String.t(),
        "EmailAddress" => String.t(),
        "FirstName" => String.t(),
        "FoundByItems" => list(found_by_key_value()()),
        "Gender" => list(any()),
        "GenderString" => String.t(),
        "HomePhoneNumber" => String.t(),
        "LastName" => String.t(),
        "MailingAddress" => address(),
        "MiddleName" => String.t(),
        "MobilePhoneNumber" => String.t(),
        "PartyType" => list(any()),
        "PartyTypeString" => String.t(),
        "PersonalEmailAddress" => String.t(),
        "PhoneNumber" => String.t(),
        "ProfileId" => String.t(),
        "ShippingAddress" => address()
      }

  """
  @type profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      integration_config() :: %{
        "AppflowIntegration" => appflow_integration()
      }

  """
  @type integration_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_profile_object_type_item() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "LastUpdatedAt" => non_neg_integer(),
        "MaxAvailableProfileObjectCount" => integer(),
        "MaxProfileObjectCount" => integer(),
        "ObjectTypeName" => String.t(),
        "Tags" => map()
      }

  """
  @type list_profile_object_type_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      auto_merging() :: %{
        "ConflictResolution" => conflict_resolution(),
        "Consolidation" => consolidation(),
        "Enabled" => boolean(),
        "MinAllowedConfidenceScoreForMerging" => float()
      }

  """
  @type auto_merging() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_calculated_attribute_definition_response() :: %{
        "AttributeDetails" => attribute_details(),
        "CalculatedAttributeName" => String.t(),
        "Conditions" => conditions(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "DisplayName" => String.t(),
        "LastUpdatedAt" => non_neg_integer(),
        "Statistic" => list(any()),
        "Tags" => map()
      }

  """
  @type create_calculated_attribute_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_domain_request() :: %{}

  """
  @type get_domain_request() :: %{}

  @typedoc """

  ## Example:

      put_profile_object_type_response() :: %{
        "AllowProfileCreation" => boolean(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "EncryptionKey" => String.t(),
        "ExpirationDays" => integer(),
        "Fields" => map(),
        "Keys" => map(),
        "LastUpdatedAt" => non_neg_integer(),
        "MaxAvailableProfileObjectCount" => integer(),
        "MaxProfileObjectCount" => integer(),
        "ObjectTypeName" => String.t(),
        "SourceLastUpdatedTimestampFormat" => String.t(),
        "Tags" => map(),
        "TemplateId" => String.t()
      }

  """
  @type put_profile_object_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_domain_response() :: %{
        "Message" => String.t()
      }

  """
  @type delete_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_profile_object_response() :: %{
        "ProfileObjectUniqueKey" => String.t()
      }

  """
  @type put_profile_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_schedule() :: %{
        "DayOfTheWeek" => list(any()),
        "Time" => String.t()
      }

  """
  @type job_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_integration_response() :: %{
        "Message" => String.t()
      }

  """
  @type delete_integration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      task() :: %{
        "ConnectorOperator" => connector_operator(),
        "DestinationField" => String.t(),
        "SourceFields" => list(String.t()()),
        "TaskProperties" => map(),
        "TaskType" => list(any())
      }

  """
  @type task() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_domain_request() :: %{
        optional("DeadLetterQueueUrl") => String.t(),
        optional("DefaultEncryptionKey") => String.t(),
        optional("DefaultExpirationDays") => integer(),
        optional("Matching") => matching_request(),
        optional("RuleBasedMatching") => rule_based_matching_request(),
        optional("Tags") => map()
      }

  """
  @type update_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scheduled_trigger_properties() :: %{
        "DataPullMode" => list(any()),
        "FirstExecutionFrom" => non_neg_integer(),
        "ScheduleEndTime" => non_neg_integer(),
        "ScheduleExpression" => String.t(),
        "ScheduleOffset" => float(),
        "ScheduleStartTime" => non_neg_integer(),
        "Timezone" => String.t()
      }

  """
  @type scheduled_trigger_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      range() :: %{
        "Unit" => list(any()),
        "Value" => integer()
      }

  """
  @type range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_profile_key_response() :: %{
        "Message" => String.t()
      }

  """
  @type delete_profile_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_profile_object_type_template_item() :: %{
        "SourceName" => String.t(),
        "SourceObject" => String.t(),
        "TemplateId" => String.t()
      }

  """
  @type list_profile_object_type_template_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attribute_details() :: %{
        "Attributes" => list(attribute_item()()),
        "Expression" => String.t()
      }

  """
  @type attribute_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      detect_profile_object_type_response() :: %{
        "DetectedProfileObjectTypes" => list(detected_profile_object_type()())
      }

  """
  @type detect_profile_object_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_identity_resolution_jobs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_identity_resolution_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_stats() :: %{
        "NumberOfMatchesFound" => float(),
        "NumberOfMergesDone" => float(),
        "NumberOfProfilesReviewed" => float()
      }

  """
  @type job_stats() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      marketo_source_properties() :: %{
        "Object" => String.t()
      }

  """
  @type marketo_source_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_profile_object_type_response() :: %{
        "AllowProfileCreation" => boolean(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "EncryptionKey" => String.t(),
        "ExpirationDays" => integer(),
        "Fields" => map(),
        "Keys" => map(),
        "LastUpdatedAt" => non_neg_integer(),
        "MaxAvailableProfileObjectCount" => integer(),
        "MaxProfileObjectCount" => integer(),
        "ObjectTypeName" => String.t(),
        "SourceLastUpdatedTimestampFormat" => String.t(),
        "Tags" => map(),
        "TemplateId" => String.t()
      }

  """
  @type get_profile_object_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attribute_item() :: %{
        "Name" => String.t()
      }

  """
  @type attribute_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_calculated_attribute_for_profile_request() :: %{}

  """
  @type get_calculated_attribute_for_profile_request() :: %{}

  @typedoc """

  ## Example:

      conflict_resolution() :: %{
        "ConflictResolvingModel" => list(any()),
        "SourceName" => String.t()
      }

  """
  @type conflict_resolution() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_profile_request() :: %{
        required("ProfileId") => String.t()
      }

  """
  @type delete_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      domain_stats() :: %{
        "MeteringProfileCount" => float(),
        "ObjectCount" => float(),
        "ProfileCount" => float(),
        "TotalSize" => float()
      }

  """
  @type domain_stats() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_workflow_request() :: %{}

  """
  @type delete_workflow_request() :: %{}

  @typedoc """

  ## Example:

      list_account_integrations_request() :: %{
        optional("IncludeHidden") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Uri") => String.t()
      }

  """
  @type list_account_integrations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      object_filter() :: %{
        "KeyName" => String.t(),
        "Values" => list(String.t()())
      }

  """
  @type object_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_source_properties() :: %{
        "BucketName" => String.t(),
        "BucketPrefix" => String.t()
      }

  """
  @type s3_source_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      found_by_key_value() :: %{
        "KeyName" => String.t(),
        "Values" => list(String.t()())
      }

  """
  @type found_by_key_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_domain_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "DeadLetterQueueUrl" => String.t(),
        "DefaultEncryptionKey" => String.t(),
        "DefaultExpirationDays" => integer(),
        "DomainName" => String.t(),
        "LastUpdatedAt" => non_neg_integer(),
        "Matching" => matching_response(),
        "RuleBasedMatching" => rule_based_matching_response(),
        "Tags" => map()
      }

  """
  @type update_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      merge_profiles_response() :: %{
        "Message" => String.t()
      }

  """
  @type merge_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_profile_response() :: %{
        "Message" => String.t()
      }

  """
  @type delete_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_identity_resolution_job_request() :: %{}

  """
  @type get_identity_resolution_job_request() :: %{}

  @typedoc """

  ## Example:

      appflow_integration_workflow_step() :: %{
        "BatchRecordsEndTime" => String.t(),
        "BatchRecordsStartTime" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "ExecutionMessage" => String.t(),
        "FlowName" => String.t(),
        "LastUpdatedAt" => non_neg_integer(),
        "RecordsProcessed" => float(),
        "Status" => list(any())
      }

  """
  @type appflow_integration_workflow_step() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      detect_profile_object_type_request() :: %{
        required("Objects") => list(String.t()())
      }

  """
  @type detect_profile_object_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      exporting_location() :: %{
        "S3Exporting" => s3_exporting_location()
      }

  """
  @type exporting_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_similar_profiles_response() :: %{
        "ConfidenceScore" => float(),
        "MatchId" => String.t(),
        "MatchType" => list(any()),
        "NextToken" => String.t(),
        "ProfileIds" => list(String.t()()),
        "RuleLevel" => integer()
      }

  """
  @type get_similar_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_integration_request() :: %{
        optional("FlowDefinition") => flow_definition(),
        optional("ObjectTypeName") => String.t(),
        optional("ObjectTypeNames") => map(),
        optional("Tags") => map(),
        optional("Uri") => String.t()
      }

  """
  @type put_integration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flow_definition() :: %{
        "Description" => String.t(),
        "FlowName" => String.t(),
        "KmsArn" => String.t(),
        "SourceFlowConfig" => source_flow_config(),
        "Tasks" => list(task()()),
        "TriggerConfig" => trigger_config()
      }

  """
  @type flow_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_rule_based_matches_response() :: %{
        "MatchIds" => list(String.t()()),
        "NextToken" => String.t()
      }

  """
  @type list_rule_based_matches_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      appflow_integration_workflow_attributes() :: %{
        "ConnectorProfileName" => String.t(),
        "RoleArn" => String.t(),
        "SourceConnectorType" => list(any())
      }

  """
  @type appflow_integration_workflow_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_profile_key_response() :: %{
        "KeyName" => String.t(),
        "Values" => list(String.t()())
      }

  """
  @type add_profile_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_identity_resolution_jobs_response() :: %{
        "IdentityResolutionJobsList" => list(identity_resolution_job()()),
        "NextToken" => String.t()
      }

  """
  @type list_identity_resolution_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      matching_rule() :: %{
        "Rule" => list(String.t()())
      }

  """
  @type matching_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_integration_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "DomainName" => String.t(),
        "IsUnstructured" => boolean(),
        "LastUpdatedAt" => non_neg_integer(),
        "ObjectTypeName" => String.t(),
        "ObjectTypeNames" => map(),
        "Tags" => map(),
        "Uri" => String.t(),
        "WorkflowId" => String.t()
      }

  """
  @type put_integration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      zendesk_source_properties() :: %{
        "Object" => String.t()
      }

  """
  @type zendesk_source_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_integration_workflow_request() :: %{
        optional("Tags") => map(),
        required("IntegrationConfig") => integration_config(),
        required("ObjectTypeName") => String.t(),
        required("RoleArn") => String.t(),
        required("WorkflowType") => list(any())
      }

  """
  @type create_integration_workflow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_identity_resolution_job_response() :: %{
        "AutoMerging" => auto_merging(),
        "DomainName" => String.t(),
        "ExportingLocation" => exporting_location(),
        "JobEndTime" => non_neg_integer(),
        "JobExpirationTime" => non_neg_integer(),
        "JobId" => String.t(),
        "JobStartTime" => non_neg_integer(),
        "JobStats" => job_stats(),
        "LastUpdatedAt" => non_neg_integer(),
        "Message" => String.t(),
        "Status" => list(any())
      }

  """
  @type get_identity_resolution_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_similar_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("MatchType") => list(any()),
        required("SearchKey") => String.t(),
        required("SearchValue") => String.t()
      }

  """
  @type get_similar_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trigger_properties() :: %{
        "Scheduled" => scheduled_trigger_properties()
      }

  """
  @type trigger_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_calculated_attribute_definition_request() :: %{}

  """
  @type get_calculated_attribute_definition_request() :: %{}

  @typedoc """

  ## Example:

      get_workflow_request() :: %{}

  """
  @type get_workflow_request() :: %{}

  @typedoc """

  ## Example:

      create_calculated_attribute_definition_request() :: %{
        optional("Conditions") => conditions(),
        optional("Description") => String.t(),
        optional("DisplayName") => String.t(),
        optional("Tags") => map(),
        required("AttributeDetails") => attribute_details(),
        required("Statistic") => list(any())
      }

  """
  @type create_calculated_attribute_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_calculated_attribute_definition_item() :: %{
        "CalculatedAttributeName" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "DisplayName" => String.t(),
        "LastUpdatedAt" => non_neg_integer(),
        "Tags" => map()
      }

  """
  @type list_calculated_attribute_definition_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_integrations_request() :: %{
        optional("IncludeHidden") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_integrations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_calculated_attribute_definition_response() :: %{}

  """
  @type delete_calculated_attribute_definition_response() :: %{}

  @typedoc """

  ## Example:

      workflow_step_item() :: %{
        "AppflowIntegration" => appflow_integration_workflow_step()
      }

  """
  @type workflow_step_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      object_type_field() :: %{
        "ContentType" => list(any()),
        "Source" => String.t(),
        "Target" => String.t()
      }

  """
  @type object_type_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domain_item() :: %{
        "CreatedAt" => non_neg_integer(),
        "DomainName" => String.t(),
        "LastUpdatedAt" => non_neg_integer(),
        "Tags" => map()
      }

  """
  @type list_domain_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_address() :: %{
        "Address1" => String.t(),
        "Address2" => String.t(),
        "Address3" => String.t(),
        "Address4" => String.t(),
        "City" => String.t(),
        "Country" => String.t(),
        "County" => String.t(),
        "PostalCode" => String.t(),
        "Province" => String.t(),
        "State" => String.t()
      }

  """
  @type update_address() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_integration_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "DomainName" => String.t(),
        "IsUnstructured" => boolean(),
        "LastUpdatedAt" => non_neg_integer(),
        "ObjectTypeName" => String.t(),
        "ObjectTypeNames" => map(),
        "Tags" => map(),
        "Uri" => String.t(),
        "WorkflowId" => String.t()
      }

  """
  @type get_integration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_profile_object_response() :: %{
        "Message" => String.t()
      }

  """
  @type delete_profile_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_domain_request() :: %{}

  """
  @type delete_domain_request() :: %{}

  @typedoc """

  ## Example:

      delete_profile_key_request() :: %{
        required("KeyName") => String.t(),
        required("ProfileId") => String.t(),
        required("Values") => list(String.t()())
      }

  """
  @type delete_profile_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      workflow_attributes() :: %{
        "AppflowIntegration" => appflow_integration_workflow_attributes()
      }

  """
  @type workflow_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      match_item() :: %{
        "ConfidenceScore" => float(),
        "MatchId" => String.t(),
        "ProfileIds" => list(String.t()())
      }

  """
  @type match_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_profile_request() :: %{
        optional("AccountNumber") => String.t(),
        optional("AdditionalInformation") => String.t(),
        optional("Address") => address(),
        optional("Attributes") => map(),
        optional("BillingAddress") => address(),
        optional("BirthDate") => String.t(),
        optional("BusinessEmailAddress") => String.t(),
        optional("BusinessName") => String.t(),
        optional("BusinessPhoneNumber") => String.t(),
        optional("EmailAddress") => String.t(),
        optional("FirstName") => String.t(),
        optional("Gender") => list(any()),
        optional("GenderString") => String.t(),
        optional("HomePhoneNumber") => String.t(),
        optional("LastName") => String.t(),
        optional("MailingAddress") => address(),
        optional("MiddleName") => String.t(),
        optional("MobilePhoneNumber") => String.t(),
        optional("PartyType") => list(any()),
        optional("PartyTypeString") => String.t(),
        optional("PersonalEmailAddress") => String.t(),
        optional("PhoneNumber") => String.t(),
        optional("ShippingAddress") => address()
      }

  """
  @type create_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_workflow_response() :: %{}

  """
  @type delete_workflow_response() :: %{}

  @typedoc """

  ## Example:

      rule_based_matching_response() :: %{
        "AttributeTypesSelector" => attribute_types_selector(),
        "ConflictResolution" => conflict_resolution(),
        "Enabled" => boolean(),
        "ExportingConfig" => exporting_config(),
        "MatchingRules" => list(matching_rule()()),
        "MaxAllowedRuleLevelForMatching" => integer(),
        "MaxAllowedRuleLevelForMerging" => integer(),
        "Status" => list(any())
      }

  """
  @type rule_based_matching_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_calculated_attribute_definition_response() :: %{
        "AttributeDetails" => attribute_details(),
        "CalculatedAttributeName" => String.t(),
        "Conditions" => conditions(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "DisplayName" => String.t(),
        "LastUpdatedAt" => non_neg_integer(),
        "Statistic" => list(any()),
        "Tags" => map()
      }

  """
  @type update_calculated_attribute_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      additional_search_key() :: %{
        "KeyName" => String.t(),
        "Values" => list(String.t()())
      }

  """
  @type additional_search_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_integration_request() :: %{
        required("Uri") => String.t()
      }

  """
  @type delete_integration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_domain_request() :: %{
        optional("DeadLetterQueueUrl") => String.t(),
        optional("DefaultEncryptionKey") => String.t(),
        optional("Matching") => matching_request(),
        optional("RuleBasedMatching") => rule_based_matching_request(),
        optional("Tags") => map(),
        required("DefaultExpirationDays") => integer()
      }

  """
  @type create_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_profile_request() :: %{
        optional("AccountNumber") => String.t(),
        optional("AdditionalInformation") => String.t(),
        optional("Address") => update_address(),
        optional("Attributes") => map(),
        optional("BillingAddress") => update_address(),
        optional("BirthDate") => String.t(),
        optional("BusinessEmailAddress") => String.t(),
        optional("BusinessName") => String.t(),
        optional("BusinessPhoneNumber") => String.t(),
        optional("EmailAddress") => String.t(),
        optional("FirstName") => String.t(),
        optional("Gender") => list(any()),
        optional("GenderString") => String.t(),
        optional("HomePhoneNumber") => String.t(),
        optional("LastName") => String.t(),
        optional("MailingAddress") => update_address(),
        optional("MiddleName") => String.t(),
        optional("MobilePhoneNumber") => String.t(),
        optional("PartyType") => list(any()),
        optional("PartyTypeString") => String.t(),
        optional("PersonalEmailAddress") => String.t(),
        optional("PhoneNumber") => String.t(),
        optional("ShippingAddress") => update_address(),
        required("ProfileId") => String.t()
      }

  """
  @type update_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_calculated_attribute_for_profile_response() :: %{
        "CalculatedAttributeName" => String.t(),
        "DisplayName" => String.t(),
        "IsDataPartial" => String.t(),
        "Value" => String.t()
      }

  """
  @type get_calculated_attribute_for_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_rule_based_matches_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_rule_based_matches_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_event_streams_response() :: %{
        "Items" => list(event_stream_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_event_streams_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_profile_objects_response() :: %{
        "Items" => list(list_profile_objects_item()()),
        "NextToken" => String.t()
      }

  """
  @type list_profile_objects_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_workflows_item() :: %{
        "CreatedAt" => non_neg_integer(),
        "LastUpdatedAt" => non_neg_integer(),
        "Status" => list(any()),
        "StatusDescription" => String.t(),
        "WorkflowId" => String.t(),
        "WorkflowType" => list(any())
      }

  """
  @type list_workflows_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      merge_profiles_request() :: %{
        optional("FieldSourceProfileIds") => field_source_profile_ids(),
        required("MainProfileId") => String.t(),
        required("ProfileIdsToBeMerged") => list(String.t()())
      }

  """
  @type merge_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      appflow_integration_workflow_metrics() :: %{
        "RecordsProcessed" => float(),
        "StepsCompleted" => float(),
        "TotalSteps" => float()
      }

  """
  @type appflow_integration_workflow_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domains_response() :: %{
        "Items" => list(list_domain_item()()),
        "NextToken" => String.t()
      }

  """
  @type list_domains_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_profile_object_type_template_response() :: %{
        "AllowProfileCreation" => boolean(),
        "Fields" => map(),
        "Keys" => map(),
        "SourceLastUpdatedTimestampFormat" => String.t(),
        "SourceName" => String.t(),
        "SourceObject" => String.t(),
        "TemplateId" => String.t()
      }

  """
  @type get_profile_object_type_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_profile_response() :: %{
        "ProfileId" => String.t()
      }

  """
  @type create_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_matches_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type get_matches_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_profile_object_types_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_profile_object_types_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_workflows_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("QueryEndDate") => non_neg_integer(),
        optional("QueryStartDate") => non_neg_integer(),
        optional("Status") => list(any()),
        optional("WorkflowType") => list(any())
      }

  """
  @type list_workflows_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      exporting_config() :: %{
        "S3Exporting" => s3_exporting_config()
      }

  """
  @type exporting_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      destination_summary() :: %{
        "Status" => list(any()),
        "UnhealthySince" => non_neg_integer(),
        "Uri" => String.t()
      }

  """
  @type destination_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_event_stream_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "DestinationDetails" => event_stream_destination_details(),
        "DomainName" => String.t(),
        "EventStreamArn" => String.t(),
        "State" => list(any()),
        "StoppedSince" => non_neg_integer(),
        "Tags" => map()
      }

  """
  @type get_event_stream_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_exporting_location() :: %{
        "S3BucketName" => String.t(),
        "S3KeyName" => String.t()
      }

  """
  @type s3_exporting_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      matching_response() :: %{
        "AutoMerging" => auto_merging(),
        "Enabled" => boolean(),
        "ExportingConfig" => exporting_config(),
        "JobSchedule" => job_schedule()
      }

  """
  @type matching_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conditions() :: %{
        "ObjectCount" => integer(),
        "Range" => range(),
        "Threshold" => threshold()
      }

  """
  @type conditions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_auto_merging_preview_request() :: %{
        optional("MinAllowedConfidenceScoreForMerging") => float(),
        required("ConflictResolution") => conflict_resolution(),
        required("Consolidation") => consolidation()
      }

  """
  @type get_auto_merging_preview_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      source_connector_properties() :: %{
        "Marketo" => marketo_source_properties(),
        "S3" => s3_source_properties(),
        "Salesforce" => salesforce_source_properties(),
        "ServiceNow" => service_now_source_properties(),
        "Zendesk" => zendesk_source_properties()
      }

  """
  @type source_connector_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_integration_request() :: %{
        required("Uri") => String.t()
      }

  """
  @type get_integration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_calculated_attribute_definitions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_calculated_attribute_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      consolidation() :: %{
        "MatchingAttributesList" => list(list(String.t()())())
      }

  """
  @type consolidation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rule_based_matching_request() :: %{
        "AttributeTypesSelector" => attribute_types_selector(),
        "ConflictResolution" => conflict_resolution(),
        "Enabled" => boolean(),
        "ExportingConfig" => exporting_config(),
        "MatchingRules" => list(matching_rule()()),
        "MaxAllowedRuleLevelForMatching" => integer(),
        "MaxAllowedRuleLevelForMerging" => integer()
      }

  """
  @type rule_based_matching_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      object_type_key() :: %{
        "FieldNames" => list(String.t()()),
        "StandardIdentifiers" => list(list(any())())
      }

  """
  @type object_type_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_matches_response() :: %{
        "MatchGenerationDate" => non_neg_integer(),
        "Matches" => list(match_item()()),
        "NextToken" => String.t(),
        "PotentialMatches" => integer()
      }

  """
  @type get_matches_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_profile_objects_item() :: %{
        "Object" => String.t(),
        "ObjectTypeName" => String.t(),
        "ProfileObjectUniqueKey" => String.t()
      }

  """
  @type list_profile_objects_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_calculated_attributes_for_profile_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_calculated_attributes_for_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_domain_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "DeadLetterQueueUrl" => String.t(),
        "DefaultEncryptionKey" => String.t(),
        "DefaultExpirationDays" => integer(),
        "DomainName" => String.t(),
        "LastUpdatedAt" => non_neg_integer(),
        "Matching" => matching_response(),
        "RuleBasedMatching" => rule_based_matching_response(),
        "Stats" => domain_stats(),
        "Tags" => map()
      }

  """
  @type get_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_source_profile_ids() :: %{
        "AccountNumber" => String.t(),
        "AdditionalInformation" => String.t(),
        "Address" => String.t(),
        "Attributes" => map(),
        "BillingAddress" => String.t(),
        "BirthDate" => String.t(),
        "BusinessEmailAddress" => String.t(),
        "BusinessName" => String.t(),
        "BusinessPhoneNumber" => String.t(),
        "EmailAddress" => String.t(),
        "FirstName" => String.t(),
        "Gender" => String.t(),
        "HomePhoneNumber" => String.t(),
        "LastName" => String.t(),
        "MailingAddress" => String.t(),
        "MiddleName" => String.t(),
        "MobilePhoneNumber" => String.t(),
        "PartyType" => String.t(),
        "PersonalEmailAddress" => String.t(),
        "PhoneNumber" => String.t(),
        "ShippingAddress" => String.t()
      }

  """
  @type field_source_profile_ids() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_stream_destination_details() :: %{
        "Message" => String.t(),
        "Status" => list(any()),
        "UnhealthySince" => non_neg_integer(),
        "Uri" => String.t()
      }

  """
  @type event_stream_destination_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_profiles_request() :: %{
        optional("AdditionalSearchKeys") => list(additional_search_key()()),
        optional("LogicalOperator") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("KeyName") => String.t(),
        required("Values") => list(String.t()())
      }

  """
  @type search_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_profile_object_type_request() :: %{}

  """
  @type get_profile_object_type_request() :: %{}

  @typedoc """

  ## Example:

      list_domains_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_domains_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_event_stream_request() :: %{}

  """
  @type get_event_stream_request() :: %{}

  @typedoc """

  ## Example:

      source_flow_config() :: %{
        "ConnectorProfileName" => String.t(),
        "ConnectorType" => list(any()),
        "IncrementalPullConfig" => incremental_pull_config(),
        "SourceConnectorProperties" => source_connector_properties()
      }

  """
  @type source_flow_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      salesforce_source_properties() :: %{
        "EnableDynamicFieldUpdate" => boolean(),
        "IncludeDeletedRecords" => boolean(),
        "Object" => String.t()
      }

  """
  @type salesforce_source_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_workflow_steps_response() :: %{
        "Items" => list(workflow_step_item()()),
        "NextToken" => String.t(),
        "WorkflowId" => String.t(),
        "WorkflowType" => list(any())
      }

  """
  @type get_workflow_steps_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_calculated_attributes_for_profile_response() :: %{
        "Items" => list(list_calculated_attribute_for_profile_item()()),
        "NextToken" => String.t()
      }

  """
  @type list_calculated_attributes_for_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_workflow_steps_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type get_workflow_steps_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_calculated_attribute_definition_request() :: %{}

  """
  @type delete_calculated_attribute_definition_request() :: %{}

  @typedoc """

  ## Example:

      get_auto_merging_preview_response() :: %{
        "DomainName" => String.t(),
        "NumberOfMatchesInSample" => float(),
        "NumberOfProfilesInSample" => float(),
        "NumberOfProfilesWillBeMerged" => float()
      }

  """
  @type get_auto_merging_preview_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_profiles_response() :: %{
        "Items" => list(profile()()),
        "NextToken" => String.t()
      }

  """
  @type search_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_integration_workflow_response() :: %{
        "Message" => String.t(),
        "WorkflowId" => String.t()
      }

  """
  @type create_integration_workflow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_calculated_attribute_definition_request() :: %{
        optional("Conditions") => conditions(),
        optional("Description") => String.t(),
        optional("DisplayName") => String.t()
      }

  """
  @type update_calculated_attribute_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      identity_resolution_job() :: %{
        "DomainName" => String.t(),
        "ExportingLocation" => exporting_location(),
        "JobEndTime" => non_neg_integer(),
        "JobId" => String.t(),
        "JobStartTime" => non_neg_integer(),
        "JobStats" => job_stats(),
        "Message" => String.t(),
        "Status" => list(any())
      }

  """
  @type identity_resolution_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_event_stream_response() :: %{}

  """
  @type delete_event_stream_response() :: %{}

  @typedoc """

  ## Example:

      attribute_types_selector() :: %{
        "Address" => list(String.t()()),
        "AttributeMatchingModel" => list(any()),
        "EmailAddress" => list(String.t()()),
        "PhoneNumber" => list(String.t()())
      }

  """
  @type attribute_types_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_profile_response() :: %{
        "ProfileId" => String.t()
      }

  """
  @type update_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_profile_object_type_request() :: %{
        optional("AllowProfileCreation") => boolean(),
        optional("EncryptionKey") => String.t(),
        optional("ExpirationDays") => integer(),
        optional("Fields") => map(),
        optional("Keys") => map(),
        optional("MaxProfileObjectCount") => integer(),
        optional("SourceLastUpdatedTimestampFormat") => String.t(),
        optional("Tags") => map(),
        optional("TemplateId") => String.t(),
        required("Description") => String.t()
      }

  """
  @type put_profile_object_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch() :: %{
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer()
      }

  """
  @type batch() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      s3_exporting_config() :: %{
        "S3BucketName" => String.t(),
        "S3KeyName" => String.t()
      }

  """
  @type s3_exporting_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_domain_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "DeadLetterQueueUrl" => String.t(),
        "DefaultEncryptionKey" => String.t(),
        "DefaultExpirationDays" => integer(),
        "DomainName" => String.t(),
        "LastUpdatedAt" => non_neg_integer(),
        "Matching" => matching_response(),
        "RuleBasedMatching" => rule_based_matching_response(),
        "Tags" => map()
      }

  """
  @type create_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_profile_objects_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ObjectFilter") => object_filter(),
        required("ObjectTypeName") => String.t(),
        required("ProfileId") => String.t()
      }

  """
  @type list_profile_objects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_profile_object_type_templates_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_profile_object_type_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_event_stream_request() :: %{
        optional("Tags") => map(),
        required("Uri") => String.t()
      }

  """
  @type create_event_stream_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      threshold() :: %{
        "Operator" => list(any()),
        "Value" => String.t()
      }

  """
  @type threshold() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      detected_profile_object_type() :: %{
        "Fields" => map(),
        "Keys" => map(),
        "SourceLastUpdatedTimestampFormat" => String.t()
      }

  """
  @type detected_profile_object_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_profile_object_type_request() :: %{}

  """
  @type delete_profile_object_type_request() :: %{}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Message" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connector_operator() :: %{
        "Marketo" => list(any()),
        "S3" => list(any()),
        "Salesforce" => list(any()),
        "ServiceNow" => list(any()),
        "Zendesk" => list(any())
      }

  """
  @type connector_operator() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_profile_object_request() :: %{
        required("Object") => String.t(),
        required("ObjectTypeName") => String.t()
      }

  """
  @type put_profile_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_event_stream_request() :: %{}

  """
  @type delete_event_stream_request() :: %{}

  @typedoc """

  ## Example:

      appflow_integration() :: %{
        "Batches" => list(batch()()),
        "FlowDefinition" => flow_definition()
      }

  """
  @type appflow_integration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_calculated_attribute_for_profile_item() :: %{
        "CalculatedAttributeName" => String.t(),
        "DisplayName" => String.t(),
        "IsDataPartial" => String.t(),
        "Value" => String.t()
      }

  """
  @type list_calculated_attribute_for_profile_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_event_streams_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_event_streams_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      address() :: %{
        "Address1" => String.t(),
        "Address2" => String.t(),
        "Address3" => String.t(),
        "Address4" => String.t(),
        "City" => String.t(),
        "Country" => String.t(),
        "County" => String.t(),
        "PostalCode" => String.t(),
        "Province" => String.t(),
        "State" => String.t()
      }

  """
  @type address() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_profile_object_request() :: %{
        required("ObjectTypeName") => String.t(),
        required("ProfileId") => String.t(),
        required("ProfileObjectUniqueKey") => String.t()
      }

  """
  @type delete_profile_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_calculated_attribute_definitions_response() :: %{
        "Items" => list(list_calculated_attribute_definition_item()()),
        "NextToken" => String.t()
      }

  """
  @type list_calculated_attribute_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_workflows_response() :: %{
        "Items" => list(list_workflows_item()()),
        "NextToken" => String.t()
      }

  """
  @type list_workflows_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_profile_object_type_templates_response() :: %{
        "Items" => list(list_profile_object_type_template_item()()),
        "NextToken" => String.t()
      }

  """
  @type list_profile_object_type_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_profile_object_type_response() :: %{
        "Message" => String.t()
      }

  """
  @type delete_profile_object_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_account_integrations_response() :: %{
        "Items" => list(list_integration_item()()),
        "NextToken" => String.t()
      }

  """
  @type list_account_integrations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_now_source_properties() :: %{
        "Object" => String.t()
      }

  """
  @type service_now_source_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_integration_item() :: %{
        "CreatedAt" => non_neg_integer(),
        "DomainName" => String.t(),
        "IsUnstructured" => boolean(),
        "LastUpdatedAt" => non_neg_integer(),
        "ObjectTypeName" => String.t(),
        "ObjectTypeNames" => map(),
        "Tags" => map(),
        "Uri" => String.t(),
        "WorkflowId" => String.t()
      }

  """
  @type list_integration_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_profile_object_type_template_request() :: %{}

  """
  @type get_profile_object_type_template_request() :: %{}

  @typedoc """

  ## Example:

      workflow_metrics() :: %{
        "AppflowIntegration" => appflow_integration_workflow_metrics()
      }

  """
  @type workflow_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      incremental_pull_config() :: %{
        "DatetimeTypeFieldName" => String.t()
      }

  """
  @type incremental_pull_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_event_stream_response() :: %{
        "EventStreamArn" => String.t(),
        "Tags" => map()
      }

  """
  @type create_event_stream_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trigger_config() :: %{
        "TriggerProperties" => trigger_properties(),
        "TriggerType" => list(any())
      }

  """
  @type trigger_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_profile_key_request() :: %{
        required("KeyName") => String.t(),
        required("ProfileId") => String.t(),
        required("Values") => list(String.t()())
      }

  """
  @type add_profile_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      matching_request() :: %{
        "AutoMerging" => auto_merging(),
        "Enabled" => boolean(),
        "ExportingConfig" => exporting_config(),
        "JobSchedule" => job_schedule()
      }

  """
  @type matching_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_calculated_attribute_definition_response() :: %{
        "AttributeDetails" => attribute_details(),
        "CalculatedAttributeName" => String.t(),
        "Conditions" => conditions(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "DisplayName" => String.t(),
        "LastUpdatedAt" => non_neg_integer(),
        "Statistic" => list(any()),
        "Tags" => map()
      }

  """
  @type get_calculated_attribute_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_profile_object_types_response() :: %{
        "Items" => list(list_profile_object_type_item()()),
        "NextToken" => String.t()
      }

  """
  @type list_profile_object_types_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_integrations_response() :: %{
        "Items" => list(list_integration_item()()),
        "NextToken" => String.t()
      }

  """
  @type list_integrations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_workflow_response() :: %{
        "Attributes" => workflow_attributes(),
        "ErrorDescription" => String.t(),
        "LastUpdatedAt" => non_neg_integer(),
        "Metrics" => workflow_metrics(),
        "StartDate" => non_neg_integer(),
        "Status" => list(any()),
        "WorkflowId" => String.t(),
        "WorkflowType" => list(any())
      }

  """
  @type get_workflow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_stream_summary() :: %{
        "DestinationSummary" => destination_summary(),
        "DomainName" => String.t(),
        "EventStreamArn" => String.t(),
        "EventStreamName" => String.t(),
        "State" => list(any()),
        "StoppedSince" => non_neg_integer(),
        "Tags" => map()
      }

  """
  @type event_stream_summary() :: %{String.t() => any()}

  @type add_profile_key_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_calculated_attribute_definition_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_domain_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_event_stream_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_integration_workflow_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_profile_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_calculated_attribute_definition_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_domain_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_event_stream_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_integration_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_profile_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_profile_key_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_profile_object_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_profile_object_type_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_workflow_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type detect_profile_object_type_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_auto_merging_preview_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_calculated_attribute_definition_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_calculated_attribute_for_profile_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_domain_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_event_stream_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_identity_resolution_job_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_integration_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_matches_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_profile_object_type_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_profile_object_type_template_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_similar_profiles_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_workflow_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_workflow_steps_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_account_integrations_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_calculated_attribute_definitions_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_calculated_attributes_for_profile_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_domains_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_event_streams_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_identity_resolution_jobs_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_integrations_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_profile_object_type_templates_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_profile_object_types_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_profile_objects_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_rule_based_matches_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_workflows_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type merge_profiles_errors() ::
          bad_request_exception()
          | throttling_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_integration_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_profile_object_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_profile_object_type_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type search_profiles_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_calculated_attribute_definition_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_domain_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_profile_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2020-08-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "profile",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Customer Profiles",
      signature_version: "v4",
      signing_name: "profile",
      target_prefix: nil
    }
  end

  @doc """
  Associates a new key value with a specific profile, such as a Contact Record
  ContactId.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20AddProfileKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  """
  @spec add_profile_key(AWS.Client.t(), String.t(), add_profile_key_request(), Keyword.t()) ::
          {:ok, add_profile_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_profile_key_errors()}
  def add_profile_key(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/keys"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new calculated attribute definition. After creation, new object data
  ingested into Customer Profiles will be included in the calculated attribute,
  which can be retrieved for a profile using the
  [GetCalculatedAttributeForProfile](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetCalculatedAttributeForProfile.html)
  API. Defining a calculated attribute makes it available for all profiles
  within a domain. Each calculated attribute can only reference one `ObjectType`
  and at most, two fields from that `ObjectType`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20CreateCalculatedAttributeDefinition&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:calculated_attribute_name` (`t:string`) The unique name of the calculated
    attribute.
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  """
  @spec create_calculated_attribute_definition(
          AWS.Client.t(),
          String.t(),
          String.t(),
          create_calculated_attribute_definition_request(),
          Keyword.t()
        ) ::
          {:ok, create_calculated_attribute_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_calculated_attribute_definition_errors()}
  def create_calculated_attribute_definition(
        %Client{} = client,
        calculated_attribute_name,
        domain_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/calculated-attributes/#{AWS.Util.encode_uri(calculated_attribute_name)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a domain, which is a container for all customer data, such as customer
  profile attributes, object types, profile keys, and encryption keys. You can
  create multiple domains, and each domain can have multiple third-party
  integrations. Each Amazon Connect instance can be associated with only one
  domain. Multiple Amazon Connect instances can be associated with one domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20CreateDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  """
  @spec create_domain(AWS.Client.t(), String.t(), create_domain_request(), Keyword.t()) ::
          {:ok, create_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_domain_errors()}
  def create_domain(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an event stream, which is a subscription to real-time events, such as
  when profiles are created and updated through Amazon Connect Customer
  Profiles.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20CreateEventStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.
  * `:event_stream_name` (`t:string`) The name of the event stream.

  ## Optional parameters:
  """
  @spec create_event_stream(
          AWS.Client.t(),
          String.t(),
          String.t(),
          create_event_stream_request(),
          Keyword.t()
        ) ::
          {:ok, create_event_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_event_stream_errors()}
  def create_event_stream(
        %Client{} = client,
        domain_name,
        event_stream_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/event-streams/#{AWS.Util.encode_uri(event_stream_name)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an integration workflow. An integration workflow is an async process
  which ingests historic data and sets up an integration for ongoing updates.
  The supported Amazon AppFlow sources are Salesforce, ServiceNow, and Marketo.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20CreateIntegrationWorkflow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  """
  @spec create_integration_workflow(
          AWS.Client.t(),
          String.t(),
          create_integration_workflow_request(),
          Keyword.t()
        ) ::
          {:ok, create_integration_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_integration_workflow_errors()}
  def create_integration_workflow(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/workflows/integrations"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a standard profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20CreateProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  """
  @spec create_profile(AWS.Client.t(), String.t(), create_profile_request(), Keyword.t()) ::
          {:ok, create_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_profile_errors()}
  def create_profile(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes an existing calculated attribute definition. Note that deleting a
  default calculated attribute is possible, however once deleted, you will be
  unable to undo that action and will need to recreate it on your own using the
  CreateCalculatedAttributeDefinition API if you want it back.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20DeleteCalculatedAttributeDefinition&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:calculated_attribute_name` (`t:string`) The unique name of the calculated
    attribute.
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  """
  @spec delete_calculated_attribute_definition(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_calculated_attribute_definition_request(),
          Keyword.t()
        ) ::
          {:ok, delete_calculated_attribute_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_calculated_attribute_definition_errors()}
  def delete_calculated_attribute_definition(
        %Client{} = client,
        calculated_attribute_name,
        domain_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/calculated-attributes/#{AWS.Util.encode_uri(calculated_attribute_name)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a specific domain and all of its customer data, such as customer profile
  attributes and their related objects.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20DeleteDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  """
  @spec delete_domain(AWS.Client.t(), String.t(), delete_domain_request(), Keyword.t()) ::
          {:ok, delete_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_domain_errors()}
  def delete_domain(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disables and deletes the specified event stream.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20DeleteEventStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.
  * `:event_stream_name` (`t:string`) The name of the event stream

  ## Optional parameters:
  """
  @spec delete_event_stream(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_event_stream_request(),
          Keyword.t()
        ) ::
          {:ok, delete_event_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_event_stream_errors()}
  def delete_event_stream(
        %Client{} = client,
        domain_name,
        event_stream_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/event-streams/#{AWS.Util.encode_uri(event_stream_name)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes an integration from a specific domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20DeleteIntegration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  """
  @spec delete_integration(AWS.Client.t(), String.t(), delete_integration_request(), Keyword.t()) ::
          {:ok, delete_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_integration_errors()}
  def delete_integration(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/integrations/delete"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the standard customer profile and all data pertaining to the profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20DeleteProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  """
  @spec delete_profile(AWS.Client.t(), String.t(), delete_profile_request(), Keyword.t()) ::
          {:ok, delete_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_profile_errors()}
  def delete_profile(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/delete"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes a searchable key from a customer profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20DeleteProfileKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  """
  @spec delete_profile_key(AWS.Client.t(), String.t(), delete_profile_key_request(), Keyword.t()) ::
          {:ok, delete_profile_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_profile_key_errors()}
  def delete_profile_key(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/keys/delete"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes an object associated with a profile of a given ProfileObjectType.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20DeleteProfileObject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  """
  @spec delete_profile_object(
          AWS.Client.t(),
          String.t(),
          delete_profile_object_request(),
          Keyword.t()
        ) ::
          {:ok, delete_profile_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_profile_object_errors()}
  def delete_profile_object(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/objects/delete"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes a ProfileObjectType from a specific domain as well as removes all the
  ProfileObjects of that type. It also disables integrations from this specific
  ProfileObjectType. In addition, it scrubs all of the fields of the standard
  profile that were populated from this ProfileObjectType.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20DeleteProfileObjectType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.
  * `:object_type_name` (`t:string`) The name of the profile object type.

  ## Optional parameters:
  """
  @spec delete_profile_object_type(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_profile_object_type_request(),
          Keyword.t()
        ) ::
          {:ok, delete_profile_object_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_profile_object_type_errors()}
  def delete_profile_object_type(
        %Client{} = client,
        domain_name,
        object_type_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/object-types/#{AWS.Util.encode_uri(object_type_name)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the specified workflow and all its corresponding resources. This is an
  async process.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20DeleteWorkflow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.
  * `:workflow_id` (`t:string`) Unique identifier for the workflow.

  ## Optional parameters:
  """
  @spec delete_workflow(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_workflow_request(),
          Keyword.t()
        ) ::
          {:ok, delete_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_workflow_errors()}
  def delete_workflow(%Client{} = client, domain_name, workflow_id, input, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/workflows/#{AWS.Util.encode_uri(workflow_id)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  The process of detecting profile object type mapping by using given objects.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20DetectProfileObjectType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  """
  @spec detect_profile_object_type(
          AWS.Client.t(),
          String.t(),
          detect_profile_object_type_request(),
          Keyword.t()
        ) ::
          {:ok, detect_profile_object_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detect_profile_object_type_errors()}
  def detect_profile_object_type(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/detect/object-types"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Tests the auto-merging settings of your Identity Resolution Job without merging
  your data. It randomly selects a sample of matching groups from the existing
  matching results, and applies the automerging settings that you provided. You
  can then view the number of profiles in the sample, the number of matches, and
  the number of profiles identified to be merged. This enables you to evaluate
  the accuracy of the attributes in your matching list. You can't view which
  profiles are matched and would be merged.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20GetAutoMergingPreview&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  """
  @spec get_auto_merging_preview(
          AWS.Client.t(),
          String.t(),
          get_auto_merging_preview_request(),
          Keyword.t()
        ) ::
          {:ok, get_auto_merging_preview_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_auto_merging_preview_errors()}
  def get_auto_merging_preview(%Client{} = client, domain_name, input, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/identity-resolution-jobs/auto-merging-preview"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Provides more information on a calculated attribute definition for Customer
  Profiles.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20GetCalculatedAttributeDefinition&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:calculated_attribute_name` (`t:string`) The unique name of the calculated
    attribute.
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  """
  @spec get_calculated_attribute_definition(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_calculated_attribute_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_calculated_attribute_definition_errors()}
  def get_calculated_attribute_definition(
        %Client{} = client,
        calculated_attribute_name,
        domain_name,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/calculated-attributes/#{AWS.Util.encode_uri(calculated_attribute_name)}"

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
  Retrieve a calculated attribute for a customer profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20GetCalculatedAttributeForProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:calculated_attribute_name` (`t:string`) The unique name of the calculated
    attribute.
  * `:domain_name` (`t:string`) The unique name of the domain.
  * `:profile_id` (`t:string`) The unique identifier of a customer profile.

  ## Optional parameters:
  """
  @spec get_calculated_attribute_for_profile(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_calculated_attribute_for_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_calculated_attribute_for_profile_errors()}
  def get_calculated_attribute_for_profile(
        %Client{} = client,
        calculated_attribute_name,
        domain_name,
        profile_id,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/profile/#{AWS.Util.encode_uri(profile_id)}/calculated-attributes/#{AWS.Util.encode_uri(calculated_attribute_name)}"

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
  Returns information about a specific domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20GetDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  """
  @spec get_domain(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_domain_errors()}
  def get_domain(%Client{} = client, domain_name, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}"

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
  Returns information about the specified event stream in a specific domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20GetEventStream&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.
  * `:event_stream_name` (`t:string`) The name of the event stream provided during
    create operations.

  ## Optional parameters:
  """
  @spec get_event_stream(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_event_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_event_stream_errors()}
  def get_event_stream(%Client{} = client, domain_name, event_stream_name, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/event-streams/#{AWS.Util.encode_uri(event_stream_name)}"

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
  Returns information about an Identity Resolution Job in a specific domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20GetIdentityResolutionJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.
  * `:job_id` (`t:string`) The unique identifier of the Identity Resolution Job.

  ## Optional parameters:
  """
  @spec get_identity_resolution_job(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_identity_resolution_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_identity_resolution_job_errors()}
  def get_identity_resolution_job(%Client{} = client, domain_name, job_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/identity-resolution-jobs/#{AWS.Util.encode_uri(job_id)}"

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
  Returns an integration for a domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20GetIntegration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  """
  @spec get_integration(AWS.Client.t(), String.t(), get_integration_request(), Keyword.t()) ::
          {:ok, get_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_integration_errors()}
  def get_integration(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/integrations"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Before calling this API, use
  [CreateDomain](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html)
  or
  [UpdateDomain](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html)
  to enable identity resolution: set `Matching` to true. GetMatches returns
  potentially matching profiles, based on the results of the latest run of a
  machine learning process. The process of matching duplicate profiles. If
  `Matching` = `true`, Amazon Connect Customer Profiles starts a weekly batch
  process called Identity Resolution Job. If you do not specify a date and time
  for Identity Resolution Job to run, by default it runs every Saturday at 12AM
  UTC to detect duplicate profiles in your domains. After the Identity
  Resolution Job completes, use the
  [GetMatches](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html)
  API to return and review the results. Or, if you have configured
  `ExportingConfig` in the `MatchingRequest`, you can download the results from
  S3.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20GetMatches&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
    value returned in the previous response in the next request to retrieve the
    next set of results.
  """
  @spec get_matches(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_matches_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_matches_errors()}
  def get_matches(%Client{} = client, domain_name, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/matches"

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
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
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
  Returns the object types for a specific domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20GetProfileObjectType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.
  * `:object_type_name` (`t:string`) The name of the profile object type.

  ## Optional parameters:
  """
  @spec get_profile_object_type(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_profile_object_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_profile_object_type_errors()}
  def get_profile_object_type(%Client{} = client, domain_name, object_type_name, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/object-types/#{AWS.Util.encode_uri(object_type_name)}"

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
  Returns the template information for a specific object type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20GetProfileObjectTypeTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:template_id` (`t:string`) A unique identifier for the object template.

  ## Optional parameters:
  """
  @spec get_profile_object_type_template(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_profile_object_type_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_profile_object_type_template_errors()}
  def get_profile_object_type_template(%Client{} = client, template_id, options \\ []) do
    url_path = "/templates/#{AWS.Util.encode_uri(template_id)}"

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
  Returns a set of profiles that belong to the same matching group using the
  `matchId` or `profileId`. You can also specify the type of matching that you
  want for finding similar profiles using either `RULE_BASED_MATCHING` or
  `ML_BASED_MATCHING`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20GetSimilarProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of objects returned per page.
  * `:next_token` (`t:string`) The pagination token from the previous
    GetSimilarProfiles API call.
  """
  @spec get_similar_profiles(
          AWS.Client.t(),
          String.t(),
          get_similar_profiles_request(),
          Keyword.t()
        ) ::
          {:ok, get_similar_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_similar_profiles_errors()}
  def get_similar_profiles(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/matches"
    headers = []

    {query_params, input} =
      [
        {"MaxResults", "max-results"},
        {"NextToken", "next-token"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Get details of specified workflow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20GetWorkflow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.
  * `:workflow_id` (`t:string`) Unique identifier for the workflow.

  ## Optional parameters:
  """
  @spec get_workflow(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_workflow_errors()}
  def get_workflow(%Client{} = client, domain_name, workflow_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/workflows/#{AWS.Util.encode_uri(workflow_id)}"

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
  Get granular list of steps in workflow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20GetWorkflowSteps&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.
  * `:workflow_id` (`t:string`) Unique identifier for the workflow.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
    value returned in the previous response in the next request to retrieve the
    next set of results.
  """
  @spec get_workflow_steps(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_workflow_steps_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_workflow_steps_errors()}
  def get_workflow_steps(%Client{} = client, domain_name, workflow_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/workflows/#{AWS.Util.encode_uri(workflow_id)}/steps"

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
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
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
  Lists all of the integrations associated to a specific URI in the AWS account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20ListAccountIntegrations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:include_hidden` (`t:boolean`) Boolean to indicate if hidden integration
    should be returned. Defaults to False.
  * `:max_results` (`t:integer`) The maximum number of objects returned per page.
  * `:next_token` (`t:string`) The pagination token from the previous
    ListAccountIntegrations API call.
  """
  @spec list_account_integrations(
          AWS.Client.t(),
          list_account_integrations_request(),
          Keyword.t()
        ) ::
          {:ok, list_account_integrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_account_integrations_errors()}
  def list_account_integrations(%Client{} = client, input, options \\ []) do
    url_path = "/integrations"
    headers = []

    {query_params, input} =
      [
        {"IncludeHidden", "include-hidden"},
        {"MaxResults", "max-results"},
        {"NextToken", "next-token"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:include_hidden, :max_results, :next_token])

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists calculated attribute definitions for Customer Profiles

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20ListCalculatedAttributeDefinitions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of calculated attribute
    definitions returned per page.
  * `:next_token` (`t:string`) The pagination token from the previous call to
    ListCalculatedAttributeDefinitions.
  """
  @spec list_calculated_attribute_definitions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_calculated_attribute_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_calculated_attribute_definitions_errors()}
  def list_calculated_attribute_definitions(%Client{} = client, domain_name, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/calculated-attributes"

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
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
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
  Retrieve a list of calculated attributes for a customer profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20ListCalculatedAttributesForProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.
  * `:profile_id` (`t:string`) The unique identifier of a customer profile.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of calculated attributes
    returned per page.
  * `:next_token` (`t:string`) The pagination token from the previous call to
    ListCalculatedAttributesForProfile.
  """
  @spec list_calculated_attributes_for_profile(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, list_calculated_attributes_for_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_calculated_attributes_for_profile_errors()}
  def list_calculated_attributes_for_profile(
        %Client{} = client,
        domain_name,
        profile_id,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/profile/#{AWS.Util.encode_uri(profile_id)}/calculated-attributes"

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
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
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
  Returns a list of all the domains for an AWS account that have been created.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20ListDomains&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of objects returned per page.
  * `:next_token` (`t:string`) The pagination token from the previous ListDomain
    API call.
  """
  @spec list_domains(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_domains_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_domains_errors()}
  def list_domains(%Client{} = client, options \\ []) do
    url_path = "/domains"

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
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
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
  Returns a list of all the event streams in a specific domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20ListEventStreams&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of objects returned per page.
  * `:next_token` (`t:string`) Identifies the next page of results to return.
  """
  @spec list_event_streams(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_event_streams_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_event_streams_errors()}
  def list_event_streams(%Client{} = client, domain_name, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/event-streams"

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
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
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
  Lists all of the Identity Resolution Jobs in your domain. The response sorts the
  list by `JobStartTime`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20ListIdentityResolutionJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
    value returned in the previous response in the next request to retrieve the
    next set of results.
  """
  @spec list_identity_resolution_jobs(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_identity_resolution_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_identity_resolution_jobs_errors()}
  def list_identity_resolution_jobs(%Client{} = client, domain_name, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/identity-resolution-jobs"

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
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
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
  Lists all of the integrations in your domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20ListIntegrations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  * `:include_hidden` (`t:boolean`) Boolean to indicate if hidden integration
    should be returned. Defaults to False.
  * `:max_results` (`t:integer`) The maximum number of objects returned per page.
  * `:next_token` (`t:string`) The pagination token from the previous
    ListIntegrations API call.
  """
  @spec list_integrations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_integrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_integrations_errors()}
  def list_integrations(%Client{} = client, domain_name, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/integrations"

    # Validate optional parameters
    optional_params = [include_hidden: nil, max_results: nil, next_token: nil]

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
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :include_hidden) do
        [{"include-hidden", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:include_hidden, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all of the template information for object types.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20ListProfileObjectTypeTemplates&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of objects returned per page.
  * `:next_token` (`t:string`) The pagination token from the previous
    ListObjectTypeTemplates API call.
  """
  @spec list_profile_object_type_templates(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_profile_object_type_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_profile_object_type_templates_errors()}
  def list_profile_object_type_templates(%Client{} = client, options \\ []) do
    url_path = "/templates"

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
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
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
  Lists all of the templates available within the service.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20ListProfileObjectTypes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of objects returned per page.
  * `:next_token` (`t:string`) Identifies the next page of results to return.
  """
  @spec list_profile_object_types(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_profile_object_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_profile_object_types_errors()}
  def list_profile_object_types(%Client{} = client, domain_name, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/object-types"

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
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
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
  Returns a list of objects associated with a profile of a given
  ProfileObjectType.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20ListProfileObjects&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of objects returned per page.
  * `:next_token` (`t:string`) The pagination token from the previous call to
    ListProfileObjects.
  """
  @spec list_profile_objects(
          AWS.Client.t(),
          String.t(),
          list_profile_objects_request(),
          Keyword.t()
        ) ::
          {:ok, list_profile_objects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_profile_objects_errors()}
  def list_profile_objects(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/objects"
    headers = []

    {query_params, input} =
      [
        {"MaxResults", "max-results"},
        {"NextToken", "next-token"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a set of `MatchIds` that belong to the given domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20ListRuleBasedMatches&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of MatchIds returned per page.
  * `:next_token` (`t:string`) The pagination token from the previous
    ListRuleBasedMatches API call.
  """
  @spec list_rule_based_matches(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_rule_based_matches_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_rule_based_matches_errors()}
  def list_rule_based_matches(%Client{} = client, domain_name, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/ruleBasedMatches"

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
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
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
  Displays the tags associated with an Amazon Connect Customer Profiles resource.
  In Connect Customer Profiles, domains, profile object types, and integrations
  can be tagged.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource for which you want to
    view tags.

  ## Optional parameters:
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
  Query to list all workflows.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20ListWorkflows&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
    value returned in the previous response in the next request to retrieve the
    next set of results.
  """
  @spec list_workflows(AWS.Client.t(), String.t(), list_workflows_request(), Keyword.t()) ::
          {:ok, list_workflows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workflows_errors()}
  def list_workflows(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/workflows"
    headers = []

    {query_params, input} =
      [
        {"MaxResults", "max-results"},
        {"NextToken", "next-token"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Runs an AWS Lambda job that does the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20MergeProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  """
  @spec merge_profiles(AWS.Client.t(), String.t(), merge_profiles_request(), Keyword.t()) ::
          {:ok, merge_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, merge_profiles_errors()}
  def merge_profiles(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/objects/merge"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds an integration between the service and a third-party service, which
  includes Amazon AppFlow and Amazon Connect. An integration can belong to only
  one domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20PutIntegration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  """
  @spec put_integration(AWS.Client.t(), String.t(), put_integration_request(), Keyword.t()) ::
          {:ok, put_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_integration_errors()}
  def put_integration(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/integrations"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Adds additional objects to customer profiles of a given ObjectType. When adding
  a specific profile object, like a Contact Record, an inferred profile can get
  created if it is not mapped to an existing profile. The resulting profile will
  only have a phone number populated in the standard ProfileObject. Any
  additional Contact Records with the same phone number will be mapped to the
  same inferred profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20PutProfileObject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  """
  @spec put_profile_object(AWS.Client.t(), String.t(), put_profile_object_request(), Keyword.t()) ::
          {:ok, put_profile_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_profile_object_errors()}
  def put_profile_object(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/objects"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Defines a ProfileObjectType.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20PutProfileObjectType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.
  * `:object_type_name` (`t:string`) The name of the profile object type.

  ## Optional parameters:
  """
  @spec put_profile_object_type(
          AWS.Client.t(),
          String.t(),
          String.t(),
          put_profile_object_type_request(),
          Keyword.t()
        ) ::
          {:ok, put_profile_object_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_profile_object_type_errors()}
  def put_profile_object_type(
        %Client{} = client,
        domain_name,
        object_type_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/object-types/#{AWS.Util.encode_uri(object_type_name)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Searches for profiles within a specific domain using one or more predefined
  search keys (e.g., _fullName, _phone, _email, _account, etc.) and/or
  custom-defined search keys. A search key is a data type pair that consists of
  a `KeyName` and `Values` list.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20SearchProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of objects returned per page.
  * `:next_token` (`t:string`) The pagination token from the previous
    SearchProfiles API call.
  """
  @spec search_profiles(AWS.Client.t(), String.t(), search_profiles_request(), Keyword.t()) ::
          {:ok, search_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_profiles_errors()}
  def search_profiles(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/search"
    headers = []

    {query_params, input} =
      [
        {"MaxResults", "max-results"},
        {"NextToken", "next-token"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Assigns one or more tags (key-value pairs) to the specified Amazon Connect
  Customer Profiles resource. Tags can help you organize and categorize your
  resources. You can also use them to scope user permissions by granting a user
  permission to access or change only resources with certain tag values. In
  Connect Customer Profiles, domains, profile object types, and integrations can
  be tagged. Tags don't have any semantic meaning to AWS and are interpreted
  strictly as strings of characters.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource that you're adding tags
    to.

  ## Optional parameters:
  """
  @spec tag_resource(AWS.Client.t(), String.t(), tag_resource_request(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes one or more tags from the specified Amazon Connect Customer Profiles
  resource. In Connect Customer Profiles, domains, profile object types, and
  integrations can be tagged.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The ARN of the resource from which you are
    removing tags.
  * `:tag_keys` (`t:list[com.amazonaws.customerprofiles#TagKey]`) The list of tag
    keys to remove from the resource.

  ## Optional parameters:
  """
  @spec untag_resource(AWS.Client.t(), String.t(), untag_resource_request(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing calculated attribute definition. When updating the
  Conditions, note that increasing the date range of a calculated attribute will
  not trigger inclusion of historical data greater than the current date range.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20UpdateCalculatedAttributeDefinition&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:calculated_attribute_name` (`t:string`) The unique name of the calculated
    attribute.
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  """
  @spec update_calculated_attribute_definition(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_calculated_attribute_definition_request(),
          Keyword.t()
        ) ::
          {:ok, update_calculated_attribute_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_calculated_attribute_definition_errors()}
  def update_calculated_attribute_definition(
        %Client{} = client,
        calculated_attribute_name,
        domain_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/calculated-attributes/#{AWS.Util.encode_uri(calculated_attribute_name)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the properties of a domain, including creating or selecting a dead
  letter queue or an encryption key. After a domain is created, the name can’t
  be changed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20UpdateDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  """
  @spec update_domain(AWS.Client.t(), String.t(), update_domain_request(), Keyword.t()) ::
          {:ok, update_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_domain_errors()}
  def update_domain(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the properties of a profile. The ProfileId is required for updating a
  customer profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=customerprofiles%20UpdateProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_name` (`t:string`) The unique name of the domain.

  ## Optional parameters:
  """
  @spec update_profile(AWS.Client.t(), String.t(), update_profile_request(), Keyword.t()) ::
          {:ok, update_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_profile_errors()}
  def update_profile(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
