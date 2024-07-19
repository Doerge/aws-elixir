# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ConnectCases do
  @moduledoc """
  With Amazon Connect Cases, your agents can track and manage customer issues that
  require multiple interactions, follow-up tasks, and teams in your contact
  center. A case represents a customer issue. It records the issue, the steps
  and interactions taken to resolve the issue, and the outcome. For more
  information, see [Amazon Connect
  Cases](https://docs.aws.amazon.com/connect/latest/adminguide/cases.html) in
  the *Amazon Connect Administrator Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      contact_filter() :: %{
        "channel" => list(String.t()()),
        "contactArn" => String.t()
      }
      
  """
  @type contact_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_domain_request() :: %{}
      
  """
  @type get_domain_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_domain_response() :: %{}
      
  """
  @type delete_domain_response() :: %{}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_layout_request() :: %{
        optional("content") => list(),
        optional("name") => String.t()
      }
      
  """
  @type update_layout_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_case_audit_events_response() :: %{
        "auditEvents" => list(audit_event()()),
        "nextToken" => String.t()
      }
      
  """
  @type get_case_audit_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_related_items_response() :: %{
        optional("nextToken") => String.t(),
        required("relatedItems") => list(search_related_items_response_item()())
      }
      
  """
  @type search_related_items_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_fields_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_fields_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_cases_request() :: %{
        optional("fields") => list(field_identifier()()),
        optional("filter") => list(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("searchTerm") => [String.t()],
        optional("sorts") => list(sort()())
      }
      
  """
  @type search_cases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_case_audit_events_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }
      
  """
  @type get_case_audit_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_templates_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => list(String.t()())
      }
      
  """
  @type list_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_case_request() :: %{
        optional("clientToken") => [String.t()],
        optional("performedBy") => list(),
        required("fields") => list(field_value()()),
        required("templateId") => String.t()
      }
      
  """
  @type create_case_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      field_option_error() :: %{
        "errorCode" => [String.t()],
        "message" => [String.t()],
        "value" => String.t()
      }
      
  """
  @type field_option_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_layouts_response() :: %{
        optional("nextToken") => String.t(),
        required("layouts") => list(layout_summary()())
      }
      
  """
  @type list_layouts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_summary() :: %{
        "domainArn" => String.t(),
        "domainId" => String.t(),
        "name" => String.t()
      }
      
  """
  @type domain_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_template_request() :: %{
        optional("description") => String.t(),
        optional("layoutConfiguration") => layout_configuration(),
        optional("requiredFields") => list(required_field()()),
        optional("status") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_template_response() :: %{
        optional("createdTime") => non_neg_integer(),
        optional("deleted") => boolean(),
        optional("description") => String.t(),
        optional("lastModifiedTime") => non_neg_integer(),
        optional("layoutConfiguration") => layout_configuration(),
        optional("requiredFields") => list(required_field()()),
        optional("tags") => map(),
        required("name") => String.t(),
        required("status") => String.t(),
        required("templateArn") => String.t(),
        required("templateId") => String.t()
      }
      
  """
  @type get_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_put_field_options_request() :: %{
        required("options") => list(field_option()())
      }
      
  """
  @type batch_put_field_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_field_request() :: %{}
      
  """
  @type delete_field_request() :: %{}

  @typedoc """

  ## Example:
      
      create_case_response() :: %{
        required("caseArn") => String.t(),
        required("caseId") => String.t()
      }
      
  """
  @type create_case_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_filter() :: %{
        "fileArn" => String.t()
      }
      
  """
  @type file_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      comment_filter() :: %{}
      
  """
  @type comment_filter() :: %{}

  @typedoc """

  ## Example:
      
      list_field_options_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("values") => list(String.t()())
      }
      
  """
  @type list_field_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_layout_request() :: %{
        required("content") => list(),
        required("name") => String.t()
      }
      
  """
  @type create_layout_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_template_request() :: %{
        optional("description") => String.t(),
        optional("layoutConfiguration") => layout_configuration(),
        optional("name") => String.t(),
        optional("requiredFields") => list(required_field()()),
        optional("status") => String.t()
      }
      
  """
  @type update_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_cases_for_contact_response() :: %{
        optional("nextToken") => String.t(),
        required("cases") => list(case_summary()())
      }
      
  """
  @type list_cases_for_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_field_response() :: %{
        required("fieldArn") => String.t(),
        required("fieldId") => String.t()
      }
      
  """
  @type create_field_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_case_response() :: %{
        optional("nextToken") => String.t(),
        optional("tags") => map(),
        required("fields") => list(field_value()()),
        required("templateId") => String.t()
      }
      
  """
  @type get_case_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      comment_content() :: %{
        "body" => String.t(),
        "contentType" => String.t()
      }
      
  """
  @type comment_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      required_field() :: %{
        "fieldId" => String.t()
      }
      
  """
  @type required_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_layout_response() :: %{}
      
  """
  @type delete_layout_response() :: %{}

  @typedoc """

  ## Example:
      
      search_cases_response_item() :: %{
        "caseId" => String.t(),
        "fields" => list(field_value()()),
        "tags" => map(),
        "templateId" => String.t()
      }
      
  """
  @type search_cases_response_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_related_items_request() :: %{
        optional("filters") => list(list()()),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }
      
  """
  @type search_related_items_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_domain_request() :: %{}
      
  """
  @type delete_domain_request() :: %{}

  @typedoc """

  ## Example:
      
      basic_layout() :: %{
        "moreInfo" => layout_sections(),
        "topPanel" => layout_sections()
      }
      
  """
  @type basic_layout() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      empty_field_value() :: %{}
      
  """
  @type empty_field_value() :: %{}

  @typedoc """

  ## Example:
      
      delete_template_request() :: %{}
      
  """
  @type delete_template_request() :: %{}

  @typedoc """

  ## Example:
      
      get_case_event_configuration_request() :: %{}
      
  """
  @type get_case_event_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_domain_request() :: %{
        required("name") => String.t()
      }
      
  """
  @type create_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_field_request() :: %{
        required("fields") => list(field_identifier()())
      }
      
  """
  @type batch_get_field_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_case_event_configuration_response() :: %{
        required("eventBridge") => event_bridge_configuration()
      }
      
  """
  @type get_case_event_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      audit_event_field() :: %{
        "eventFieldId" => String.t(),
        "newValue" => list(),
        "oldValue" => list()
      }
      
  """
  @type audit_event_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_case_request() :: %{
        optional("nextToken") => String.t(),
        required("fields") => list(field_identifier()())
      }
      
  """
  @type get_case_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_related_items_response_item() :: %{
        "associationTime" => non_neg_integer(),
        "content" => list(),
        "performedBy" => list(),
        "relatedItemId" => String.t(),
        "tags" => map(),
        "type" => String.t()
      }
      
  """
  @type search_related_items_response_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_domains_response() :: %{
        optional("nextToken") => String.t(),
        required("domains") => list(domain_summary()())
      }
      
  """
  @type list_domains_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_field_response() :: %{}
      
  """
  @type update_field_response() :: %{}

  @typedoc """

  ## Example:
      
      template_summary() :: %{
        "name" => String.t(),
        "status" => String.t(),
        "templateArn" => String.t(),
        "templateId" => String.t()
      }
      
  """
  @type template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_field_request() :: %{
        optional("description") => String.t(),
        required("name") => String.t(),
        required("type") => String.t()
      }
      
  """
  @type create_field_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_field_response() :: %{
        required("errors") => list(field_error()()),
        required("fields") => list(get_field_response()())
      }
      
  """
  @type batch_get_field_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_layout_response() :: %{
        required("layoutArn") => String.t(),
        required("layoutId") => String.t()
      }
      
  """
  @type create_layout_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_case_event_configuration_response() :: %{}
      
  """
  @type put_case_event_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      list_fields_response() :: %{
        optional("nextToken") => String.t(),
        required("fields") => list(field_summary()())
      }
      
  """
  @type list_fields_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sort() :: %{
        "fieldId" => String.t(),
        "sortOrder" => String.t()
      }
      
  """
  @type sort() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact() :: %{
        "contactArn" => String.t()
      }
      
  """
  @type contact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_related_item_response() :: %{
        required("relatedItemArn") => String.t(),
        required("relatedItemId") => String.t()
      }
      
  """
  @type create_related_item_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_domain_response() :: %{
        optional("tags") => map(),
        required("createdTime") => non_neg_integer(),
        required("domainArn") => String.t(),
        required("domainId") => String.t(),
        required("domainStatus") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type get_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      field_item() :: %{
        "id" => String.t()
      }
      
  """
  @type field_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      field_error() :: %{
        "errorCode" => [String.t()],
        "id" => String.t(),
        "message" => [String.t()]
      }
      
  """
  @type field_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      field_summary() :: %{
        "fieldArn" => String.t(),
        "fieldId" => String.t(),
        "name" => String.t(),
        "namespace" => String.t(),
        "type" => String.t()
      }
      
  """
  @type field_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_layouts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_layouts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_template_response() :: %{}
      
  """
  @type update_template_response() :: %{}

  @typedoc """

  ## Example:
      
      list_domains_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_domains_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => [integer()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_included_data() :: %{
        "caseData" => case_event_included_data(),
        "relatedItemData" => related_item_event_included_data()
      }
      
  """
  @type event_included_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_case_request() :: %{
        optional("performedBy") => list(),
        required("fields") => list(field_value()())
      }
      
  """
  @type update_case_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_bridge_configuration() :: %{
        "enabled" => [boolean()],
        "includedData" => event_included_data()
      }
      
  """
  @type event_bridge_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_field_response() :: %{}
      
  """
  @type delete_field_response() :: %{}

  @typedoc """

  ## Example:
      
      get_layout_request() :: %{}
      
  """
  @type get_layout_request() :: %{}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      field_value() :: %{
        "id" => String.t(),
        "value" => list()
      }
      
  """
  @type field_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_field_request() :: %{
        optional("description") => String.t(),
        optional("name") => String.t()
      }
      
  """
  @type update_field_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      field_option() :: %{
        "active" => [boolean()],
        "name" => String.t(),
        "value" => String.t()
      }
      
  """
  @type field_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      layout_summary() :: %{
        "layoutArn" => String.t(),
        "layoutId" => String.t(),
        "name" => String.t()
      }
      
  """
  @type layout_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_templates_response() :: %{
        optional("nextToken") => String.t(),
        required("templates") => list(template_summary()())
      }
      
  """
  @type list_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_case_event_configuration_request() :: %{
        required("eventBridge") => event_bridge_configuration()
      }
      
  """
  @type put_case_event_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      layout_sections() :: %{
        "sections" => list(list()())
      }
      
  """
  @type layout_sections() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_template_request() :: %{}
      
  """
  @type get_template_request() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => [String.t()]
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
      
      throttling_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_domain_response() :: %{
        required("domainArn") => String.t(),
        required("domainId") => String.t(),
        required("domainStatus") => String.t()
      }
      
  """
  @type create_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_layout_response() :: %{
        optional("createdTime") => non_neg_integer(),
        optional("deleted") => boolean(),
        optional("lastModifiedTime") => non_neg_integer(),
        optional("tags") => map(),
        required("content") => list(),
        required("layoutArn") => String.t(),
        required("layoutId") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type get_layout_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_cases_response() :: %{
        optional("nextToken") => String.t(),
        required("cases") => list(search_cases_response_item()())
      }
      
  """
  @type search_cases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_put_field_options_response() :: %{
        optional("errors") => list(field_option_error()())
      }
      
  """
  @type batch_put_field_options_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_case_response() :: %{}
      
  """
  @type update_case_response() :: %{}

  @typedoc """

  ## Example:
      
      create_template_response() :: %{
        required("templateArn") => String.t(),
        required("templateId") => String.t()
      }
      
  """
  @type create_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_layout_response() :: %{}
      
  """
  @type update_layout_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_template_response() :: %{}
      
  """
  @type delete_template_response() :: %{}

  @typedoc """

  ## Example:
      
      field_identifier() :: %{
        "id" => String.t()
      }
      
  """
  @type field_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_content() :: %{
        "fileArn" => String.t()
      }
      
  """
  @type file_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_layout_request() :: %{}
      
  """
  @type delete_layout_request() :: %{}

  @typedoc """

  ## Example:
      
      list_field_options_response() :: %{
        optional("nextToken") => String.t(),
        required("options") => list(field_option()())
      }
      
  """
  @type list_field_options_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_cases_for_contact_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        required("contactArn") => String.t()
      }
      
  """
  @type list_cases_for_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_related_item_request() :: %{
        optional("performedBy") => list(),
        required("content") => list(),
        required("type") => String.t()
      }
      
  """
  @type create_related_item_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_field_response() :: %{
        "createdTime" => non_neg_integer(),
        "deleted" => boolean(),
        "description" => String.t(),
        "fieldArn" => String.t(),
        "fieldId" => String.t(),
        "lastModifiedTime" => non_neg_integer(),
        "name" => String.t(),
        "namespace" => String.t(),
        "tags" => map(),
        "type" => String.t()
      }
      
  """
  @type get_field_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      case_summary() :: %{
        "caseId" => String.t(),
        "templateId" => String.t()
      }
      
  """
  @type case_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      field_group() :: %{
        "fields" => list(field_item()()),
        "name" => [String.t()]
      }
      
  """
  @type field_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      audit_event() :: %{
        "eventId" => String.t(),
        "fields" => list(audit_event_field()()),
        "performedBy" => audit_event_performed_by(),
        "performedTime" => non_neg_integer(),
        "relatedItemType" => String.t(),
        "type" => String.t()
      }
      
  """
  @type audit_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      case_event_included_data() :: %{
        "fields" => list(field_identifier()())
      }
      
  """
  @type case_event_included_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      layout_configuration() :: %{
        "defaultLayout" => String.t()
      }
      
  """
  @type layout_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      related_item_event_included_data() :: %{
        "includeContent" => [boolean()]
      }
      
  """
  @type related_item_event_included_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact_content() :: %{
        "channel" => String.t(),
        "connectedToSystemTime" => non_neg_integer(),
        "contactArn" => String.t()
      }
      
  """
  @type contact_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      audit_event_performed_by() :: %{
        "iamPrincipalArn" => String.t(),
        "user" => list()
      }
      
  """
  @type audit_event_performed_by() :: %{String.t() => any()}

  @type batch_get_field_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_put_field_options_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_case_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_domain_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_field_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_layout_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_related_item_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_domain_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_field_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_layout_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_case_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_case_audit_events_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_case_event_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_domain_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_layout_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_cases_for_contact_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_domains_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_field_options_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_fields_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_layouts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_templates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_case_event_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type search_cases_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type search_related_items_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_case_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_field_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_layout_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2022-10-03",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cases",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ConnectCases",
      signature_version: "v4",
      signing_name: "cases",
      target_prefix: nil
    }
  end

  @doc """
  Returns the description for the list of fields in the request parameters.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20BatchGetField&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.

  ## Optional parameters:
  """

  @spec batch_get_field(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, batch_get_field_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_field_errors()}

  def batch_get_field(%Client{} = client, domain_id, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/fields-batch"

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
  Creates and updates a set of field options for a single select field in a Cases
  domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20BatchPutFieldOptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.
  * `:field_id` (`t:string`) The unique identifier of a field.

  ## Optional parameters:
  """

  @spec batch_put_field_options(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, batch_put_field_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_put_field_options_errors()}

  def batch_put_field_options(%Client{} = client, domain_id, field_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/fields/#{AWS.Util.encode_uri(field_id)}/options"

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
  If you provide a value for `PerformedBy.UserArn` you must also have
  [connect:DescribeUser](https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribeUser.html)
  permission on the User ARN resource that you provide Creates a case in the
  specified Cases domain. Case system and custom fields are taken as an array
  id/value pairs with a declared data types.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20CreateCase&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.

  ## Optional parameters:
  """

  @spec create_case(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_case_errors()}

  def create_case(%Client{} = client, domain_id, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/cases"

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
  Creates a domain, which is a container for all case data, such as cases, fields,
  templates and layouts. Each Amazon Connect instance can be associated with
  only one Cases domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20CreateDomain&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_domain(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_domain_errors()}

  def create_domain(%Client{} = client, options \\ []) do
    url_path = "/domains"

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
  Creates a field in the Cases domain. This field is used to define the case
  object model (that is, defines what data can be captured on cases) in a Cases
  domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20CreateField&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.

  ## Optional parameters:
  """

  @spec create_field(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_field_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_field_errors()}

  def create_field(%Client{} = client, domain_id, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/fields"

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
  Creates a layout in the Cases domain. Layouts define the following configuration
  in the top section and More Info tab of the Cases user interface:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20CreateLayout&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.

  ## Optional parameters:
  """

  @spec create_layout(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_layout_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_layout_errors()}

  def create_layout(%Client{} = client, domain_id, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/layouts"

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
  Creates a related item (comments, tasks, and contacts) and associates it with a
  case.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20CreateRelatedItem&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:case_id` (`t:string`) A unique identifier of the case.
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.

  ## Optional parameters:
  """

  @spec create_related_item(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, create_related_item_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_related_item_errors()}

  def create_related_item(%Client{} = client, case_id, domain_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/cases/#{AWS.Util.encode_uri(case_id)}/related-items/"

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
  Creates a template in the Cases domain. This template is used to define the case
  object model (that is, to define what data can be captured on cases) in a
  Cases domain. A template must have a unique name within a domain, and it must
  reference existing field IDs and layout IDs. Additionally, multiple fields
  with same IDs are not allowed within the same Template. A template can be
  either Active or Inactive, as indicated by its status. Inactive templates
  cannot be used to create cases.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20CreateTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.

  ## Optional parameters:
  """

  @spec create_template(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_template_errors()}

  def create_template(%Client{} = client, domain_id, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/templates"

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
  Deletes a Cases domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20DeleteDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.

  ## Optional parameters:
  """

  @spec delete_domain(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_domain_errors()}

  def delete_domain(%Client{} = client, domain_id, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}"

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
  Deletes a field from a cases template. You can delete up to 100 fields per
  domain. After a field is deleted:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20DeleteField&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.
  * `:field_id` (`t:string`) Unique identifier of the field.

  ## Optional parameters:
  """

  @spec delete_field(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_field_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_field_errors()}

  def delete_field(%Client{} = client, domain_id, field_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/fields/#{AWS.Util.encode_uri(field_id)}"

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
  Deletes a layout from a cases template. You can delete up to 100 layouts per
  domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20DeleteLayout&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.
  * `:layout_id` (`t:string`) The unique identifier of the layout.

  ## Optional parameters:
  """

  @spec delete_layout(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_layout_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_layout_errors()}

  def delete_layout(%Client{} = client, domain_id, layout_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/layouts/#{AWS.Util.encode_uri(layout_id)}"

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
  Deletes a cases template. You can delete up to 100 templates per domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20DeleteTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.
  * `:template_id` (`t:string`) A unique identifier of a template.

  ## Optional parameters:
  """

  @spec delete_template(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_template_errors()}

  def delete_template(%Client{} = client, domain_id, template_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/templates/#{AWS.Util.encode_uri(template_id)}"

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
  Returns information about a specific case if it exists.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20GetCase&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:case_id` (`t:string`) A unique identifier of the case.
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.

  ## Optional parameters:
  """

  @spec get_case(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_case_errors()}

  def get_case(%Client{} = client, case_id, domain_id, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/cases/#{AWS.Util.encode_uri(case_id)}"

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
  Returns the audit history about a specific case if it exists.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20GetCaseAuditEvents&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:case_id` (`t:string`) A unique identifier of the case.
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.

  ## Optional parameters:
  """

  @spec get_case_audit_events(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_case_audit_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_case_audit_events_errors()}

  def get_case_audit_events(%Client{} = client, case_id, domain_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/cases/#{AWS.Util.encode_uri(case_id)}/audit-history"

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
  Returns the case event publishing configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20GetCaseEventConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.

  ## Optional parameters:
  """

  @spec get_case_event_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_case_event_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_case_event_configuration_errors()}

  def get_case_event_configuration(%Client{} = client, domain_id, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/case-event-configuration"

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
  Returns information about a specific domain if it exists.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20GetDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.

  ## Optional parameters:
  """

  @spec get_domain(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_domain_errors()}

  def get_domain(%Client{} = client, domain_id, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}"

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
  Returns the details for the requested layout.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20GetLayout&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.
  * `:layout_id` (`t:string`) The unique identifier of the layout.

  ## Optional parameters:
  """

  @spec get_layout(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_layout_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_layout_errors()}

  def get_layout(%Client{} = client, domain_id, layout_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/layouts/#{AWS.Util.encode_uri(layout_id)}"

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
  Returns the details for the requested template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20GetTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.
  * `:template_id` (`t:string`) A unique identifier of a template.

  ## Optional parameters:
  """

  @spec get_template(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_template_errors()}

  def get_template(%Client{} = client, domain_id, template_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/templates/#{AWS.Util.encode_uri(template_id)}"

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
  Lists cases for a given contact.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20ListCasesForContact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.

  ## Optional parameters:
  """

  @spec list_cases_for_contact(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_cases_for_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_cases_for_contact_errors()}

  def list_cases_for_contact(%Client{} = client, domain_id, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/list-cases-for-contact"

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
  Lists all cases domains in the Amazon Web Services account. Each list item is a
  condensed summary object of the domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20ListDomains&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """

  @spec list_domains(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_domains_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_domains_errors()}

  def list_domains(%Client{} = client, options \\ []) do
    url_path = "/domains-list"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Lists all of the field options for a field identifier in the domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20ListFieldOptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.
  * `:field_id` (`t:string`) The unique identifier of a field.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  * `:values` (`t:list[com.amazonaws.connectcases#Value]`) A list of FieldOption
  values to filter on for ListFieldOptions.
  """

  @spec list_field_options(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_field_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_field_options_errors()}

  def list_field_options(%Client{} = client, domain_id, field_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/fields/#{AWS.Util.encode_uri(field_id)}/options-list"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, values: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :values) do
        [{"values", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :values])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Lists all fields in a Cases domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20ListFields&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """

  @spec list_fields(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_fields_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_fields_errors()}

  def list_fields(%Client{} = client, domain_id, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/fields-list"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Lists all layouts in the given cases domain. Each list item is a condensed
  summary object of the layout.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20ListLayouts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  """

  @spec list_layouts(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_layouts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_layouts_errors()}

  def list_layouts(%Client{} = client, domain_id, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/layouts-list"

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

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Lists tags for a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string`) The Amazon Resource Name (ARN)

  ## Optional parameters:
  """

  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}

  def list_tags_for_resource(%Client{} = client, arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(arn)}"

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
  Lists all of the templates in a Cases domain. Each list item is a condensed
  summary object of the template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20ListTemplates&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return per page.
  * `:next_token` (`t:string`) The token for the next set of results. Use the
  value returned in the previous response in the next request to retrieve the
  next set of results.
  * `:status` (`t:list[com.amazonaws.connectcases#TemplateStatus]`) A list of
  status values to filter on.
  """

  @spec list_templates(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_templates_errors()}

  def list_templates(%Client{} = client, domain_id, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/templates-list"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, status: nil]

    options =
      Keyword.validate!(
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
      |> Keyword.drop([:max_results, :next_token, :status])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Adds case event publishing configuration. For a complete list of fields you can
  add to the event message, see [Create case
  fields](https://docs.aws.amazon.com/connect/latest/adminguide/case-fields.html)
  in the *Amazon Connect Administrator Guide*

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20PutCaseEventConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.

  ## Optional parameters:
  """

  @spec put_case_event_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_case_event_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_case_event_configuration_errors()}

  def put_case_event_configuration(%Client{} = client, domain_id, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/case-event-configuration"

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
  Searches for cases within their associated Cases domain. Search results are
  returned as a paginated list of abridged case documents.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20SearchCases&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.

  ## Optional parameters:
  """

  @spec search_cases(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, search_cases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_cases_errors()}

  def search_cases(%Client{} = client, domain_id, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/cases-search"

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
  Searches for related items that are associated with a case.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20SearchRelatedItems&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:case_id` (`t:string`) A unique identifier of the case.
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.

  ## Optional parameters:
  """

  @spec search_related_items(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, search_related_items_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_related_items_errors()}

  def search_related_items(%Client{} = client, case_id, domain_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/cases/#{AWS.Util.encode_uri(case_id)}/related-items-search"

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
  Adds tags to a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string`) The Amazon Resource Name (ARN)

  ## Optional parameters:
  """

  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(arn)}"

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
  Untags a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:arn` (`t:string`) The Amazon Resource Name (ARN)
  * `:tag_keys` (`t:list[com.amazonaws.connectcases#TagKey]`) List of tag keys.

  ## Optional parameters:
  """

  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

  def untag_resource(%Client{} = client, arn, tag_keys, options \\ []) when is_binary(tag_keys) do
    url_path = "/tags/#{AWS.Util.encode_uri(arn)}"

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
  If you provide a value for `PerformedBy.UserArn` you must also have
  [connect:DescribeUser](https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribeUser.html)
  permission on the User ARN resource that you provide Updates the values of
  fields on a case. Fields to be updated are received as an array of id/value
  pairs identical to the `CreateCase` input .

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20UpdateCase&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:case_id` (`t:string`) A unique identifier of the case.
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.

  ## Optional parameters:
  """

  @spec update_case(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_case_errors()}

  def update_case(%Client{} = client, case_id, domain_id, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/cases/#{AWS.Util.encode_uri(case_id)}"

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
  Updates the properties of an existing field.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20UpdateField&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.
  * `:field_id` (`t:string`) The unique identifier of a field.

  ## Optional parameters:
  """

  @spec update_field(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_field_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_field_errors()}

  def update_field(%Client{} = client, domain_id, field_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/fields/#{AWS.Util.encode_uri(field_id)}"

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
  Updates the attributes of an existing layout. If the action is successful, the
  service sends back an HTTP 200 response with an empty HTTP body.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20UpdateLayout&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.
  * `:layout_id` (`t:string`) The unique identifier of the layout.

  ## Optional parameters:
  """

  @spec update_layout(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_layout_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_layout_errors()}

  def update_layout(%Client{} = client, domain_id, layout_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/layouts/#{AWS.Util.encode_uri(layout_id)}"

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
  Updates the attributes of an existing template. The template attributes that can
  be modified include `name`, `description`, `layoutConfiguration`,
  `requiredFields`, and `status`. At least one of these attributes must not be
  null. If a null value is provided for a given attribute, that attribute is
  ignored and its current value is preserved.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=connectcases%20UpdateTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:domain_id` (`t:string`) The unique identifier of the Cases domain.
  * `:template_id` (`t:string`) A unique identifier for the template.

  ## Optional parameters:
  """

  @spec update_template(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_template_errors()}

  def update_template(%Client{} = client, domain_id, template_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/templates/#{AWS.Util.encode_uri(template_id)}"

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
