# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSMIncidents do
  @moduledoc """
  Systems Manager Incident Manager is an incident management console designed to
  help users mitigate and recover from incidents affecting their Amazon Web
  Services-hosted applications. An incident is any unplanned interruption or
  reduction in quality of services.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      get_resource_policies_output() :: %{
        optional("nextToken") => String.t(),
        required("resourcePolicies") => list(resource_policy()())
      }
      
  """
  @type get_resource_policies_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_response_plan_output() :: %{}
      
  """
  @type update_response_plan_output() :: %{}

  @typedoc """

  ## Example:
      
      list_timeline_events_output() :: %{
        optional("nextToken") => String.t(),
        required("eventSummaries") => list(event_summary()())
      }
      
  """
  @type list_timeline_events_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_incident_findings_error() :: %{
        "code" => [String.t()],
        "findingId" => String.t(),
        "message" => [String.t()]
      }
      
  """
  @type batch_get_incident_findings_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_replication_set_output() :: %{}
      
  """
  @type delete_replication_set_output() :: %{}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_related_items_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("incidentRecordArn") => String.t()
      }
      
  """
  @type list_related_items_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_timeline_event_output() :: %{}
      
  """
  @type delete_timeline_event_output() :: %{}

  @typedoc """

  ## Example:
      
      list_replication_sets_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_replication_sets_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      related_item() :: %{
        "generatedId" => String.t(),
        "identifier" => item_identifier(),
        "title" => [String.t()]
      }
      
  """
  @type related_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      incident_record_source() :: %{
        "createdBy" => String.t(),
        "invokedBy" => String.t(),
        "resourceArn" => String.t(),
        "source" => String.t()
      }
      
  """
  @type incident_record_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      start_incident_input() :: %{
        optional("clientToken") => String.t(),
        optional("impact") => integer(),
        optional("relatedItems") => list(related_item()()),
        optional("title") => String.t(),
        optional("triggerDetails") => trigger_details(),
        required("responsePlanArn") => String.t()
      }
      
  """
  @type start_incident_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_incident_record_input() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_incident_record_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_deletion_protection_input() :: %{
        optional("clientToken") => String.t(),
        required("arn") => String.t(),
        required("deletionProtected") => [boolean()]
      }
      
  """
  @type update_deletion_protection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_incident_findings_output() :: %{
        "errors" => list(batch_get_incident_findings_error()()),
        "findings" => list(finding()())
      }
      
  """
  @type batch_get_incident_findings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_region_action() :: %{
        "regionName" => String.t()
      }
      
  """
  @type delete_region_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      finding_summary() :: %{
        "id" => String.t(),
        "lastModifiedTime" => [non_neg_integer()]
      }
      
  """
  @type finding_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_response_plan_output() :: %{
        required("arn") => String.t()
      }
      
  """
  @type create_response_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_incident_findings_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        required("incidentRecordArn") => String.t()
      }
      
  """
  @type list_incident_findings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_response_plan_input() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_response_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_incident_output() :: %{
        required("incidentRecordArn") => String.t()
      }
      
  """
  @type start_incident_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_output() :: %{
        required("policyId") => String.t()
      }
      
  """
  @type put_resource_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      timeline_event() :: %{
        "eventData" => String.t(),
        "eventId" => String.t(),
        "eventReferences" => list(list()()),
        "eventTime" => [non_neg_integer()],
        "eventType" => String.t(),
        "eventUpdatedTime" => [non_neg_integer()],
        "incidentRecordArn" => String.t()
      }
      
  """
  @type timeline_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_replication_set_input() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_replication_set_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_input() :: %{
        required("policyId") => String.t(),
        required("resourceArn") => String.t()
      }
      
  """
  @type delete_resource_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_deletion_protection_output() :: %{}
      
  """
  @type update_deletion_protection_output() :: %{}

  @typedoc """

  ## Example:
      
      pager_duty_incident_detail() :: %{
        "autoResolve" => [boolean()],
        "id" => [String.t()],
        "secretId" => [String.t()]
      }
      
  """
  @type pager_duty_incident_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_replication_set_input() :: %{
        optional("clientToken") => String.t(),
        required("actions") => list(list()()),
        required("arn") => String.t()
      }
      
  """
  @type update_replication_set_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_incident_findings_input() :: %{
        required("findingIds") => list(String.t()()),
        required("incidentRecordArn") => String.t()
      }
      
  """
  @type batch_get_incident_findings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_deploy_deployment() :: %{
        "deploymentGroupArn" => String.t(),
        "deploymentId" => [String.t()],
        "endTime" => [non_neg_integer()],
        "startTime" => [non_neg_integer()]
      }
      
  """
  @type code_deploy_deployment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_incident_records_output() :: %{
        optional("nextToken") => String.t(),
        required("incidentRecordSummaries") => list(incident_record_summary()())
      }
      
  """
  @type list_incident_records_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_incident_record_output() :: %{}
      
  """
  @type update_incident_record_output() :: %{}

  @typedoc """

  ## Example:
      
      update_response_plan_input() :: %{
        optional("actions") => list(list()()),
        optional("chatChannel") => list(),
        optional("clientToken") => String.t(),
        optional("displayName") => String.t(),
        optional("engagements") => list(String.t()()),
        optional("incidentTemplateDedupeString") => String.t(),
        optional("incidentTemplateImpact") => integer(),
        optional("incidentTemplateNotificationTargets") => list(list()()),
        optional("incidentTemplateSummary") => String.t(),
        optional("incidentTemplateTags") => map(),
        optional("incidentTemplateTitle") => String.t(),
        optional("integrations") => list(list()()),
        required("arn") => String.t()
      }
      
  """
  @type update_response_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_set() :: %{
        "arn" => String.t(),
        "createdBy" => String.t(),
        "createdTime" => [non_neg_integer()],
        "deletionProtected" => [boolean()],
        "lastModifiedBy" => String.t(),
        "lastModifiedTime" => [non_neg_integer()],
        "regionMap" => map(),
        "status" => String.t()
      }
      
  """
  @type replication_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t(),
        "resourceIdentifier" => [String.t()],
        "resourceType" => String.t(),
        "retryAfter" => [non_neg_integer()]
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t(),
        "resourceIdentifier" => [String.t()],
        "resourceType" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_incident_record_output() :: %{
        required("incidentRecord") => incident_record()
      }
      
  """
  @type get_incident_record_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_input() :: %{
        required("policy") => String.t(),
        required("resourceArn") => String.t()
      }
      
  """
  @type put_resource_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_policies_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("resourceArn") => String.t()
      }
      
  """
  @type get_resource_policies_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      item_identifier() :: %{
        "type" => String.t(),
        "value" => list()
      }
      
  """
  @type item_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_replication_sets_output() :: %{
        optional("nextToken") => String.t(),
        required("replicationSetArns") => list(String.t()())
      }
      
  """
  @type list_replication_sets_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t(),
        "quotaCode" => [String.t()],
        "resourceIdentifier" => [String.t()],
        "resourceType" => String.t(),
        "serviceCode" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_incident_findings_output() :: %{
        "findings" => list(finding_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_incident_findings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pager_duty_incident_configuration() :: %{
        "serviceId" => [String.t()]
      }
      
  """
  @type pager_duty_incident_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_timeline_event_output() :: %{}
      
  """
  @type update_timeline_event_output() :: %{}

  @typedoc """

  ## Example:
      
      update_incident_record_input() :: %{
        optional("chatChannel") => list(),
        optional("clientToken") => String.t(),
        optional("impact") => integer(),
        optional("notificationTargets") => list(list()()),
        optional("status") => String.t(),
        optional("summary") => String.t(),
        optional("title") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type update_incident_record_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      finding() :: %{
        "creationTime" => [non_neg_integer()],
        "details" => list(),
        "id" => String.t(),
        "lastModifiedTime" => [non_neg_integer()]
      }
      
  """
  @type finding() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_related_items_input() :: %{
        optional("clientToken") => String.t(),
        required("incidentRecordArn") => String.t(),
        required("relatedItemsUpdate") => list()
      }
      
  """
  @type update_related_items_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        required("tags") => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pager_duty_configuration() :: %{
        "name" => [String.t()],
        "pagerDutyIncidentConfiguration" => pager_duty_incident_configuration(),
        "secretId" => [String.t()]
      }
      
  """
  @type pager_duty_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trigger_details() :: %{
        "rawData" => String.t(),
        "source" => String.t(),
        "timestamp" => [non_neg_integer()],
        "triggerArn" => String.t()
      }
      
  """
  @type trigger_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_timeline_event_input() :: %{
        required("eventId") => String.t(),
        required("incidentRecordArn") => String.t()
      }
      
  """
  @type get_timeline_event_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_response_plans_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_response_plans_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "condition" => list(),
        "key" => [String.t()]
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_summary() :: %{
        "eventId" => String.t(),
        "eventReferences" => list(list()()),
        "eventTime" => [non_neg_integer()],
        "eventType" => String.t(),
        "eventUpdatedTime" => [non_neg_integer()],
        "incidentRecordArn" => String.t()
      }
      
  """
  @type event_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_policy() :: %{
        "policyDocument" => String.t(),
        "policyId" => String.t(),
        "ramResourceShareRegion" => [String.t()]
      }
      
  """
  @type resource_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_timeline_event_output() :: %{
        required("event") => timeline_event()
      }
      
  """
  @type get_timeline_event_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_output() :: %{}
      
  """
  @type delete_resource_policy_output() :: %{}

  @typedoc """

  ## Example:
      
      get_response_plan_output() :: %{
        optional("actions") => list(list()()),
        optional("chatChannel") => list(),
        optional("displayName") => String.t(),
        optional("engagements") => list(String.t()()),
        optional("integrations") => list(list()()),
        required("arn") => String.t(),
        required("incidentTemplate") => incident_template(),
        required("name") => String.t()
      }
      
  """
  @type get_response_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_timeline_events_input() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => String.t(),
        optional("sortOrder") => String.t(),
        required("incidentRecordArn") => String.t()
      }
      
  """
  @type list_timeline_events_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      incident_record_summary() :: %{
        "arn" => String.t(),
        "creationTime" => [non_neg_integer()],
        "impact" => integer(),
        "incidentRecordSource" => incident_record_source(),
        "resolvedTime" => [non_neg_integer()],
        "status" => String.t(),
        "title" => String.t()
      }
      
  """
  @type incident_record_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_related_items_output() :: %{}
      
  """
  @type update_related_items_output() :: %{}

  @typedoc """

  ## Example:
      
      region_info() :: %{
        "sseKmsKeyId" => String.t(),
        "status" => String.t(),
        "statusMessage" => [String.t()],
        "statusUpdateDateTime" => [non_neg_integer()]
      }
      
  """
  @type region_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ssm_automation() :: %{
        "documentName" => [String.t()],
        "documentVersion" => [String.t()],
        "dynamicParameters" => map(),
        "parameters" => map(),
        "roleArn" => String.t(),
        "targetAccount" => String.t()
      }
      
  """
  @type ssm_automation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      region_map_input_value() :: %{
        "sseKmsKeyId" => String.t()
      }
      
  """
  @type region_map_input_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{}
      
  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:
      
      create_replication_set_input() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => map(),
        required("regions") => map()
      }
      
  """
  @type create_replication_set_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_timeline_event_output() :: %{
        required("eventId") => String.t(),
        required("incidentRecordArn") => String.t()
      }
      
  """
  @type create_timeline_event_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t(),
        "quotaCode" => [String.t()],
        "serviceCode" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      incident_template() :: %{
        "dedupeString" => String.t(),
        "impact" => integer(),
        "incidentTags" => map(),
        "notificationTargets" => list(list()()),
        "summary" => String.t(),
        "title" => String.t()
      }
      
  """
  @type incident_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_incident_records_input() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_incident_records_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      response_plan_summary() :: %{
        "arn" => String.t(),
        "displayName" => String.t(),
        "name" => String.t()
      }
      
  """
  @type response_plan_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_region_action() :: %{
        "regionName" => String.t(),
        "sseKmsKeyId" => String.t()
      }
      
  """
  @type add_region_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_response_plan_output() :: %{}
      
  """
  @type delete_response_plan_output() :: %{}

  @typedoc """

  ## Example:
      
      list_response_plans_output() :: %{
        optional("nextToken") => String.t(),
        required("responsePlanSummaries") => list(response_plan_summary()())
      }
      
  """
  @type list_response_plans_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_response_plan_input() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_response_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_timeline_event_input() :: %{
        optional("clientToken") => String.t(),
        optional("eventData") => String.t(),
        optional("eventReferences") => list(list()()),
        optional("eventTime") => [non_neg_integer()],
        optional("eventType") => String.t(),
        required("eventId") => String.t(),
        required("incidentRecordArn") => String.t()
      }
      
  """
  @type update_timeline_event_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_replication_set_input() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_replication_set_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_related_items_output() :: %{
        optional("nextToken") => String.t(),
        required("relatedItems") => list(related_item()())
      }
      
  """
  @type list_related_items_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_replication_set_output() :: %{}
      
  """
  @type update_replication_set_output() :: %{}

  @typedoc """

  ## Example:
      
      create_timeline_event_input() :: %{
        optional("clientToken") => String.t(),
        optional("eventReferences") => list(list()()),
        required("eventData") => String.t(),
        required("eventTime") => [non_neg_integer()],
        required("eventType") => String.t(),
        required("incidentRecordArn") => String.t()
      }
      
  """
  @type create_timeline_event_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_replication_set_output() :: %{
        required("replicationSet") => replication_set()
      }
      
  """
  @type get_replication_set_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_incident_record_input() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_incident_record_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_response_plan_input() :: %{
        optional("actions") => list(list()()),
        optional("chatChannel") => list(),
        optional("clientToken") => String.t(),
        optional("displayName") => String.t(),
        optional("engagements") => list(String.t()()),
        optional("integrations") => list(list()()),
        optional("tags") => map(),
        required("incidentTemplate") => incident_template(),
        required("name") => String.t()
      }
      
  """
  @type create_response_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      empty_chat_channel() :: %{}
      
  """
  @type empty_chat_channel() :: %{}

  @typedoc """

  ## Example:
      
      cloud_formation_stack_update() :: %{
        "endTime" => [non_neg_integer()],
        "stackArn" => String.t(),
        "startTime" => [non_neg_integer()]
      }
      
  """
  @type cloud_formation_stack_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_replication_set_output() :: %{
        required("arn") => String.t()
      }
      
  """
  @type create_replication_set_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      incident_record() :: %{
        "arn" => String.t(),
        "automationExecutions" => list(list()()),
        "chatChannel" => list(),
        "creationTime" => [non_neg_integer()],
        "dedupeString" => String.t(),
        "impact" => integer(),
        "incidentRecordSource" => incident_record_source(),
        "lastModifiedBy" => String.t(),
        "lastModifiedTime" => [non_neg_integer()],
        "notificationTargets" => list(list()()),
        "resolvedTime" => [non_neg_integer()],
        "status" => String.t(),
        "summary" => String.t(),
        "title" => String.t()
      }
      
  """
  @type incident_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_incident_record_output() :: %{}
      
  """
  @type delete_incident_record_output() :: %{}

  @typedoc """

  ## Example:
      
      delete_timeline_event_input() :: %{
        required("eventId") => String.t(),
        required("incidentRecordArn") => String.t()
      }
      
  """
  @type delete_timeline_event_input() :: %{String.t() => any()}

  @type batch_get_incident_findings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_replication_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_response_plan_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_timeline_event_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_incident_record_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type delete_replication_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_response_plan_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type delete_timeline_event_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_incident_record_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_replication_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_resource_policies_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_response_plan_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_timeline_event_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_incident_findings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_incident_records_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_related_items_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_replication_sets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_response_plans_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_timeline_events_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type put_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_incident_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_deletion_protection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_incident_record_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_related_items_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_replication_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_response_plan_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_timeline_event_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ssm-incidents",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SSM Incidents",
      signature_version: "v4",
      signing_name: "ssm-incidents",
      target_prefix: nil
    }
  end

  @doc """
  Retrieves details about all specified findings for an incident, including
  descriptive details about each finding. A finding represents a recent
  application environment change made by an CodeDeploy deployment or an
  CloudFormation stack creation or update that can be investigated as a
  potential cause of the incident.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20BatchGetIncidentFindings&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec batch_get_incident_findings(AWS.Client.t(), Keyword.t()) ::
          {:ok, batch_get_incident_findings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_incident_findings_errors()}
  def batch_get_incident_findings(%Client{} = client, options \\ []) do
    url_path = "/batchGetIncidentFindings"

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
  A replication set replicates and encrypts your data to the provided Regions with
  the provided KMS key.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20CreateReplicationSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_replication_set(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_replication_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_replication_set_errors()}
  def create_replication_set(%Client{} = client, options \\ []) do
    url_path = "/createReplicationSet"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a response plan that automates the initial response to incidents. A
  response plan engages contacts, starts chat channel collaboration, and
  initiates runbooks at the beginning of an incident.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20CreateResponsePlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_response_plan(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_response_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_response_plan_errors()}
  def create_response_plan(%Client{} = client, options \\ []) do
    url_path = "/createResponsePlan"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a custom timeline event on the incident details page of an incident
  record. Incident Manager automatically creates timeline events that mark key
  moments during an incident. You can create custom timeline events to mark
  important events that Incident Manager can detect automatically.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20CreateTimelineEvent&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_timeline_event(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_timeline_event_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_timeline_event_errors()}
  def create_timeline_event(%Client{} = client, options \\ []) do
    url_path = "/createTimelineEvent"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Delete an incident record from Incident Manager.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20DeleteIncidentRecord&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec delete_incident_record(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_incident_record_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_incident_record_errors()}
  def delete_incident_record(%Client{} = client, options \\ []) do
    url_path = "/deleteIncidentRecord"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Deletes all Regions in your replication set. Deleting the replication set
  deletes all Incident Manager data.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20DeleteReplicationSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string` required) The Amazon Resource Name (ARN) of the replication
    set you're deleting.
  """
  @spec delete_replication_set(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_replication_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_replication_set_errors()}
  def delete_replication_set(%Client{} = client, arn, options \\ []) when is_binary(arn) do
    url_path = "/deleteReplicationSet"

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
    query_params = [{"arn", arn}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Deletes the resource policy that Resource Access Manager uses to share your
  Incident Manager resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20DeleteResourcePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec delete_resource_policy(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_resource_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, options \\ []) do
    url_path = "/deleteResourcePolicy"

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
  Deletes the specified response plan. Deleting a response plan stops all linked
  CloudWatch alarms and EventBridge events from creating an incident with this
  response plan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20DeleteResponsePlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec delete_response_plan(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_response_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_response_plan_errors()}
  def delete_response_plan(%Client{} = client, options \\ []) do
    url_path = "/deleteResponsePlan"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Deletes a timeline event from an incident.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20DeleteTimelineEvent&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec delete_timeline_event(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_timeline_event_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_timeline_event_errors()}
  def delete_timeline_event(%Client{} = client, options \\ []) do
    url_path = "/deleteTimelineEvent"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Returns the details for the specified incident record.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20GetIncidentRecord&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string` required) The Amazon Resource Name (ARN) of the incident
    record.
  """
  @spec get_incident_record(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_incident_record_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_incident_record_errors()}
  def get_incident_record(%Client{} = client, arn, options \\ []) when is_binary(arn) do
    url_path = "/getIncidentRecord"

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
    query_params = [{"arn", arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve your Incident Manager replication set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20GetReplicationSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string` required) The Amazon Resource Name (ARN) of the replication
    set you want to retrieve.
  """
  @spec get_replication_set(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_replication_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_replication_set_errors()}
  def get_replication_set(%Client{} = client, arn, options \\ []) when is_binary(arn) do
    url_path = "/getReplicationSet"

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
    query_params = [{"arn", arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the resource policies attached to the specified response plan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20GetResourcePolicies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    response plan with the attached resource policy.
  """
  @spec get_resource_policies(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_resource_policies_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_policies_errors()}
  def get_resource_policies(%Client{} = client, resource_arn, options \\ [])
      when is_binary(resource_arn) do
    url_path = "/getResourcePolicies"

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
    query_params = [{"resourceArn", resource_arn}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves the details of the specified response plan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20GetResponsePlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string` required) The Amazon Resource Name (ARN) of the response
    plan.
  """
  @spec get_response_plan(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_response_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_response_plan_errors()}
  def get_response_plan(%Client{} = client, arn, options \\ []) when is_binary(arn) do
    url_path = "/getResponsePlan"

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
    query_params = [{"arn", arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a timeline event based on its ID and incident record.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20GetTimelineEvent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:event_id` (`t:string` required) The ID of the event. You can get an event's
    ID when you create it, or by using ListTimelineEvents.
  * `:incident_record_arn` (`t:string` required) The Amazon Resource Name (ARN) of
    the incident that includes the timeline event.
  """
  @spec get_timeline_event(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_timeline_event_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_timeline_event_errors()}
  def get_timeline_event(%Client{} = client, event_id, incident_record_arn, options \\ [])
      when is_binary(event_id) and is_binary(incident_record_arn) do
    url_path = "/getTimelineEvent"

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
    query_params = [{"eventId", event_id}, {"incidentRecordArn", incident_record_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of the IDs of findings, plus their last modified times, that
  have been identified for a specified incident. A finding represents a recent
  application environment change made by an CloudFormation stack creation or
  update or an CodeDeploy deployment that can be investigated as a potential
  cause of the incident.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20ListIncidentFindings&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_incident_findings(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_incident_findings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_incident_findings_errors()}
  def list_incident_findings(%Client{} = client, options \\ []) do
    url_path = "/listIncidentFindings"

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
  Lists all incident records in your account. Use this command to retrieve the
  Amazon Resource Name (ARN) of the incident record you want to update.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20ListIncidentRecords&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_incident_records(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_incident_records_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_incident_records_errors()}
  def list_incident_records(%Client{} = client, options \\ []) do
    url_path = "/listIncidentRecords"

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
  List all related items for an incident record.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20ListRelatedItems&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_related_items(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_related_items_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_related_items_errors()}
  def list_related_items(%Client{} = client, options \\ []) do
    url_path = "/listRelatedItems"

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
  Lists details about the replication set configured in your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20ListReplicationSets&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_replication_sets(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_replication_sets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_replication_sets_errors()}
  def list_replication_sets(%Client{} = client, options \\ []) do
    url_path = "/listReplicationSets"

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
  Lists all response plans in your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20ListResponsePlans&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_response_plans(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_response_plans_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_response_plans_errors()}
  def list_response_plans(%Client{} = client, options \\ []) do
    url_path = "/listResponsePlans"

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
  Lists the tags that are attached to the specified response plan or incident.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    response plan or incident.
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
  Lists timeline events for the specified incident record.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20ListTimelineEvents&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_timeline_events(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_timeline_events_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_timeline_events_errors()}
  def list_timeline_events(%Client{} = client, options \\ []) do
    url_path = "/listTimelineEvents"

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
  Adds a resource policy to the specified response plan. The resource policy is
  used to share the response plan using Resource Access Manager (RAM). For more
  information about cross-account sharing, see [Cross-Region and cross-account
  incident
  management](https://docs.aws.amazon.com/incident-manager/latest/userguide/incident-manager-cross-account-cross-region.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20PutResourcePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec put_resource_policy(AWS.Client.t(), Keyword.t()) ::
          {:ok, put_resource_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, options \\ []) do
    url_path = "/putResourcePolicy"

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
  Used to start an incident from CloudWatch alarms, EventBridge events, or
  manually.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20StartIncident&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec start_incident(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_incident_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_incident_errors()}
  def start_incident(%Client{} = client, options \\ []) do
    url_path = "/startIncident"

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
  Adds a tag to a response plan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    response plan you're adding the tags to.
  """
  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Removes a tag from a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    response plan you're removing a tag from.
  * `:tag_keys` (`t:list[com.amazonaws.ssmincidents#TagKey]` required) The name of
    the tag to remove from the response plan.
  """
  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
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
      204
    )
  end

  @doc """
  Update deletion protection to either allow or deny deletion of the final Region
  in a replication set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20UpdateDeletionProtection&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec update_deletion_protection(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_deletion_protection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_deletion_protection_errors()}
  def update_deletion_protection(%Client{} = client, options \\ []) do
    url_path = "/updateDeletionProtection"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Update the details of an incident record. You can use this operation to update
  an incident record from the defined chat channel. For more information about
  using actions in chat channels, see [Interacting through
  chat](https://docs.aws.amazon.com/incident-manager/latest/userguide/chat.html#chat-interact).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20UpdateIncidentRecord&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec update_incident_record(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_incident_record_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_incident_record_errors()}
  def update_incident_record(%Client{} = client, options \\ []) do
    url_path = "/updateIncidentRecord"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Add or remove related items from the related items tab of an incident record.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20UpdateRelatedItems&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec update_related_items(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_related_items_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_related_items_errors()}
  def update_related_items(%Client{} = client, options \\ []) do
    url_path = "/updateRelatedItems"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Add or delete Regions from your replication set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20UpdateReplicationSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec update_replication_set(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_replication_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_replication_set_errors()}
  def update_replication_set(%Client{} = client, options \\ []) do
    url_path = "/updateReplicationSet"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Updates the specified response plan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20UpdateResponsePlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec update_response_plan(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_response_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_response_plan_errors()}
  def update_response_plan(%Client{} = client, options \\ []) do
    url_path = "/updateResponsePlan"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Updates a timeline event. You can update events of type `Custom Event`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ssmincidents%20UpdateTimelineEvent&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec update_timeline_event(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_timeline_event_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_timeline_event_errors()}
  def update_timeline_event(%Client{} = client, options \\ []) do
    url_path = "/updateTimelineEvent"

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end
end
