# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AmplifyUIBuilder do
  @moduledoc """
  The Amplify UI Builder API provides a programmatic interface for creating and
  configuring user interface (UI) component libraries and themes for use in your
  Amplify applications. You can then connect these UI components to an
  application's backend Amazon Web Services resources.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      no_api_render_config() :: %{}

  """
  @type no_api_render_config() :: %{}

  @typedoc """

  ## Example:

      theme() :: %{
        "appId" => [String.t()],
        "createdAt" => [non_neg_integer()],
        "environmentName" => [String.t()],
        "id" => String.t(),
        "modifiedAt" => [non_neg_integer()],
        "name" => String.t(),
        "overrides" => list(theme_values()()),
        "tags" => map(),
        "values" => list(theme_values()())
      }

  """
  @type theme() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      codegen_generic_data_non_model() :: %{
        "fields" => map()
      }

  """
  @type codegen_generic_data_non_model() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      codegen_generic_data_field() :: %{
        "dataType" => list(any()),
        "dataTypeValue" => [String.t()],
        "isArray" => [boolean()],
        "readOnly" => [boolean()],
        "relationship" => codegen_generic_data_relationship_type(),
        "required" => [boolean()]
      }

  """
  @type codegen_generic_data_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      exchange_code_for_token_response() :: %{
        required("accessToken") => String.t(),
        required("expiresIn") => [integer()],
        required("refreshToken") => String.t()
      }

  """
  @type exchange_code_for_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_theme_request() :: %{}

  """
  @type get_theme_request() :: %{}

  @typedoc """

  ## Example:

      form() :: %{
        "appId" => [String.t()],
        "cta" => form_c_t_a(),
        "dataType" => form_data_type_config(),
        "environmentName" => [String.t()],
        "fields" => map(),
        "formActionType" => list(any()),
        "id" => String.t(),
        "labelDecorator" => String.t(),
        "name" => String.t(),
        "schemaVersion" => [String.t()],
        "sectionalElements" => map(),
        "style" => form_style(),
        "tags" => map()
      }

  """
  @type form() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_store_render_config() :: %{}

  """
  @type data_store_render_config() :: %{}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      form_data_type_config() :: %{
        "dataSourceType" => String.t(),
        "dataTypeName" => [String.t()]
      }

  """
  @type form_data_type_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      codegen_job() :: %{
        "appId" => String.t(),
        "asset" => codegen_job_asset(),
        "autoGenerateForms" => [boolean()],
        "createdAt" => [non_neg_integer()],
        "dependencies" => list(codegen_dependency()()),
        "environmentName" => [String.t()],
        "features" => codegen_feature_flags(),
        "genericDataSchema" => codegen_job_generic_data_schema(),
        "id" => String.t(),
        "modifiedAt" => [non_neg_integer()],
        "renderConfig" => list(),
        "status" => list(any()),
        "statusMessage" => [String.t()],
        "tags" => map()
      }

  """
  @type codegen_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      form_c_t_a() :: %{
        "cancel" => form_button(),
        "clear" => form_button(),
        "position" => list(any()),
        "submit" => form_button()
      }

  """
  @type form_c_t_a() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_uploader_field_config() :: %{
        "acceptedFileTypes" => list([String.t()]()),
        "accessLevel" => list(any()),
        "isResumable" => [boolean()],
        "maxFileCount" => [integer()],
        "maxSize" => [integer()],
        "showThumbnails" => [boolean()]
      }

  """
  @type file_uploader_field_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      codegen_job_summary() :: %{
        "appId" => String.t(),
        "createdAt" => [non_neg_integer()],
        "environmentName" => [String.t()],
        "id" => String.t(),
        "modifiedAt" => [non_neg_integer()]
      }

  """
  @type codegen_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_form_data() :: %{
        "cta" => form_c_t_a(),
        "dataType" => form_data_type_config(),
        "fields" => map(),
        "formActionType" => list(any()),
        "labelDecorator" => String.t(),
        "name" => String.t(),
        "schemaVersion" => [String.t()],
        "sectionalElements" => map(),
        "style" => form_style()
      }

  """
  @type update_form_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      component_binding_properties_value_properties() :: %{
        "bucket" => [String.t()],
        "defaultValue" => [String.t()],
        "field" => [String.t()],
        "key" => [String.t()],
        "model" => [String.t()],
        "predicates" => list(predicate()()),
        "slotName" => [String.t()],
        "userAttribute" => [String.t()]
      }

  """
  @type component_binding_properties_value_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      component_variant() :: %{
        "overrides" => map(),
        "variantValues" => map()
      }

  """
  @type component_variant() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_form_response() :: %{
        optional("entity") => form()
      }

  """
  @type update_form_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_theme_data() :: %{
        "name" => String.t(),
        "overrides" => list(theme_values()()),
        "tags" => map(),
        "values" => list(theme_values()())
      }

  """
  @type create_theme_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sort_property() :: %{
        "direction" => list(any()),
        "field" => [String.t()]
      }

  """
  @type sort_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_component_request() :: %{}

  """
  @type delete_component_request() :: %{}

  @typedoc """

  ## Example:

      delete_form_request() :: %{}

  """
  @type delete_form_request() :: %{}

  @typedoc """

  ## Example:

      start_codegen_job_data() :: %{
        "autoGenerateForms" => [boolean()],
        "features" => codegen_feature_flags(),
        "genericDataSchema" => codegen_job_generic_data_schema(),
        "renderConfig" => list(),
        "tags" => map()
      }

  """
  @type start_codegen_job_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_component_response() :: %{
        optional("component") => component()
      }

  """
  @type get_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_metadata_flag_body() :: %{
        "newValue" => [String.t()]
      }

  """
  @type put_metadata_flag_body() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      codegen_generic_data_enum() :: %{
        "values" => list([String.t()]())
      }

  """
  @type codegen_generic_data_enum() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      form_binding_element() :: %{
        "element" => [String.t()],
        "property" => [String.t()]
      }

  """
  @type form_binding_element() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      refresh_token_response() :: %{
        required("accessToken") => String.t(),
        required("expiresIn") => [integer()]
      }

  """
  @type refresh_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_theme_response() :: %{
        optional("theme") => theme()
      }

  """
  @type get_theme_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_codegen_job_response() :: %{
        "entity" => codegen_job()
      }

  """
  @type start_codegen_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_theme_request() :: %{}

  """
  @type delete_theme_request() :: %{}

  @typedoc """

  ## Example:

      update_component_response() :: %{
        optional("entity") => component()
      }

  """
  @type update_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      component_summary() :: %{
        "appId" => [String.t()],
        "componentType" => String.t(),
        "environmentName" => [String.t()],
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type component_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      form_input_binding_properties_value_properties() :: %{
        "model" => [String.t()]
      }

  """
  @type form_input_binding_properties_value_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      component_property_binding_properties() :: %{
        "field" => [String.t()],
        "property" => [String.t()]
      }

  """
  @type component_property_binding_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_metadata_flag_request() :: %{
        required("body") => put_metadata_flag_body()
      }

  """
  @type put_metadata_flag_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      refresh_token_request_body() :: %{
        "clientId" => String.t(),
        "token" => String.t()
      }

  """
  @type refresh_token_request_body() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_metadata_response() :: %{
        required("features") => map()
      }

  """
  @type get_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_codegen_jobs_response() :: %{
        "entities" => list(codegen_job_summary()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_codegen_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_theme_response() :: %{
        optional("entity") => theme()
      }

  """
  @type create_theme_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_form_request() :: %{}

  """
  @type get_form_request() :: %{}

  @typedoc """

  ## Example:

      codegen_feature_flags() :: %{
        "isNonModelSupported" => [boolean()],
        "isRelationshipSupported" => [boolean()]
      }

  """
  @type codegen_feature_flags() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_component_response() :: %{
        optional("entity") => component()
      }

  """
  @type create_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_component_data() :: %{
        "bindingProperties" => map(),
        "children" => list(component_child()()),
        "collectionProperties" => map(),
        "componentType" => String.t(),
        "events" => map(),
        "name" => String.t(),
        "overrides" => map(),
        "properties" => map(),
        "schemaVersion" => [String.t()],
        "sourceId" => [String.t()],
        "tags" => map(),
        "variants" => list(component_variant()())
      }

  """
  @type create_component_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_codegen_jobs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()]
      }

  """
  @type list_codegen_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_component_request() :: %{
        optional("clientToken") => [String.t()],
        required("updatedComponent") => update_component_data()
      }

  """
  @type update_component_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_forms_response() :: %{
        optional("nextToken") => [String.t()],
        required("entities") => list(form()())
      }

  """
  @type export_forms_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_themes_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()]
      }

  """
  @type list_themes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_components_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()]
      }

  """
  @type list_components_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_metadata_request() :: %{}

  """
  @type get_metadata_request() :: %{}

  @typedoc """

  ## Example:

      field_config() :: %{
        "excluded" => [boolean()],
        "inputType" => field_input_config(),
        "label" => [String.t()],
        "position" => list(),
        "validations" => list(field_validation_configuration()())
      }

  """
  @type field_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_form_response() :: %{
        optional("form") => form()
      }

  """
  @type get_form_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      component_child() :: %{
        "children" => list(component_child()()),
        "componentType" => [String.t()],
        "events" => map(),
        "name" => [String.t()],
        "properties" => map(),
        "sourceId" => [String.t()]
      }

  """
  @type component_child() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      component() :: %{
        "appId" => [String.t()],
        "bindingProperties" => map(),
        "children" => list(component_child()()),
        "collectionProperties" => map(),
        "componentType" => String.t(),
        "createdAt" => [non_neg_integer()],
        "environmentName" => [String.t()],
        "events" => map(),
        "id" => String.t(),
        "modifiedAt" => [non_neg_integer()],
        "name" => String.t(),
        "overrides" => map(),
        "properties" => map(),
        "schemaVersion" => [String.t()],
        "sourceId" => [String.t()],
        "tags" => map(),
        "variants" => list(component_variant()())
      }

  """
  @type component() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      refresh_token_request() :: %{
        required("refreshTokenBody") => refresh_token_request_body()
      }

  """
  @type refresh_token_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_forms_response() :: %{
        optional("nextToken") => [String.t()],
        required("entities") => list(form_summary()())
      }

  """
  @type list_forms_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      value_mapping() :: %{
        "displayValue" => form_input_value_property(),
        "value" => form_input_value_property()
      }

  """
  @type value_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      react_start_codegen_job_data() :: %{
        "apiConfiguration" => list(),
        "dependencies" => map(),
        "inlineSourceMap" => [boolean()],
        "module" => list(any()),
        "renderTypeDeclarations" => [boolean()],
        "script" => list(any()),
        "target" => list(any())
      }

  """
  @type react_start_codegen_job_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_components_response() :: %{
        optional("nextToken") => [String.t()],
        required("entities") => list(component()())
      }

  """
  @type export_components_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_theme_request() :: %{
        optional("clientToken") => [String.t()],
        required("updatedTheme") => update_theme_data()
      }

  """
  @type update_theme_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_theme_request() :: %{
        optional("clientToken") => [String.t()],
        required("themeToCreate") => create_theme_data()
      }

  """
  @type create_theme_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_themes_request() :: %{
        optional("nextToken") => [String.t()]
      }

  """
  @type export_themes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      exchange_code_for_token_request() :: %{
        required("request") => exchange_code_for_token_request_body()
      }

  """
  @type exchange_code_for_token_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_codegen_job_request() :: %{
        optional("clientToken") => [String.t()],
        required("codegenJobToCreate") => start_codegen_job_data()
      }

  """
  @type start_codegen_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_form_request() :: %{
        optional("clientToken") => [String.t()],
        required("formToCreate") => create_form_data()
      }

  """
  @type create_form_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_codegen_job_response() :: %{
        "job" => codegen_job()
      }

  """
  @type get_codegen_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_component_request() :: %{
        optional("clientToken") => [String.t()],
        required("componentToCreate") => create_component_data()
      }

  """
  @type create_component_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sectional_element() :: %{
        "excluded" => [boolean()],
        "level" => [integer()],
        "orientation" => [String.t()],
        "position" => list(),
        "text" => [String.t()],
        "type" => [String.t()]
      }

  """
  @type sectional_element() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      exchange_code_for_token_request_body() :: %{
        "clientId" => String.t(),
        "code" => String.t(),
        "redirectUri" => [String.t()]
      }

  """
  @type exchange_code_for_token_request_body() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mutation_action_set_state_parameter() :: %{
        "componentName" => [String.t()],
        "property" => [String.t()],
        "set" => component_property()
      }

  """
  @type mutation_action_set_state_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      codegen_job_asset() :: %{
        "downloadUrl" => [String.t()]
      }

  """
  @type codegen_job_asset() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_input_config() :: %{
        "defaultChecked" => [boolean()],
        "defaultCountryCode" => [String.t()],
        "defaultValue" => [String.t()],
        "descriptiveText" => [String.t()],
        "fileUploaderConfig" => file_uploader_field_config(),
        "isArray" => [boolean()],
        "maxValue" => [float()],
        "minValue" => [float()],
        "name" => [String.t()],
        "placeholder" => [String.t()],
        "readOnly" => [boolean()],
        "required" => [boolean()],
        "step" => [float()],
        "type" => [String.t()],
        "value" => [String.t()],
        "valueMappings" => value_mappings()
      }

  """
  @type field_input_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_codegen_job_request() :: %{}

  """
  @type get_codegen_job_request() :: %{}

  @typedoc """

  ## Example:

      create_form_data() :: %{
        "cta" => form_c_t_a(),
        "dataType" => form_data_type_config(),
        "fields" => map(),
        "formActionType" => list(any()),
        "labelDecorator" => String.t(),
        "name" => String.t(),
        "schemaVersion" => [String.t()],
        "sectionalElements" => map(),
        "style" => form_style(),
        "tags" => map()
      }

  """
  @type create_form_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      theme_value() :: %{
        "children" => list(theme_values()()),
        "value" => [String.t()]
      }

  """
  @type theme_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      form_style() :: %{
        "horizontalGap" => list(),
        "outerPadding" => list(),
        "verticalGap" => list()
      }

  """
  @type form_style() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_form_response() :: %{
        optional("entity") => form()
      }

  """
  @type create_form_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      form_input_value_property() :: %{
        "bindingProperties" => form_input_value_property_binding_properties(),
        "concat" => list(form_input_value_property()()),
        "value" => [String.t()]
      }

  """
  @type form_input_value_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      component_event() :: %{
        "action" => [String.t()],
        "bindingEvent" => [String.t()],
        "parameters" => action_parameters()
      }

  """
  @type component_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      form_input_value_property_binding_properties() :: %{
        "field" => [String.t()],
        "property" => [String.t()]
      }

  """
  @type form_input_value_property_binding_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      form_button() :: %{
        "children" => [String.t()],
        "excluded" => [boolean()],
        "position" => list()
      }

  """
  @type form_button() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      graph_q_l_render_config() :: %{
        "fragmentsFilePath" => [String.t()],
        "mutationsFilePath" => [String.t()],
        "queriesFilePath" => [String.t()],
        "subscriptionsFilePath" => [String.t()],
        "typesFilePath" => [String.t()]
      }

  """
  @type graph_q_l_render_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_forms_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()]
      }

  """
  @type list_forms_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_theme_response() :: %{
        optional("entity") => theme()
      }

  """
  @type update_theme_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      theme_values() :: %{
        "key" => [String.t()],
        "value" => theme_value()
      }

  """
  @type theme_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      component_property() :: %{
        "bindingProperties" => component_property_binding_properties(),
        "bindings" => map(),
        "collectionBindingProperties" => component_property_binding_properties(),
        "componentName" => [String.t()],
        "concat" => list(component_property()()),
        "condition" => component_condition_property(),
        "configured" => [boolean()],
        "defaultValue" => [String.t()],
        "event" => [String.t()],
        "importedValue" => [String.t()],
        "model" => [String.t()],
        "property" => [String.t()],
        "type" => [String.t()],
        "userAttribute" => [String.t()],
        "value" => [String.t()]
      }

  """
  @type component_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_parameter_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      codegen_job_generic_data_schema() :: %{
        "dataSourceType" => list(any()),
        "enums" => map(),
        "models" => map(),
        "nonModels" => map()
      }

  """
  @type codegen_job_generic_data_schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      action_parameters() :: %{
        "anchor" => component_property(),
        "fields" => map(),
        "global" => component_property(),
        "id" => component_property(),
        "model" => [String.t()],
        "state" => mutation_action_set_state_parameter(),
        "target" => component_property(),
        "type" => component_property(),
        "url" => component_property()
      }

  """
  @type action_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      form_summary() :: %{
        "appId" => [String.t()],
        "dataType" => form_data_type_config(),
        "environmentName" => [String.t()],
        "formActionType" => list(any()),
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type form_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      theme_summary() :: %{
        "appId" => [String.t()],
        "environmentName" => [String.t()],
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type theme_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_theme_data() :: %{
        "id" => String.t(),
        "name" => String.t(),
        "overrides" => list(theme_values()()),
        "values" => list(theme_values()())
      }

  """
  @type update_theme_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_form_request() :: %{
        optional("clientToken") => [String.t()],
        required("updatedForm") => update_form_data()
      }

  """
  @type update_form_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_components_request() :: %{
        optional("nextToken") => [String.t()]
      }

  """
  @type export_components_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      component_data_configuration() :: %{
        "identifiers" => list([String.t()]()),
        "model" => [String.t()],
        "predicate" => predicate(),
        "sort" => list(sort_property()())
      }

  """
  @type component_data_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      predicate() :: %{
        "and" => list(predicate()()),
        "field" => [String.t()],
        "operand" => [String.t()],
        "operandType" => String.t(),
        "operator" => [String.t()],
        "or" => list(predicate()())
      }

  """
  @type predicate() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_forms_request() :: %{
        optional("nextToken") => [String.t()]
      }

  """
  @type export_forms_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      codegen_dependency() :: %{
        "isSemVer" => [boolean()],
        "name" => [String.t()],
        "reason" => [String.t()],
        "supportedVersion" => [String.t()]
      }

  """
  @type codegen_dependency() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_components_response() :: %{
        optional("nextToken") => [String.t()],
        required("entities") => list(component_summary()())
      }

  """
  @type list_components_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      codegen_generic_data_relationship_type() :: %{
        "associatedFields" => list([String.t()]()),
        "belongsToFieldOnRelatedModel" => [String.t()],
        "canUnlinkAssociatedModel" => [boolean()],
        "isHasManyIndex" => [boolean()],
        "relatedJoinFieldName" => [String.t()],
        "relatedJoinTableName" => [String.t()],
        "relatedModelFields" => list([String.t()]()),
        "relatedModelName" => [String.t()],
        "type" => list(any())
      }

  """
  @type codegen_generic_data_relationship_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      codegen_generic_data_model() :: %{
        "fields" => map(),
        "isJoinTable" => [boolean()],
        "primaryKeys" => list([String.t()]())
      }

  """
  @type codegen_generic_data_model() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_validation_configuration() :: %{
        "numValues" => list([integer()]()),
        "strValues" => list([String.t()]()),
        "type" => [String.t()],
        "validationMessage" => [String.t()]
      }

  """
  @type field_validation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      value_mappings() :: %{
        "bindingProperties" => map(),
        "values" => list(value_mapping()())
      }

  """
  @type value_mappings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_themes_response() :: %{
        optional("nextToken") => [String.t()],
        required("entities") => list(theme_summary()())
      }

  """
  @type list_themes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      form_input_binding_properties_value() :: %{
        "bindingProperties" => form_input_binding_properties_value_properties(),
        "type" => [String.t()]
      }

  """
  @type form_input_binding_properties_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_themes_response() :: %{
        optional("nextToken") => [String.t()],
        required("entities") => list(theme()())
      }

  """
  @type export_themes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      component_binding_properties_value() :: %{
        "bindingProperties" => component_binding_properties_value_properties(),
        "defaultValue" => [String.t()],
        "type" => [String.t()]
      }

  """
  @type component_binding_properties_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_conflict_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_component_request() :: %{}

  """
  @type get_component_request() :: %{}

  @typedoc """

  ## Example:

      update_component_data() :: %{
        "bindingProperties" => map(),
        "children" => list(component_child()()),
        "collectionProperties" => map(),
        "componentType" => String.t(),
        "events" => map(),
        "id" => String.t(),
        "name" => String.t(),
        "overrides" => map(),
        "properties" => map(),
        "schemaVersion" => [String.t()],
        "sourceId" => [String.t()],
        "variants" => list(component_variant()())
      }

  """
  @type update_component_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      component_condition_property() :: %{
        "else" => component_property(),
        "field" => [String.t()],
        "operand" => [String.t()],
        "operandType" => [String.t()],
        "operator" => [String.t()],
        "property" => [String.t()],
        "then" => component_property()
      }

  """
  @type component_condition_property() :: %{String.t() => any()}

  @type create_component_errors() ::
          resource_conflict_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type create_form_errors() ::
          resource_conflict_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type create_theme_errors() ::
          resource_conflict_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type delete_component_errors() ::
          invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_form_errors() ::
          invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_theme_errors() ::
          invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type exchange_code_for_token_errors() :: invalid_parameter_exception()

  @type export_components_errors() :: invalid_parameter_exception() | internal_server_exception()

  @type export_forms_errors() :: invalid_parameter_exception() | internal_server_exception()

  @type export_themes_errors() :: invalid_parameter_exception() | internal_server_exception()

  @type get_codegen_job_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_component_errors() ::
          invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_form_errors() ::
          invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_metadata_errors() :: invalid_parameter_exception() | unauthorized_exception()

  @type get_theme_errors() ::
          invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_codegen_jobs_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type list_components_errors() :: invalid_parameter_exception() | internal_server_exception()

  @type list_forms_errors() :: invalid_parameter_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_themes_errors() :: invalid_parameter_exception() | internal_server_exception()

  @type put_metadata_flag_errors() :: invalid_parameter_exception() | unauthorized_exception()

  @type refresh_token_errors() :: invalid_parameter_exception()

  @type start_codegen_job_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type update_component_errors() ::
          resource_conflict_exception()
          | invalid_parameter_exception()
          | internal_server_exception()

  @type update_form_errors() ::
          resource_conflict_exception()
          | invalid_parameter_exception()
          | internal_server_exception()

  @type update_theme_errors() ::
          resource_conflict_exception()
          | invalid_parameter_exception()
          | internal_server_exception()

  def metadata do
    %{
      api_version: "2021-08-11",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "amplifyuibuilder",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "AmplifyUIBuilder",
      signature_version: "v4",
      signing_name: "amplifyuibuilder",
      target_prefix: nil
    }
  end

  @doc """
  Creates a new component for an Amplify app.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20CreateComponent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:`) The unique ID of the Amplify app to associate with the
    component.
  * `:environment_name` (`t:`) The name of the backend environment that is a part
    of the Amplify app.

  ## Optional parameters:
  * `:client_token` (`t:`) The unique client token.
  """
  @spec create_component(
          AWS.Client.t(),
          String.t(),
          String.t(),
          create_component_request(),
          Keyword.t()
        ) ::
          {:ok, create_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_component_errors()}
  def create_component(%Client{} = client, app_id, environment_name, input, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/components"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
  Creates a new form for an Amplify app.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20CreateForm&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:`) The unique ID of the Amplify app to associate with the form.
  * `:environment_name` (`t:`) The name of the backend environment that is a part
    of the Amplify app.

  ## Optional parameters:
  * `:client_token` (`t:`) The unique client token.
  """
  @spec create_form(AWS.Client.t(), String.t(), String.t(), create_form_request(), Keyword.t()) ::
          {:ok, create_form_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_form_errors()}
  def create_form(%Client{} = client, app_id, environment_name, input, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/forms"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
  Creates a theme to apply to the components in an Amplify app.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20CreateTheme&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:`) The unique ID of the Amplify app associated with the theme.
  * `:environment_name` (`t:`) The name of the backend environment that is a part
    of the Amplify app.

  ## Optional parameters:
  * `:client_token` (`t:`) The unique client token.
  """
  @spec create_theme(AWS.Client.t(), String.t(), String.t(), create_theme_request(), Keyword.t()) ::
          {:ok, create_theme_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_theme_errors()}
  def create_theme(%Client{} = client, app_id, environment_name, input, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/themes"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
  Deletes a component from an Amplify app.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20DeleteComponent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:`) The unique ID of the Amplify app associated with the
    component to delete.
  * `:environment_name` (`t:`) The name of the backend environment that is a part
    of the Amplify app.
  * `:id` (`t:string`) The unique ID of the component to delete.

  ## Optional parameters:
  """
  @spec delete_component(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          delete_component_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_component_errors()}
  def delete_component(%Client{} = client, app_id, environment_name, id, input, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/components/#{AWS.Util.encode_uri(id)}"

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
  Deletes a form from an Amplify app.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20DeleteForm&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:`) The unique ID of the Amplify app associated with the form to
    delete.
  * `:environment_name` (`t:`) The name of the backend environment that is a part
    of the Amplify app.
  * `:id` (`t:string`) The unique ID of the form to delete.

  ## Optional parameters:
  """
  @spec delete_form(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          delete_form_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_form_errors()}
  def delete_form(%Client{} = client, app_id, environment_name, id, input, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/forms/#{AWS.Util.encode_uri(id)}"

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
  Deletes a theme from an Amplify app.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20DeleteTheme&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:`) The unique ID of the Amplify app associated with the theme to
    delete.
  * `:environment_name` (`t:`) The name of the backend environment that is a part
    of the Amplify app.
  * `:id` (`t:string`) The unique ID of the theme to delete.

  ## Optional parameters:
  """
  @spec delete_theme(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          delete_theme_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_theme_errors()}
  def delete_theme(%Client{} = client, app_id, environment_name, id, input, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/themes/#{AWS.Util.encode_uri(id)}"

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
  This is for internal use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20ExchangeCodeForToken&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:provider` (`t:string`) The third-party provider for the token. The only
    valid value is figma.

  ## Optional parameters:
  """
  @spec exchange_code_for_token(
          AWS.Client.t(),
          String.t(),
          exchange_code_for_token_request(),
          Keyword.t()
        ) ::
          {:ok, exchange_code_for_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, exchange_code_for_token_errors()}
  def exchange_code_for_token(%Client{} = client, provider, input, options \\ []) do
    url_path = "/tokens/#{AWS.Util.encode_uri(provider)}"
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
  Exports component configurations to code that is ready to integrate into an
  Amplify app.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20ExportComponents&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:`) The unique ID of the Amplify app to export components to.
  * `:environment_name` (`t:`) The name of the backend environment that is a part
    of the Amplify app.

  ## Optional parameters:
  * `:next_token` (`t:`) The token to request the next page of results.
  """
  @spec export_components(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, export_components_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, export_components_errors()}
  def export_components(%Client{} = client, app_id, environment_name, options \\ []) do
    url_path =
      "/export/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/components"

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
    query_params = []

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
  Exports form configurations to code that is ready to integrate into an Amplify
  app.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20ExportForms&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:`) The unique ID of the Amplify app to export forms to.
  * `:environment_name` (`t:`) The name of the backend environment that is a part
    of the Amplify app.

  ## Optional parameters:
  * `:next_token` (`t:`) The token to request the next page of results.
  """
  @spec export_forms(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, export_forms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, export_forms_errors()}
  def export_forms(%Client{} = client, app_id, environment_name, options \\ []) do
    url_path =
      "/export/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/forms"

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
    query_params = []

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
  Exports theme configurations to code that is ready to integrate into an Amplify
  app.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20ExportThemes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:`) The unique ID of the Amplify app to export the themes to.
  * `:environment_name` (`t:`) The name of the backend environment that is part of
    the Amplify app.

  ## Optional parameters:
  * `:next_token` (`t:`) The token to request the next page of results.
  """
  @spec export_themes(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, export_themes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, export_themes_errors()}
  def export_themes(%Client{} = client, app_id, environment_name, options \\ []) do
    url_path =
      "/export/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/themes"

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
    query_params = []

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
  Returns an existing code generation job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20GetCodegenJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The unique ID of the Amplify app associated with the
    code generation job.
  * `:environment_name` (`t:`) The name of the backend environment that is a part
    of the Amplify app associated with the code generation job.
  * `:id` (`t:string`) The unique ID of the code generation job.

  ## Optional parameters:
  """
  @spec get_codegen_job(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_codegen_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_codegen_job_errors()}
  def get_codegen_job(%Client{} = client, app_id, environment_name, id, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/codegen-jobs/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns an existing component for an Amplify app.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20GetComponent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:`) The unique ID of the Amplify app.
  * `:environment_name` (`t:`) The name of the backend environment that is part of
    the Amplify app.
  * `:id` (`t:string`) The unique ID of the component.

  ## Optional parameters:
  """
  @spec get_component(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_component_errors()}
  def get_component(%Client{} = client, app_id, environment_name, id, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/components/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns an existing form for an Amplify app.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20GetForm&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:`) The unique ID of the Amplify app.
  * `:environment_name` (`t:`) The name of the backend environment that is part of
    the Amplify app.
  * `:id` (`t:string`) The unique ID of the form.

  ## Optional parameters:
  """
  @spec get_form(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_form_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_form_errors()}
  def get_form(%Client{} = client, app_id, environment_name, id, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/forms/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns existing metadata for an Amplify app.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20GetMetadata&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:`) The unique ID of the Amplify app.
  * `:environment_name` (`t:`) The name of the backend environment that is part of
    the Amplify app.

  ## Optional parameters:
  """
  @spec get_metadata(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_metadata_errors()}
  def get_metadata(%Client{} = client, app_id, environment_name, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/metadata"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns an existing theme for an Amplify app.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20GetTheme&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:`) The unique ID of the Amplify app.
  * `:environment_name` (`t:`) The name of the backend environment that is part of
    the Amplify app.
  * `:id` (`t:string`) The unique ID for the theme.

  ## Optional parameters:
  """
  @spec get_theme(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_theme_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_theme_errors()}
  def get_theme(%Client{} = client, app_id, environment_name, id, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/themes/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Retrieves a list of code generation jobs for a specified Amplify app and backend
  environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20ListCodegenJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The unique ID for the Amplify app.
  * `:environment_name` (`t:`) The name of the backend environment that is a part
    of the Amplify app.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of jobs to retrieve.
  * `:next_token` (`t:`) The token to request the next page of results.
  """
  @spec list_codegen_jobs(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_codegen_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_codegen_jobs_errors()}
  def list_codegen_jobs(%Client{} = client, app_id, environment_name, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/codegen-jobs"

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
  Retrieves a list of components for a specified Amplify app and backend
  environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20ListComponents&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:`) The unique ID for the Amplify app.
  * `:environment_name` (`t:`) The name of the backend environment that is a part
    of the Amplify app.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of components to retrieve.
  * `:next_token` (`t:`) The token to request the next page of results.
  """
  @spec list_components(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_components_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_components_errors()}
  def list_components(%Client{} = client, app_id, environment_name, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/components"

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
  Retrieves a list of forms for a specified Amplify app and backend environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20ListForms&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:`) The unique ID for the Amplify app.
  * `:environment_name` (`t:`) The name of the backend environment that is a part
    of the Amplify app.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of forms to retrieve.
  * `:next_token` (`t:`) The token to request the next page of results.
  """
  @spec list_forms(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_forms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_forms_errors()}
  def list_forms(%Client{} = client, app_id, environment_name, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/forms"

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
  Returns a list of tags for a specified Amazon Resource Name (ARN).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:`) The Amazon Resource Name (ARN) to use to list tags.

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
  Retrieves a list of themes for a specified Amplify app and backend environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20ListThemes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:`) The unique ID for the Amplify app.
  * `:environment_name` (`t:`) The name of the backend environment that is a part
    of the Amplify app.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of theme results to return in
    the response.
  * `:next_token` (`t:`) The token to request the next page of results.
  """
  @spec list_themes(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_themes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_themes_errors()}
  def list_themes(%Client{} = client, app_id, environment_name, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/themes"

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
  Stores the metadata information about a feature on a form.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20PutMetadataFlag&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:`) The unique ID for the Amplify app.
  * `:environment_name` (`t:`) The name of the backend environment that is part of
    the Amplify app.
  * `:feature_name` (`t:`) The name of the feature associated with the metadata.

  ## Optional parameters:
  """
  @spec put_metadata_flag(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          put_metadata_flag_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_metadata_flag_errors()}
  def put_metadata_flag(
        %Client{} = client,
        app_id,
        environment_name,
        feature_name,
        input,
        options \\ []
      ) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/metadata/features/#{AWS.Util.encode_uri(feature_name)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  This is for internal use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20RefreshToken&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:provider` (`t:string`) The third-party provider for the token. The only
    valid value is figma.

  ## Optional parameters:
  """
  @spec refresh_token(AWS.Client.t(), String.t(), refresh_token_request(), Keyword.t()) ::
          {:ok, refresh_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, refresh_token_errors()}
  def refresh_token(%Client{} = client, provider, input, options \\ []) do
    url_path = "/tokens/#{AWS.Util.encode_uri(provider)}/refresh"
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
  Starts a code generation job for a specified Amplify app and backend
  environment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20StartCodegenJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:string`) The unique ID for the Amplify app.
  * `:environment_name` (`t:`) The name of the backend environment that is a part
    of the Amplify app.

  ## Optional parameters:
  * `:client_token` (`t:`) The idempotency token used to ensure that the code
    generation job request completes only once.
  """
  @spec start_codegen_job(
          AWS.Client.t(),
          String.t(),
          String.t(),
          start_codegen_job_request(),
          Keyword.t()
        ) ::
          {:ok, start_codegen_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_codegen_job_errors()}
  def start_codegen_job(%Client{} = client, app_id, environment_name, input, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/codegen-jobs"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
  Tags the resource with a tag key and value.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:`) The Amazon Resource Name (ARN) to use to tag a
    resource.

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
  Untags a resource with a specified Amazon Resource Name (ARN).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:`) The Amazon Resource Name (ARN) to use to untag a
    resource.
  * `:tag_keys` (`t:list[com.amazonaws.amplifyuibuilder#TagKey]`) The tag keys to
    use to untag a resource.

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
  Updates an existing component.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20UpdateComponent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:`) The unique ID for the Amplify app.
  * `:environment_name` (`t:`) The name of the backend environment that is part of
    the Amplify app.
  * `:id` (`t:string`) The unique ID for the component.

  ## Optional parameters:
  * `:client_token` (`t:`) The unique client token.
  """
  @spec update_component(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          update_component_request(),
          Keyword.t()
        ) ::
          {:ok, update_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_component_errors()}
  def update_component(%Client{} = client, app_id, environment_name, id, input, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/components/#{AWS.Util.encode_uri(id)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing form.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20UpdateForm&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:`) The unique ID for the Amplify app.
  * `:environment_name` (`t:`) The name of the backend environment that is part of
    the Amplify app.
  * `:id` (`t:string`) The unique ID for the form.

  ## Optional parameters:
  * `:client_token` (`t:`) The unique client token.
  """
  @spec update_form(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          update_form_request(),
          Keyword.t()
        ) ::
          {:ok, update_form_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_form_errors()}
  def update_form(%Client{} = client, app_id, environment_name, id, input, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/forms/#{AWS.Util.encode_uri(id)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing theme.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=amplifyuibuilder%20UpdateTheme&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:app_id` (`t:`) The unique ID for the Amplify app.
  * `:environment_name` (`t:`) The name of the backend environment that is part of
    the Amplify app.
  * `:id` (`t:string`) The unique ID for the theme.

  ## Optional parameters:
  * `:client_token` (`t:`) The unique client token.
  """
  @spec update_theme(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          update_theme_request(),
          Keyword.t()
        ) ::
          {:ok, update_theme_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_theme_errors()}
  def update_theme(%Client{} = client, app_id, environment_name, id, input, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/themes/#{AWS.Util.encode_uri(id)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
