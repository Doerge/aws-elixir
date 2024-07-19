# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.QApps do
  @moduledoc """
  The Amazon Q Apps feature capability within Amazon Q Business allows web
  experience users to create lightweight, purpose-built AI apps to fulfill
  specific tasks from within their web experience. For example, users can create
  an Q Appthat exclusively generates marketing-related content to improve your
  marketing team's productivity or a Q App for marketing content-generation like
  writing customer emails and creating promotional content using a certain style
  of voice, tone, and branding. For more information, see [Amazon Q
  App](https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/purpose-built-qapps.html)
  in the *Amazon Q Business User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      create_library_item_input() :: %{
        required("appId") => String.t(),
        required("appVersion") => integer(),
        required("categories") => list(String.t()()),
        required("instanceId") => String.t()
      }
      
  """
  @type create_library_item_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_app_item() :: %{
        "appArn" => String.t(),
        "appId" => String.t(),
        "canEdit" => [boolean()],
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "status" => [String.t()],
        "title" => String.t()
      }
      
  """
  @type user_app_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_library_item_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => [String.t()],
        "libraryItemId" => String.t(),
        "ratingCount" => [integer()],
        "status" => [String.t()],
        "updatedAt" => non_neg_integer(),
        "updatedBy" => [String.t()]
      }
      
  """
  @type create_library_item_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_document_output() :: %{
        "fileId" => [String.t()]
      }
      
  """
  @type import_document_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_library_item_input() :: %{
        optional("appId") => String.t(),
        required("instanceId") => String.t(),
        required("libraryItemId") => String.t()
      }
      
  """
  @type get_library_item_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unauthorized_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_attribute() :: %{
        "name" => String.t(),
        "value" => list()
      }
      
  """
  @type document_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      disassociate_q_app_from_user_input() :: %{
        required("appId") => String.t(),
        required("instanceId") => String.t()
      }
      
  """
  @type disassociate_q_app_from_user_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      app_definition_input() :: %{
        "cards" => list(list()()),
        "initialPrompt" => String.t()
      }
      
  """
  @type app_definition_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_q_app_session_input() :: %{
        optional("initialValues") => list(card_value()()),
        optional("tags") => map(),
        required("appId") => String.t(),
        required("appVersion") => integer(),
        required("instanceId") => String.t()
      }
      
  """
  @type start_q_app_session_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_library_item_output() :: %{
        "appId" => String.t(),
        "appVersion" => integer(),
        "categories" => list(category()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => [String.t()],
        "isRatedByUser" => [boolean()],
        "libraryItemId" => String.t(),
        "ratingCount" => [integer()],
        "status" => [String.t()],
        "updatedAt" => non_neg_integer(),
        "updatedBy" => [String.t()],
        "userCount" => [integer()]
      }
      
  """
  @type get_library_item_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_q_app_session_input() :: %{
        optional("values") => list(card_value()()),
        required("instanceId") => String.t(),
        required("sessionId") => String.t()
      }
      
  """
  @type update_q_app_session_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_q_app_input() :: %{
        required("appId") => String.t(),
        required("instanceId") => String.t()
      }
      
  """
  @type delete_q_app_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predict_q_app_output() :: %{
        "app" => predict_app_definition(),
        "problemStatement" => [String.t()]
      }
      
  """
  @type predict_q_app_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_q_app_with_user_input() :: %{
        required("appId") => String.t(),
        required("instanceId") => String.t()
      }
      
  """
  @type associate_q_app_with_user_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_q_app_input() :: %{
        optional("description") => String.t(),
        optional("tags") => map(),
        required("appDefinition") => app_definition_input(),
        required("instanceId") => String.t(),
        required("title") => String.t()
      }
      
  """
  @type create_q_app_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      q_plugin_card() :: %{
        "dependencies" => list([String.t()]()),
        "id" => String.t(),
        "pluginId" => [String.t()],
        "pluginType" => list(any()),
        "prompt" => String.t(),
        "title" => String.t(),
        "type" => list(any())
      }
      
  """
  @type q_plugin_card() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_library_item_output() :: %{
        "appId" => String.t(),
        "appVersion" => integer(),
        "categories" => list(category()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => [String.t()],
        "isRatedByUser" => [boolean()],
        "libraryItemId" => String.t(),
        "ratingCount" => [integer()],
        "status" => [String.t()],
        "updatedAt" => non_neg_integer(),
        "updatedBy" => [String.t()],
        "userCount" => [integer()]
      }
      
  """
  @type update_library_item_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_upload_card_input() :: %{
        "allowOverride" => [boolean()],
        "fileId" => String.t(),
        "filename" => String.t(),
        "id" => String.t(),
        "title" => String.t(),
        "type" => list(any())
      }
      
  """
  @type file_upload_card_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_q_app_session_output() :: %{
        "sessionArn" => [String.t()],
        "sessionId" => [String.t()]
      }
      
  """
  @type update_q_app_session_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      app_definition() :: %{
        "appDefinitionVersion" => [String.t()],
        "canEdit" => [boolean()],
        "cards" => list(list()())
      }
      
  """
  @type app_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
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
      
      library_item_member() :: %{
        "appId" => String.t(),
        "appVersion" => integer(),
        "categories" => list(category()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => [String.t()],
        "isRatedByUser" => [boolean()],
        "libraryItemId" => String.t(),
        "ratingCount" => [integer()],
        "status" => [String.t()],
        "updatedAt" => non_neg_integer(),
        "updatedBy" => [String.t()],
        "userCount" => [integer()]
      }
      
  """
  @type library_item_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()],
        "serviceCode" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_q_app_input() :: %{
        required("appId") => String.t(),
        required("instanceId") => String.t()
      }
      
  """
  @type get_q_app_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_q_app_session_input() :: %{
        required("instanceId") => String.t(),
        required("sessionId") => String.t()
      }
      
  """
  @type get_q_app_session_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_library_item_input() :: %{
        required("instanceId") => String.t(),
        required("libraryItemId") => String.t()
      }
      
  """
  @type delete_library_item_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predict_app_definition() :: %{
        "appDefinition" => app_definition_input(),
        "description" => String.t(),
        "title" => String.t()
      }
      
  """
  @type predict_app_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      card_status() :: %{
        "currentState" => list(any()),
        "currentValue" => [String.t()]
      }
      
  """
  @type card_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      q_query_card() :: %{
        "attributeFilter" => attribute_filter(),
        "dependencies" => list([String.t()]()),
        "id" => String.t(),
        "outputSource" => list(any()),
        "prompt" => String.t(),
        "title" => String.t(),
        "type" => list(any())
      }
      
  """
  @type q_query_card() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      q_plugin_card_input() :: %{
        "id" => String.t(),
        "pluginId" => String.t(),
        "prompt" => String.t(),
        "title" => String.t(),
        "type" => list(any())
      }
      
  """
  @type q_plugin_card_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_q_app_output() :: %{
        "appArn" => String.t(),
        "appDefinition" => app_definition(),
        "appId" => String.t(),
        "appVersion" => integer(),
        "createdAt" => non_neg_integer(),
        "createdBy" => [String.t()],
        "description" => String.t(),
        "initialPrompt" => String.t(),
        "requiredCapabilities" => list(list(any())()),
        "status" => list(any()),
        "title" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => [String.t()]
      }
      
  """
  @type get_q_app_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_library_item_review_input() :: %{
        required("instanceId") => String.t(),
        required("libraryItemId") => String.t()
      }
      
  """
  @type disassociate_library_item_review_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_library_items_input() :: %{
        optional("categoryId") => String.t(),
        optional("limit") => integer(),
        optional("nextToken") => String.t(),
        required("instanceId") => String.t()
      }
      
  """
  @type list_library_items_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      text_input_card_input() :: %{
        "defaultValue" => String.t(),
        "id" => String.t(),
        "placeholder" => String.t(),
        "title" => String.t(),
        "type" => list(any())
      }
      
  """
  @type text_input_card_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conversation_message() :: %{
        "body" => [String.t()],
        "type" => list(any())
      }
      
  """
  @type conversation_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_library_item_input() :: %{
        optional("categories") => list(String.t()()),
        optional("status") => list(any()),
        required("instanceId") => String.t(),
        required("libraryItemId") => String.t()
      }
      
  """
  @type update_library_item_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_q_app_output() :: %{
        "appArn" => String.t(),
        "appId" => String.t(),
        "appVersion" => integer(),
        "createdAt" => non_neg_integer(),
        "createdBy" => [String.t()],
        "description" => String.t(),
        "initialPrompt" => String.t(),
        "requiredCapabilities" => list(list(any())()),
        "status" => list(any()),
        "title" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => [String.t()]
      }
      
  """
  @type create_q_app_output() :: %{String.t() => any()}

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
      
      access_denied_exception() :: %{
        "message" => [String.t()]
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
      
      text_input_card() :: %{
        "defaultValue" => String.t(),
        "dependencies" => list([String.t()]()),
        "id" => String.t(),
        "placeholder" => String.t(),
        "title" => String.t(),
        "type" => list(any())
      }
      
  """
  @type text_input_card() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_library_items_output() :: %{
        "libraryItems" => list(library_item_member()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_library_items_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_q_app_session_output() :: %{
        "cardStatus" => map(),
        "sessionArn" => [String.t()],
        "sessionId" => [String.t()],
        "status" => list(any())
      }
      
  """
  @type get_q_app_session_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_q_apps_input() :: %{
        optional("limit") => integer(),
        optional("nextToken") => String.t(),
        required("instanceId") => String.t()
      }
      
  """
  @type list_q_apps_input() :: %{String.t() => any()}

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
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "retryAfterSeconds" => [integer()],
        "serviceCode" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_library_item_review_input() :: %{
        required("instanceId") => String.t(),
        required("libraryItemId") => String.t()
      }
      
  """
  @type associate_library_item_review_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_upload_card() :: %{
        "allowOverride" => [boolean()],
        "dependencies" => list([String.t()]()),
        "fileId" => [String.t()],
        "filename" => [String.t()],
        "id" => String.t(),
        "title" => String.t(),
        "type" => list(any())
      }
      
  """
  @type file_upload_card() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      card_value() :: %{
        "cardId" => String.t(),
        "value" => [String.t()]
      }
      
  """
  @type card_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_q_app_output() :: %{
        "appArn" => String.t(),
        "appId" => String.t(),
        "appVersion" => integer(),
        "createdAt" => non_neg_integer(),
        "createdBy" => [String.t()],
        "description" => String.t(),
        "initialPrompt" => String.t(),
        "requiredCapabilities" => list(list(any())()),
        "status" => list(any()),
        "title" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => [String.t()]
      }
      
  """
  @type update_q_app_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      category() :: %{
        "id" => String.t(),
        "title" => [String.t()]
      }
      
  """
  @type category() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_q_app_session_input() :: %{
        required("instanceId") => String.t(),
        required("sessionId") => String.t()
      }
      
  """
  @type stop_q_app_session_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attribute_filter() :: %{
        "andAllFilters" => list(attribute_filter()()),
        "containsAll" => document_attribute(),
        "containsAny" => document_attribute(),
        "equalsTo" => document_attribute(),
        "greaterThan" => document_attribute(),
        "greaterThanOrEquals" => document_attribute(),
        "lessThan" => document_attribute(),
        "lessThanOrEquals" => document_attribute(),
        "notFilter" => attribute_filter(),
        "orAllFilters" => list(attribute_filter()())
      }
      
  """
  @type attribute_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      q_query_card_input() :: %{
        "attributeFilter" => attribute_filter(),
        "id" => String.t(),
        "outputSource" => list(any()),
        "prompt" => String.t(),
        "title" => String.t(),
        "type" => list(any())
      }
      
  """
  @type q_query_card_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_q_app_input() :: %{
        optional("appDefinition") => app_definition_input(),
        optional("description") => String.t(),
        optional("title") => String.t(),
        required("appId") => String.t(),
        required("instanceId") => String.t()
      }
      
  """
  @type update_q_app_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predict_q_app_input() :: %{
        optional("options") => list(),
        required("instanceId") => String.t()
      }
      
  """
  @type predict_q_app_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      content_too_large_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }
      
  """
  @type content_too_large_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_document_input() :: %{
        optional("sessionId") => String.t(),
        required("appId") => String.t(),
        required("cardId") => String.t(),
        required("fileContentsBase64") => [String.t()],
        required("fileName") => String.t(),
        required("instanceId") => String.t(),
        required("scope") => list(any())
      }
      
  """
  @type import_document_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_q_app_session_output() :: %{
        "sessionArn" => [String.t()],
        "sessionId" => [String.t()]
      }
      
  """
  @type start_q_app_session_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_q_apps_output() :: %{
        "apps" => list(user_app_item()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_q_apps_output() :: %{String.t() => any()}

  @type associate_library_item_review_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type associate_q_app_with_user_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type create_library_item_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type create_q_app_errors() ::
          content_too_large_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type delete_library_item_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type delete_q_app_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type disassociate_library_item_review_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type disassociate_q_app_from_user_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_library_item_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_q_app_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_q_app_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type import_document_errors() ::
          content_too_large_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_library_items_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_q_apps_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | unauthorized_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type predict_q_app_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | unauthorized_exception()

  @type start_q_app_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type stop_q_app_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_library_item_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type update_q_app_errors() ::
          content_too_large_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type update_q_app_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  def metadata do
    %{
      api_version: "2023-11-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "data.qapps",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "QApps",
      signature_version: "v4",
      signing_name: "qapps",
      target_prefix: nil
    }
  end

  @doc """
  Associates a rating or review for a library item with the user submitting the
  request. This increments the rating count for the specified library item.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=qapps%20AssociateLibraryItemReview&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string`) The unique identifier for the Amazon Q Business
  application environment instance.

  ## Optional parameters:
  """

  @spec associate_library_item_review(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_library_item_review_errors()}

  def associate_library_item_review(%Client{} = client, instance_id, options \\ [])
      when is_binary(instance_id) do
    url_path = "/catalog.associateItemRating"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"instance-id", instance_id}]

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
  This operation creates a link between the user's identity calling the operation
  and a specific Q App. This is useful to mark the Q App as a *favorite* for the
  user if the user doesn't own the Amazon Q App so they can still run it and see
  it in their inventory of Q Apps.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=qapps%20AssociateQAppWithUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string`) The unique identifier of the Amazon Q Business
  application environment instance.

  ## Optional parameters:
  """

  @spec associate_q_app_with_user(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_q_app_with_user_errors()}

  def associate_q_app_with_user(%Client{} = client, instance_id, options \\ [])
      when is_binary(instance_id) do
    url_path = "/apps.install"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"instance-id", instance_id}]

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
  Creates a new library item for an Amazon Q App, allowing it to be discovered and
  used by other allowed users.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=qapps%20CreateLibraryItem&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string`) The unique identifier of the Amazon Q Business
  application environment instance.

  ## Optional parameters:
  """

  @spec create_library_item(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_library_item_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_library_item_errors()}

  def create_library_item(%Client{} = client, instance_id, options \\ [])
      when is_binary(instance_id) do
    url_path = "/catalog.createItem"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"instance-id", instance_id}]

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
  Creates a new Amazon Q App based on the provided definition. The Q App
  definition specifies the cards and flow of the Q App. This operation also
  calculates the dependencies between the cards by inspecting the references in
  the prompts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=qapps%20CreateQApp&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string`) The unique identifier of the Amazon Q Business
  application environment instance.

  ## Optional parameters:
  """

  @spec create_q_app(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_q_app_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_q_app_errors()}

  def create_q_app(%Client{} = client, instance_id, options \\ []) when is_binary(instance_id) do
    url_path = "/apps.create"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"instance-id", instance_id}]

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
  Deletes a library item for an Amazon Q App, removing it from the library so it
  can no longer be discovered or used by other users.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=qapps%20DeleteLibraryItem&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string`) The unique identifier of the Amazon Q Business
  application environment instance.

  ## Optional parameters:
  """

  @spec delete_library_item(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_library_item_errors()}

  def delete_library_item(%Client{} = client, instance_id, options \\ [])
      when is_binary(instance_id) do
    url_path = "/catalog.deleteItem"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"instance-id", instance_id}]

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
  Deletes an Amazon Q App owned by the user. If the Q App was previously published
  to the library, it is also removed from the library.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=qapps%20DeleteQApp&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string`) The unique identifier of the Amazon Q Business
  application environment instance.

  ## Optional parameters:
  """

  @spec delete_q_app(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_q_app_errors()}

  def delete_q_app(%Client{} = client, instance_id, options \\ []) when is_binary(instance_id) do
    url_path = "/apps.delete"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"instance-id", instance_id}]

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
  Removes a rating or review previously submitted by the user for a library item.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=qapps%20DisassociateLibraryItemReview&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string`) The unique identifier of the Amazon Q Business
  application environment instance.

  ## Optional parameters:
  """

  @spec disassociate_library_item_review(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_library_item_review_errors()}

  def disassociate_library_item_review(%Client{} = client, instance_id, options \\ [])
      when is_binary(instance_id) do
    url_path = "/catalog.disassociateItemRating"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"instance-id", instance_id}]

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
  Disassociates a Q App from a user removing the user's access to run the Q App.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=qapps%20DisassociateQAppFromUser&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string`) The unique identifier of the Amazon Q Business
  application environment instance.

  ## Optional parameters:
  """

  @spec disassociate_q_app_from_user(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_q_app_from_user_errors()}

  def disassociate_q_app_from_user(%Client{} = client, instance_id, options \\ [])
      when is_binary(instance_id) do
    url_path = "/apps.uninstall"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"instance-id", instance_id}]

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
  Retrieves details about a library item for an Amazon Q App, including its
  metadata, categories, ratings, and usage statistics.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=qapps%20GetLibraryItem&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:library_item_id` (`t:string`) The unique identifier of the library item to
  retrieve.
  * `:instance_id` (`t:string`) The unique identifier of the Amazon Q Business
  application environment instance.

  ## Optional parameters:
  * `:app_id` (`t:string`) The unique identifier of the Amazon Q App associated
  with the library item.
  """

  @spec get_library_item(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_library_item_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_library_item_errors()}

  def get_library_item(%Client{} = client, library_item_id, instance_id, options \\ [])
      when is_binary(library_item_id) and is_binary(instance_id) do
    url_path = "/catalog.getItem"

    # Validate optional parameters
    optional_params = [app_id: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"instance-id", instance_id}]

    # Optional headers

    # Required query params
    query_params = [{"libraryItemId", library_item_id}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :app_id) do
        [{"appId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:app_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the full details of an Q App, including its definition specifying the
  cards and flow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=qapps%20GetQApp&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The unique identifier of the Q App to retrieve.
  * `:instance_id` (`t:string`) The unique identifier of the Amazon Q Business
  application environment instance.

  ## Optional parameters:
  """

  @spec get_q_app(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_q_app_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_q_app_errors()}

  def get_q_app(%Client{} = client, app_id, instance_id, options \\ [])
      when is_binary(app_id) and is_binary(instance_id) do
    url_path = "/apps.get"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"instance-id", instance_id}]

    # Optional headers

    # Required query params
    query_params = [{"appId", app_id}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the current state and results for an active session of an Amazon Q
  App.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=qapps%20GetQAppSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:session_id` (`t:string`) The unique identifier of the Q App session to
  retrieve.
  * `:instance_id` (`t:string`) The unique identifier of the Amazon Q Business
  application environment instance.

  ## Optional parameters:
  """

  @spec get_q_app_session(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_q_app_session_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_q_app_session_errors()}

  def get_q_app_session(%Client{} = client, session_id, instance_id, options \\ [])
      when is_binary(session_id) and is_binary(instance_id) do
    url_path = "/runtime.getQAppSession"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"instance-id", instance_id}]

    # Optional headers

    # Required query params
    query_params = [{"sessionId", session_id}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Uploads a file that can then be used either as a default in a `FileUploadCard`
  from Q App definition or as a file that is used inside a single Q App run. The
  purpose of the document is determined by a scope parameter that indicates
  whether it is at the app definition level or at the app session level.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=qapps%20ImportDocument&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string`) The unique identifier of the Amazon Q Business
  application environment instance.

  ## Optional parameters:
  """

  @spec import_document(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, import_document_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_document_errors()}

  def import_document(%Client{} = client, instance_id, options \\ [])
      when is_binary(instance_id) do
    url_path = "/apps.importDocument"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"instance-id", instance_id}]

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
  Lists the library items for Amazon Q Apps that are published and available for
  users in your Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=qapps%20ListLibraryItems&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string`) The unique identifier of the Amazon Q Business
  application environment instance.

  ## Optional parameters:
  * `:category_id` (`t:string`) Optional category to filter the library items by.
  * `:limit` (`t:integer`) The maximum number of library items to return in the
  response.
  * `:next_token` (`t:string`) The token to request the next page of results.
  """

  @spec list_library_items(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_library_items_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_library_items_errors()}

  def list_library_items(%Client{} = client, instance_id, options \\ [])
      when is_binary(instance_id) do
    url_path = "/catalog.list"

    # Validate optional parameters
    optional_params = [category_id: nil, limit: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"instance-id", instance_id}]

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
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :category_id) do
        [{"categoryId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:category_id, :limit, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Amazon Q Apps owned by or associated with the user either because they
  created it or because they used it from the library in the past. The user
  identity is extracted from the credentials used to invoke this operation..

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=qapps%20ListQApps&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string`) The unique identifier of the Amazon Q Business
  application environment instance.

  ## Optional parameters:
  * `:limit` (`t:integer`) The maximum number of Q Apps to return in the response.
  * `:next_token` (`t:string`) The token to request the next page of results.
  """

  @spec list_q_apps(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_q_apps_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_q_apps_errors()}

  def list_q_apps(%Client{} = client, instance_id, options \\ []) when is_binary(instance_id) do
    url_path = "/apps.list"

    # Validate optional parameters
    optional_params = [limit: nil, next_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"instance-id", instance_id}]

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
      if opt_val = Keyword.get(options, :limit) do
        [{"limit", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:limit, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags associated with an Amazon Q Apps resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=qapps%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource
  whose tags should be listed.

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
  Generates an Amazon Q App definition based on either a conversation or a problem
  statement provided as input.The resulting app definition can be used to call
  `CreateQApp`. This API doesn't create Amazon Q Apps directly.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=qapps%20PredictQApp&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string`) The unique identifier of the Amazon Q Business
  application environment instance.

  ## Optional parameters:
  """

  @spec predict_q_app(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, predict_q_app_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, predict_q_app_errors()}

  def predict_q_app(%Client{} = client, instance_id, options \\ []) when is_binary(instance_id) do
    url_path = "/apps.predictQApp"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"instance-id", instance_id}]

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
  Starts a new session for an Amazon Q App, allowing inputs to be provided and the
  app to be run.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=qapps%20StartQAppSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string`) The unique identifier of the Amazon Q Business
  application environment instance.

  ## Optional parameters:
  """

  @spec start_q_app_session(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, start_q_app_session_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_q_app_session_errors()}

  def start_q_app_session(%Client{} = client, instance_id, options \\ [])
      when is_binary(instance_id) do
    url_path = "/runtime.startQAppSession"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"instance-id", instance_id}]

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
  Stops an active session for an Amazon Q App.This deletes all data related to the
  session and makes it invalid for future uses. The results of the session will
  be persisted as part of the conversation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=qapps%20StopQAppSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string`) The unique identifier of the Amazon Q Business
  application environment instance.

  ## Optional parameters:
  """

  @spec stop_q_app_session(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_q_app_session_errors()}

  def stop_q_app_session(%Client{} = client, instance_id, options \\ [])
      when is_binary(instance_id) do
    url_path = "/runtime.deleteMiniAppRun"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"instance-id", instance_id}]

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
  Associates tags with an Amazon Q Apps resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=qapps%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource to
  tag.

  ## Optional parameters:
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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Disassociates tags from an Amazon Q Apps resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=qapps%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource to
  disassociate the tag from.
  * `:tag_keys` (`t:list[com.amazonaws.qapps#TagKey]`) The keys of the tags to
  disassociate from the resource.

  ## Optional parameters:
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
      200
    )
  end

  @doc """
  Updates the metadata and status of a library item for an Amazon Q App.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=qapps%20UpdateLibraryItem&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string`) The unique identifier of the Amazon Q Business
  application environment instance.

  ## Optional parameters:
  """

  @spec update_library_item(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_library_item_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_library_item_errors()}

  def update_library_item(%Client{} = client, instance_id, options \\ [])
      when is_binary(instance_id) do
    url_path = "/catalog.updateItem"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"instance-id", instance_id}]

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
  Updates an existing Amazon Q App, allowing modifications to its title,
  description, and definition.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=qapps%20UpdateQApp&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string`) The unique identifier of the Amazon Q Business
  application environment instance.

  ## Optional parameters:
  """

  @spec update_q_app(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_q_app_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_q_app_errors()}

  def update_q_app(%Client{} = client, instance_id, options \\ []) when is_binary(instance_id) do
    url_path = "/apps.update"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"instance-id", instance_id}]

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
  Updates the session for a given Q App `sessionId`. This is only valid when at
  least one card of the session is in the `WAITING` state. Data for each
  `WAITING` card can be provided as input. If inputs are not provided, the call
  will be accepted but session will not move forward. Inputs for cards that are
  not in the `WAITING` status will be ignored.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=qapps%20UpdateQAppSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:instance_id` (`t:string`) The unique identifier of the Amazon Q Business
  application environment instance.

  ## Optional parameters:
  """

  @spec update_q_app_session(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_q_app_session_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_q_app_session_errors()}

  def update_q_app_session(%Client{} = client, instance_id, options \\ [])
      when is_binary(instance_id) do
    url_path = "/runtime.updateQAppSession"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"instance-id", instance_id}]

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
