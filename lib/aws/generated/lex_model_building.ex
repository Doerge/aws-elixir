# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LexModelBuilding do
  @moduledoc """
  Amazon Lex Build-Time Actions
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      builtin_slot_type_metadata() :: %{
        "signature" => String.t(),
        "supportedLocales" => list(list(any())())
      }
      
  """
  @type builtin_slot_type_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_slot_types_response() :: %{
        "nextToken" => String.t(),
        "slotTypes" => list(slot_type_metadata()())
      }
      
  """
  @type get_slot_types_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_bot_request() :: %{
        optional("abortStatement") => statement(),
        optional("checksum") => String.t(),
        optional("clarificationPrompt") => prompt(),
        optional("createVersion") => boolean(),
        optional("description") => String.t(),
        optional("detectSentiment") => boolean(),
        optional("enableModelImprovements") => boolean(),
        optional("idleSessionTTLInSeconds") => integer(),
        optional("intents") => list(intent()()),
        optional("nluIntentConfidenceThreshold") => float(),
        optional("processBehavior") => list(any()),
        optional("tags") => list(tag()()),
        optional("voiceId") => String.t(),
        required("childDirected") => boolean(),
        required("locale") => list(any())
      }
      
  """
  @type put_bot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bot_channel_associations_response() :: %{
        "botChannelAssociations" => list(bot_channel_association()()),
        "nextToken" => String.t()
      }
      
  """
  @type get_bot_channel_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_builtin_intents_request() :: %{
        optional("locale") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("signatureContains") => String.t()
      }
      
  """
  @type get_builtin_intents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_failure_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fulfillment_activity() :: %{
        "codeHook" => code_hook(),
        "type" => list(any())
      }
      
  """
  @type fulfillment_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      migration_summary() :: %{
        "migrationId" => String.t(),
        "migrationStatus" => list(any()),
        "migrationStrategy" => list(any()),
        "migrationTimestamp" => non_neg_integer(),
        "v1BotLocale" => list(any()),
        "v1BotName" => String.t(),
        "v1BotVersion" => String.t(),
        "v2BotId" => String.t(),
        "v2BotRole" => String.t()
      }
      
  """
  @type migration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_migration_response() :: %{
        "alerts" => list(migration_alert()()),
        "migrationId" => String.t(),
        "migrationStatus" => list(any()),
        "migrationStrategy" => list(any()),
        "migrationTimestamp" => non_neg_integer(),
        "v1BotLocale" => list(any()),
        "v1BotName" => String.t(),
        "v1BotVersion" => String.t(),
        "v2BotId" => String.t(),
        "v2BotRole" => String.t()
      }
      
  """
  @type get_migration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_reference() :: %{
        "name" => String.t(),
        "version" => String.t()
      }
      
  """
  @type resource_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_builtin_slot_types_response() :: %{
        "nextToken" => String.t(),
        "slotTypes" => list(builtin_slot_type_metadata()())
      }
      
  """
  @type get_builtin_slot_types_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      put_slot_type_response() :: %{
        "checksum" => String.t(),
        "createVersion" => boolean(),
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "enumerationValues" => list(enumeration_value()()),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t(),
        "parentSlotTypeSignature" => String.t(),
        "slotTypeConfigurations" => list(slot_type_configuration()()),
        "valueSelectionStrategy" => list(any()),
        "version" => String.t()
      }
      
  """
  @type put_slot_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_import_response() :: %{
        "createdDate" => non_neg_integer(),
        "failureReason" => list(String.t()()),
        "importId" => String.t(),
        "importStatus" => list(any()),
        "mergeStrategy" => list(any()),
        "name" => String.t(),
        "resourceType" => list(any())
      }
      
  """
  @type get_import_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bot_request() :: %{}
      
  """
  @type get_bot_request() :: %{}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "exampleReference" => resource_reference(),
        "referenceType" => list(any())
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_migration_request() :: %{
        required("migrationStrategy") => list(any()),
        required("v1BotName") => String.t(),
        required("v1BotVersion") => String.t(),
        required("v2BotName") => String.t(),
        required("v2BotRole") => String.t()
      }
      
  """
  @type start_migration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_slot_type_version_response() :: %{
        "checksum" => String.t(),
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "enumerationValues" => list(enumeration_value()()),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t(),
        "parentSlotTypeSignature" => String.t(),
        "slotTypeConfigurations" => list(slot_type_configuration()()),
        "valueSelectionStrategy" => list(any()),
        "version" => String.t()
      }
      
  """
  @type create_slot_type_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      log_settings_request() :: %{
        "destination" => list(any()),
        "kmsKeyArn" => String.t(),
        "logType" => list(any()),
        "resourceArn" => String.t()
      }
      
  """
  @type log_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bot_request() :: %{}
      
  """
  @type delete_bot_request() :: %{}

  @typedoc """

  ## Example:
      
      get_bot_response() :: %{
        "abortStatement" => statement(),
        "checksum" => String.t(),
        "childDirected" => boolean(),
        "clarificationPrompt" => prompt(),
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "detectSentiment" => boolean(),
        "enableModelImprovements" => boolean(),
        "failureReason" => String.t(),
        "idleSessionTTLInSeconds" => integer(),
        "intents" => list(intent()()),
        "lastUpdatedDate" => non_neg_integer(),
        "locale" => list(any()),
        "name" => String.t(),
        "nluIntentConfidenceThreshold" => float(),
        "status" => list(any()),
        "version" => String.t(),
        "voiceId" => String.t()
      }
      
  """
  @type get_bot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      follow_up_prompt() :: %{
        "prompt" => prompt(),
        "rejectionStatement" => statement()
      }
      
  """
  @type follow_up_prompt() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_context() :: %{
        "name" => String.t(),
        "timeToLiveInSeconds" => integer(),
        "turnsToLive" => integer()
      }
      
  """
  @type output_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      slot() :: %{
        "defaultValueSpec" => slot_default_value_spec(),
        "description" => String.t(),
        "name" => String.t(),
        "obfuscationSetting" => list(any()),
        "priority" => integer(),
        "responseCard" => String.t(),
        "sampleUtterances" => list(String.t()()),
        "slotConstraint" => list(any()),
        "slotType" => String.t(),
        "slotTypeVersion" => String.t(),
        "valueElicitationPrompt" => prompt()
      }
      
  """
  @type slot() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_builtin_slot_types_request() :: %{
        optional("locale") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("signatureContains") => String.t()
      }
      
  """
  @type get_builtin_slot_types_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_bot_version_request() :: %{
        optional("checksum") => String.t()
      }
      
  """
  @type create_bot_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bot_channel_association_response() :: %{
        "botAlias" => String.t(),
        "botConfiguration" => map(),
        "botName" => String.t(),
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "failureReason" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "type" => list(any())
      }
      
  """
  @type get_bot_channel_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_builtin_intent_response() :: %{
        "signature" => String.t(),
        "slots" => list(builtin_intent_slot()()),
        "supportedLocales" => list(list(any())())
      }
      
  """
  @type get_builtin_intent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_slot_type_version_request() :: %{
        optional("checksum") => String.t()
      }
      
  """
  @type create_slot_type_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_slot_type_versions_response() :: %{
        "nextToken" => String.t(),
        "slotTypes" => list(slot_type_metadata()())
      }
      
  """
  @type get_slot_type_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_slot_type_version_request() :: %{}
      
  """
  @type delete_slot_type_version_request() :: %{}

  @typedoc """

  ## Example:
      
      statement() :: %{
        "messages" => list(message()()),
        "responseCard" => String.t()
      }
      
  """
  @type statement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bots_response() :: %{
        "bots" => list(bot_metadata()()),
        "nextToken" => String.t()
      }
      
  """
  @type get_bots_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      builtin_intent_metadata() :: %{
        "signature" => String.t(),
        "supportedLocales" => list(list(any())())
      }
      
  """
  @type builtin_intent_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_migrations_response() :: %{
        "migrationSummaries" => list(migration_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type get_migrations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bot_alias_metadata() :: %{
        "botName" => String.t(),
        "botVersion" => String.t(),
        "checksum" => String.t(),
        "conversationLogs" => conversation_logs_response(),
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t()
      }
      
  """
  @type bot_alias_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bot_channel_association() :: %{
        "botAlias" => String.t(),
        "botConfiguration" => map(),
        "botName" => String.t(),
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "failureReason" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "type" => list(any())
      }
      
  """
  @type bot_channel_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_migrations_request() :: %{
        optional("maxResults") => integer(),
        optional("migrationStatusEquals") => list(any()),
        optional("nextToken") => String.t(),
        optional("sortByAttribute") => list(any()),
        optional("sortByOrder") => list(any()),
        optional("v1BotNameContains") => String.t()
      }
      
  """
  @type get_migrations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      intent() :: %{
        "intentName" => String.t(),
        "intentVersion" => String.t()
      }
      
  """
  @type intent() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_intents_response() :: %{
        "intents" => list(intent_metadata()()),
        "nextToken" => String.t()
      }
      
  """
  @type get_intents_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_intent_versions_response() :: %{
        "intents" => list(intent_metadata()()),
        "nextToken" => String.t()
      }
      
  """
  @type get_intent_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kendra_configuration() :: %{
        "kendraIndex" => String.t(),
        "queryFilterString" => String.t(),
        "role" => String.t()
      }
      
  """
  @type kendra_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_intent_version_request() :: %{}
      
  """
  @type delete_intent_version_request() :: %{}

  @typedoc """

  ## Example:
      
      slot_type_regex_configuration() :: %{
        "pattern" => String.t()
      }
      
  """
  @type slot_type_regex_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_intent_response() :: %{
        "checksum" => String.t(),
        "conclusionStatement" => statement(),
        "confirmationPrompt" => prompt(),
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "dialogCodeHook" => code_hook(),
        "followUpPrompt" => follow_up_prompt(),
        "fulfillmentActivity" => fulfillment_activity(),
        "inputContexts" => list(input_context()()),
        "kendraConfiguration" => kendra_configuration(),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t(),
        "outputContexts" => list(output_context()()),
        "parentIntentSignature" => String.t(),
        "rejectionStatement" => statement(),
        "sampleUtterances" => list(String.t()()),
        "slots" => list(slot()()),
        "version" => String.t()
      }
      
  """
  @type get_intent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bots_request() :: %{
        optional("maxResults") => integer(),
        optional("nameContains") => String.t(),
        optional("nextToken") => String.t()
      }
      
  """
  @type get_bots_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_hook() :: %{
        "messageVersion" => String.t(),
        "uri" => String.t()
      }
      
  """
  @type code_hook() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bot_metadata() :: %{
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t(),
        "status" => list(any()),
        "version" => String.t()
      }
      
  """
  @type bot_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conversation_logs_response() :: %{
        "iamRoleArn" => String.t(),
        "logSettings" => list(log_settings_response()())
      }
      
  """
  @type conversation_logs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "key" => String.t(),
        "value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bot_version_request() :: %{}
      
  """
  @type delete_bot_version_request() :: %{}

  @typedoc """

  ## Example:
      
      put_bot_alias_request() :: %{
        optional("checksum") => String.t(),
        optional("conversationLogs") => conversation_logs_request(),
        optional("description") => String.t(),
        optional("tags") => list(tag()()),
        required("botVersion") => String.t()
      }
      
  """
  @type put_bot_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      slot_default_value_spec() :: %{
        "defaultValueList" => list(slot_default_value()())
      }
      
  """
  @type slot_default_value_spec() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_import_request() :: %{}
      
  """
  @type get_import_request() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_utterances_view_response() :: %{
        "botName" => String.t(),
        "utterances" => list(utterance_list()())
      }
      
  """
  @type get_utterances_view_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_bot_response() :: %{
        "abortStatement" => statement(),
        "checksum" => String.t(),
        "childDirected" => boolean(),
        "clarificationPrompt" => prompt(),
        "createVersion" => boolean(),
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "detectSentiment" => boolean(),
        "enableModelImprovements" => boolean(),
        "failureReason" => String.t(),
        "idleSessionTTLInSeconds" => integer(),
        "intents" => list(intent()()),
        "lastUpdatedDate" => non_neg_integer(),
        "locale" => list(any()),
        "name" => String.t(),
        "nluIntentConfidenceThreshold" => float(),
        "status" => list(any()),
        "tags" => list(tag()()),
        "version" => String.t(),
        "voiceId" => String.t()
      }
      
  """
  @type put_bot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_intent_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type get_intent_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bot_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type get_bot_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_slot_type_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type get_slot_type_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bot_alias_request() :: %{}
      
  """
  @type get_bot_alias_request() :: %{}

  @typedoc """

  ## Example:
      
      get_intent_request() :: %{}
      
  """
  @type get_intent_request() :: %{}

  @typedoc """

  ## Example:
      
      get_bot_aliases_response() :: %{
        "BotAliases" => list(bot_alias_metadata()()),
        "nextToken" => String.t()
      }
      
  """
  @type get_bot_aliases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_slot_type_response() :: %{
        "checksum" => String.t(),
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "enumerationValues" => list(enumeration_value()()),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t(),
        "parentSlotTypeSignature" => String.t(),
        "slotTypeConfigurations" => list(slot_type_configuration()()),
        "valueSelectionStrategy" => list(any()),
        "version" => String.t()
      }
      
  """
  @type get_slot_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      utterance_list() :: %{
        "botVersion" => String.t(),
        "utterances" => list(utterance_data()())
      }
      
  """
  @type utterance_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_builtin_intent_request() :: %{}
      
  """
  @type get_builtin_intent_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_bot_alias_request() :: %{}
      
  """
  @type delete_bot_alias_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_bot_channel_association_request() :: %{}
      
  """
  @type delete_bot_channel_association_request() :: %{}

  @typedoc """

  ## Example:
      
      get_bot_versions_response() :: %{
        "bots" => list(bot_metadata()()),
        "nextToken" => String.t()
      }
      
  """
  @type get_bot_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_intent_request() :: %{
        optional("checksum") => String.t(),
        optional("conclusionStatement") => statement(),
        optional("confirmationPrompt") => prompt(),
        optional("createVersion") => boolean(),
        optional("description") => String.t(),
        optional("dialogCodeHook") => code_hook(),
        optional("followUpPrompt") => follow_up_prompt(),
        optional("fulfillmentActivity") => fulfillment_activity(),
        optional("inputContexts") => list(input_context()()),
        optional("kendraConfiguration") => kendra_configuration(),
        optional("outputContexts") => list(output_context()()),
        optional("parentIntentSignature") => String.t(),
        optional("rejectionStatement") => statement(),
        optional("sampleUtterances") => list(String.t()()),
        optional("slots") => list(slot()())
      }
      
  """
  @type put_intent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_intents_request() :: %{
        optional("maxResults") => integer(),
        optional("nameContains") => String.t(),
        optional("nextToken") => String.t()
      }
      
  """
  @type get_intents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_export_request() :: %{
        required("exportType") => list(any()),
        required("name") => String.t(),
        required("resourceType") => list(any()),
        required("version") => String.t()
      }
      
  """
  @type get_export_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_slot_type_request() :: %{
        optional("checksum") => String.t(),
        optional("createVersion") => boolean(),
        optional("description") => String.t(),
        optional("enumerationValues") => list(enumeration_value()()),
        optional("parentSlotTypeSignature") => String.t(),
        optional("slotTypeConfigurations") => list(slot_type_configuration()()),
        optional("valueSelectionStrategy") => list(any())
      }
      
  """
  @type put_slot_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_migration_response() :: %{
        "migrationId" => String.t(),
        "migrationStrategy" => list(any()),
        "migrationTimestamp" => non_neg_integer(),
        "v1BotLocale" => list(any()),
        "v1BotName" => String.t(),
        "v1BotVersion" => String.t(),
        "v2BotId" => String.t(),
        "v2BotRole" => String.t()
      }
      
  """
  @type start_migration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conversation_logs_request() :: %{
        "iamRoleArn" => String.t(),
        "logSettings" => list(log_settings_request()())
      }
      
  """
  @type conversation_logs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      slot_type_configuration() :: %{
        "regexConfiguration" => slot_type_regex_configuration()
      }
      
  """
  @type slot_type_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_builtin_intents_response() :: %{
        "intents" => list(builtin_intent_metadata()()),
        "nextToken" => String.t()
      }
      
  """
  @type get_builtin_intents_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_intent_response() :: %{
        "checksum" => String.t(),
        "conclusionStatement" => statement(),
        "confirmationPrompt" => prompt(),
        "createVersion" => boolean(),
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "dialogCodeHook" => code_hook(),
        "followUpPrompt" => follow_up_prompt(),
        "fulfillmentActivity" => fulfillment_activity(),
        "inputContexts" => list(input_context()()),
        "kendraConfiguration" => kendra_configuration(),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t(),
        "outputContexts" => list(output_context()()),
        "parentIntentSignature" => String.t(),
        "rejectionStatement" => statement(),
        "sampleUtterances" => list(String.t()()),
        "slots" => list(slot()()),
        "version" => String.t()
      }
      
  """
  @type put_intent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_intent_version_request() :: %{
        optional("checksum") => String.t()
      }
      
  """
  @type create_intent_version_request() :: %{String.t() => any()}

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
      
      get_bot_channel_association_request() :: %{}
      
  """
  @type get_bot_channel_association_request() :: %{}

  @typedoc """

  ## Example:
      
      builtin_intent_slot() :: %{
        "name" => String.t()
      }
      
  """
  @type builtin_intent_slot() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_slot_types_request() :: %{
        optional("maxResults") => integer(),
        optional("nameContains") => String.t(),
        optional("nextToken") => String.t()
      }
      
  """
  @type get_slot_types_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_context() :: %{
        "name" => String.t()
      }
      
  """
  @type input_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_slot_type_request() :: %{}
      
  """
  @type delete_slot_type_request() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{}
      
  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:
      
      log_settings_response() :: %{
        "destination" => list(any()),
        "kmsKeyArn" => String.t(),
        "logType" => list(any()),
        "resourceArn" => String.t(),
        "resourcePrefix" => String.t()
      }
      
  """
  @type log_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_migration_request() :: %{}
      
  """
  @type get_migration_request() :: %{}

  @typedoc """

  ## Example:
      
      get_export_response() :: %{
        "exportStatus" => list(any()),
        "exportType" => list(any()),
        "failureReason" => String.t(),
        "name" => String.t(),
        "resourceType" => list(any()),
        "url" => String.t(),
        "version" => String.t()
      }
      
  """
  @type get_export_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t(),
        "retryAfterSeconds" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bad_request_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      slot_default_value() :: %{
        "defaultValue" => String.t()
      }
      
  """
  @type slot_default_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_intent_version_response() :: %{
        "checksum" => String.t(),
        "conclusionStatement" => statement(),
        "confirmationPrompt" => prompt(),
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "dialogCodeHook" => code_hook(),
        "followUpPrompt" => follow_up_prompt(),
        "fulfillmentActivity" => fulfillment_activity(),
        "inputContexts" => list(input_context()()),
        "kendraConfiguration" => kendra_configuration(),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t(),
        "outputContexts" => list(output_context()()),
        "parentIntentSignature" => String.t(),
        "rejectionStatement" => statement(),
        "sampleUtterances" => list(String.t()()),
        "slots" => list(slot()()),
        "version" => String.t()
      }
      
  """
  @type create_intent_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_slot_type_request() :: %{}
      
  """
  @type get_slot_type_request() :: %{}

  @typedoc """

  ## Example:
      
      intent_metadata() :: %{
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t(),
        "version" => String.t()
      }
      
  """
  @type intent_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      utterance_data() :: %{
        "count" => integer(),
        "distinctUsers" => integer(),
        "firstUtteredDate" => non_neg_integer(),
        "lastUtteredDate" => non_neg_integer(),
        "utteranceString" => String.t()
      }
      
  """
  @type utterance_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_utterances_request() :: %{}
      
  """
  @type delete_utterances_request() :: %{}

  @typedoc """

  ## Example:
      
      enumeration_value() :: %{
        "synonyms" => list(String.t()()),
        "value" => String.t()
      }
      
  """
  @type enumeration_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_utterances_view_request() :: %{
        required("botVersions") => list(String.t()()),
        required("statusType") => list(any())
      }
      
  """
  @type get_utterances_view_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_bot_alias_response() :: %{
        "botName" => String.t(),
        "botVersion" => String.t(),
        "checksum" => String.t(),
        "conversationLogs" => conversation_logs_response(),
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t(),
        "tags" => list(tag()())
      }
      
  """
  @type put_bot_alias_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      precondition_failed_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type precondition_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      migration_alert() :: %{
        "details" => list(String.t()()),
        "message" => String.t(),
        "referenceURLs" => list(String.t()()),
        "type" => list(any())
      }
      
  """
  @type migration_alert() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_intent_request() :: %{}
      
  """
  @type delete_intent_request() :: %{}

  @typedoc """

  ## Example:
      
      get_bot_aliases_request() :: %{
        optional("maxResults") => integer(),
        optional("nameContains") => String.t(),
        optional("nextToken") => String.t()
      }
      
  """
  @type get_bot_aliases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bot_alias_response() :: %{
        "botName" => String.t(),
        "botVersion" => String.t(),
        "checksum" => String.t(),
        "conversationLogs" => conversation_logs_response(),
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t()
      }
      
  """
  @type get_bot_alias_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_import_request() :: %{
        optional("tags") => list(tag()()),
        required("mergeStrategy") => list(any()),
        required("payload") => binary(),
        required("resourceType") => list(any())
      }
      
  """
  @type start_import_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      slot_type_metadata() :: %{
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t(),
        "version" => String.t()
      }
      
  """
  @type slot_type_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_import_response() :: %{
        "createdDate" => non_neg_integer(),
        "importId" => String.t(),
        "importStatus" => list(any()),
        "mergeStrategy" => list(any()),
        "name" => String.t(),
        "resourceType" => list(any()),
        "tags" => list(tag()())
      }
      
  """
  @type start_import_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      prompt() :: %{
        "maxAttempts" => integer(),
        "messages" => list(message()()),
        "responseCard" => String.t()
      }
      
  """
  @type prompt() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_bot_version_response() :: %{
        "abortStatement" => statement(),
        "checksum" => String.t(),
        "childDirected" => boolean(),
        "clarificationPrompt" => prompt(),
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "detectSentiment" => boolean(),
        "enableModelImprovements" => boolean(),
        "failureReason" => String.t(),
        "idleSessionTTLInSeconds" => integer(),
        "intents" => list(intent()()),
        "lastUpdatedDate" => non_neg_integer(),
        "locale" => list(any()),
        "name" => String.t(),
        "status" => list(any()),
        "version" => String.t(),
        "voiceId" => String.t()
      }
      
  """
  @type create_bot_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      message() :: %{
        "content" => String.t(),
        "contentType" => list(any()),
        "groupNumber" => integer()
      }
      
  """
  @type message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bot_channel_associations_request() :: %{
        optional("maxResults") => integer(),
        optional("nameContains") => String.t(),
        optional("nextToken") => String.t()
      }
      
  """
  @type get_bot_channel_associations_request() :: %{String.t() => any()}

  @type create_bot_version_errors() ::
          precondition_failed_exception()
          | bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type create_intent_version_errors() ::
          precondition_failed_exception()
          | bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type create_slot_type_version_errors() ::
          precondition_failed_exception()
          | bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type delete_bot_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type delete_bot_alias_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type delete_bot_channel_association_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type delete_bot_version_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type delete_intent_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type delete_intent_version_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type delete_slot_type_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type delete_slot_type_version_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type delete_utterances_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_bot_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_bot_alias_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_bot_aliases_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type get_bot_channel_association_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_bot_channel_associations_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type get_bot_versions_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_bots_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_builtin_intent_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_builtin_intents_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type get_builtin_slot_types_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type get_export_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_import_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_intent_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_intent_versions_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_intents_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_migration_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_migrations_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type get_slot_type_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_slot_type_versions_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_slot_types_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_utterances_view_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type put_bot_errors() ::
          precondition_failed_exception()
          | bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type put_bot_alias_errors() ::
          precondition_failed_exception()
          | bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type put_intent_errors() ::
          precondition_failed_exception()
          | bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type put_slot_type_errors() ::
          precondition_failed_exception()
          | bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type start_import_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type start_migration_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | access_denied_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  def metadata do
    %{
      api_version: "2017-04-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "models.lex",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Lex Model Building Service",
      signature_version: "v4",
      signing_name: "lex",
      target_prefix: nil
    }
  end

  @doc """
  Creates a new version of the bot based on the `$LATEST` version. If the
  `$LATEST` version of this resource hasn't changed since you created the last
  version, Amazon Lex doesn't create a new version. It returns the last created
  version. You can update only the `$LATEST` version of the bot. You can't
  update the numbered versions that you create with the `CreateBotVersion`
  operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20CreateBotVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the bot that you want to create a new version
  of. The name is case sensitive.

  ## Optional parameters:
  """

  @spec create_bot_version(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_bot_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_bot_version_errors()}

  def create_bot_version(%Client{} = client, name, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(name)}/versions"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Creates a new version of an intent based on the `$LATEST` version of the intent.
  If the `$LATEST` version of this intent hasn't changed since you last updated
  it, Amazon Lex doesn't create a new version. It returns the last version you
  created. You can update only the `$LATEST` version of the intent. You can't
  update the numbered versions that you create with the `CreateIntentVersion`
  operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20CreateIntentVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the intent that you want to create a new
  version of. The name is case sensitive.

  ## Optional parameters:
  """

  @spec create_intent_version(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_intent_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_intent_version_errors()}

  def create_intent_version(%Client{} = client, name, options \\ []) do
    url_path = "/intents/#{AWS.Util.encode_uri(name)}/versions"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Creates a new version of a slot type based on the `$LATEST` version of the
  specified slot type. If the `$LATEST` version of this resource has not changed
  since the last version that you created, Amazon Lex doesn't create a new
  version. It returns the last version that you created. You can update only the
  `$LATEST` version of a slot type. You can't update the numbered versions that
  you create with the `CreateSlotTypeVersion` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20CreateSlotTypeVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the slot type that you want to create a new
  version for. The name is case sensitive.

  ## Optional parameters:
  """

  @spec create_slot_type_version(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_slot_type_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_slot_type_version_errors()}

  def create_slot_type_version(%Client{} = client, name, options \\ []) do
    url_path = "/slottypes/#{AWS.Util.encode_uri(name)}/versions"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Deletes all versions of the bot, including the `$LATEST` version. To delete a
  specific version of the bot, use the `DeleteBotVersion` operation. The
  `DeleteBot` operation doesn't immediately remove the bot schema. Instead, it
  is marked for deletion and removed later. Amazon Lex stores utterances
  indefinitely for improving the ability of your bot to respond to user inputs.
  These utterances are not removed when the bot is deleted. To remove the
  utterances, use the `DeleteUtterances` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20DeleteBot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the bot. The name is case sensitive.

  ## Optional parameters:
  """

  @spec delete_bot(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_bot_errors()}

  def delete_bot(%Client{} = client, name, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(name)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
      204
    )
  end

  @doc """
  Deletes an alias for the specified bot.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20DeleteBotAlias&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bot_name` (`t:string`) The name of the bot that the alias points to.
  * `:name` (`t:string`) The name of the alias to delete. The name is case
  sensitive.

  ## Optional parameters:
  """

  @spec delete_bot_alias(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_bot_alias_errors()}

  def delete_bot_alias(%Client{} = client, bot_name, name, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_name)}/aliases/#{AWS.Util.encode_uri(name)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
      204
    )
  end

  @doc """
  Deletes the association between an Amazon Lex bot and a messaging platform.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20DeleteBotChannelAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bot_alias` (`t:string`) An alias that points to the specific version of the
  Amazon Lex bot to which this association is being made.
  * `:bot_name` (`t:string`) The name of the Amazon Lex bot.
  * `:name` (`t:string`) The name of the association. The name is case sensitive.

  ## Optional parameters:
  """

  @spec delete_bot_channel_association(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_bot_channel_association_errors()}

  def delete_bot_channel_association(%Client{} = client, bot_alias, bot_name, name, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_name)}/aliases/#{AWS.Util.encode_uri(bot_alias)}/channels/#{AWS.Util.encode_uri(name)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
      204
    )
  end

  @doc """
  Deletes a specific version of a bot. To delete all versions of a bot, use the
  `DeleteBot` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20DeleteBotVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the bot.
  * `:version` (`t:string`) The version of the bot to delete. You cannot delete
  the $LATEST version of the bot. To delete the $LATEST version, use the
  DeleteBot operation.

  ## Optional parameters:
  """

  @spec delete_bot_version(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_bot_version_errors()}

  def delete_bot_version(%Client{} = client, name, version, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(name)}/versions/#{AWS.Util.encode_uri(version)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
      204
    )
  end

  @doc """
  Deletes all versions of the intent, including the `$LATEST` version. To delete a
  specific version of the intent, use the `DeleteIntentVersion` operation. You
  can delete a version of an intent only if it is not referenced. To delete an
  intent that is referred to in one or more bots (see `how-it-works`), you must
  remove those references first.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20DeleteIntent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the intent. The name is case sensitive.

  ## Optional parameters:
  """

  @spec delete_intent(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_intent_errors()}

  def delete_intent(%Client{} = client, name, options \\ []) do
    url_path = "/intents/#{AWS.Util.encode_uri(name)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
      204
    )
  end

  @doc """
  Deletes a specific version of an intent. To delete all versions of a intent, use
  the `DeleteIntent` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20DeleteIntentVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the intent.
  * `:version` (`t:string`) The version of the intent to delete. You cannot delete
  the $LATEST version of the intent. To delete the $LATEST version, use the
  DeleteIntent operation.

  ## Optional parameters:
  """

  @spec delete_intent_version(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_intent_version_errors()}

  def delete_intent_version(%Client{} = client, name, version, options \\ []) do
    url_path = "/intents/#{AWS.Util.encode_uri(name)}/versions/#{AWS.Util.encode_uri(version)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
      204
    )
  end

  @doc """
  Deletes all versions of the slot type, including the `$LATEST` version. To
  delete a specific version of the slot type, use the `DeleteSlotTypeVersion`
  operation. You can delete a version of a slot type only if it is not
  referenced. To delete a slot type that is referred to in one or more intents,
  you must remove those references first.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20DeleteSlotType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the slot type. The name is case sensitive.

  ## Optional parameters:
  """

  @spec delete_slot_type(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_slot_type_errors()}

  def delete_slot_type(%Client{} = client, name, options \\ []) do
    url_path = "/slottypes/#{AWS.Util.encode_uri(name)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
      204
    )
  end

  @doc """
  Deletes a specific version of a slot type. To delete all versions of a slot
  type, use the `DeleteSlotType` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20DeleteSlotTypeVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the slot type.
  * `:version` (`t:string`) The version of the slot type to delete. You cannot
  delete the $LATEST version of the slot type. To delete the $LATEST version,
  use the DeleteSlotType operation.

  ## Optional parameters:
  """

  @spec delete_slot_type_version(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_slot_type_version_errors()}

  def delete_slot_type_version(%Client{} = client, name, version, options \\ []) do
    url_path = "/slottypes/#{AWS.Util.encode_uri(name)}/version/#{AWS.Util.encode_uri(version)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
      204
    )
  end

  @doc """
  Deletes stored utterances. Amazon Lex stores the utterances that users send to
  your bot. Utterances are stored for 15 days for use with the
  `GetUtterancesView` operation, and then stored indefinitely for use in
  improving the ability of your bot to respond to user input.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20DeleteUtterances&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bot_name` (`t:string`) The name of the bot that stored the utterances.
  * `:user_id` (`t:string`) The unique identifier for the user that made the
  utterances. This is the user ID that was sent in the PostContent or PostText
  operation request that contained the utterance.

  ## Optional parameters:
  """

  @spec delete_utterances(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_utterances_errors()}

  def delete_utterances(%Client{} = client, bot_name, user_id, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_name)}/utterances/#{AWS.Util.encode_uri(user_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
      204
    )
  end

  @doc """
  Returns metadata information for a specific bot. You must provide the bot name
  and the bot version or alias.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20GetBot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the bot. The name is case sensitive.
  * `:version_or_alias` (`t:string`) The version or alias of the bot.

  ## Optional parameters:
  """

  @spec get_bot(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_bot_errors()}

  def get_bot(%Client{} = client, name, version_or_alias, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(name)}/versions/#{AWS.Util.encode_uri(version_or_alias)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns information about an Amazon Lex bot alias. For more information about
  aliases, see `versioning-aliases`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20GetBotAlias&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bot_name` (`t:string`) The name of the bot.
  * `:name` (`t:string`) The name of the bot alias. The name is case sensitive.

  ## Optional parameters:
  """

  @spec get_bot_alias(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_bot_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_bot_alias_errors()}

  def get_bot_alias(%Client{} = client, bot_name, name, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_name)}/aliases/#{AWS.Util.encode_uri(name)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns a list of aliases for a specified Amazon Lex bot.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20GetBotAliases&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bot_name` (`t:string`) The name of the bot.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of aliases to return in the
  response. The default is 50. .
  * `:name_contains` (`t:string`) Substring to match in bot alias names. An alias
  will be returned if any part of its name matches the substring. For example,
  "xyz" matches both "xyzabc" and "abcxyz."
  * `:next_token` (`t:string`) A pagination token for fetching the next page of
  aliases. If the response to this call is truncated, Amazon Lex returns a
  pagination token in the response. To fetch the next page of aliases, specify
  the pagination token in the next request.
  """

  @spec get_bot_aliases(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_bot_aliases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_bot_aliases_errors()}

  def get_bot_aliases(%Client{} = client, bot_name, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_name)}/aliases"

    # Validate optional parameters
    optional_params = [max_results: nil, name_contains: nil, next_token: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :name_contains) do
        [{"nameContains", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :name_contains, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the association between an Amazon Lex bot and a
  messaging platform.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20GetBotChannelAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bot_alias` (`t:string`) An alias pointing to the specific version of the
  Amazon Lex bot to which this association is being made.
  * `:bot_name` (`t:string`) The name of the Amazon Lex bot.
  * `:name` (`t:string`) The name of the association between the bot and the
  channel. The name is case sensitive.

  ## Optional parameters:
  """

  @spec get_bot_channel_association(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_bot_channel_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_bot_channel_association_errors()}

  def get_bot_channel_association(%Client{} = client, bot_alias, bot_name, name, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_name)}/aliases/#{AWS.Util.encode_uri(bot_alias)}/channels/#{AWS.Util.encode_uri(name)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns a list of all of the channels associated with the specified bot.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20GetBotChannelAssociations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bot_alias` (`t:string`) An alias pointing to the specific version of the
  Amazon Lex bot to which this association is being made.
  * `:bot_name` (`t:string`) The name of the Amazon Lex bot in the association.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of associations to return in
  the response. The default is 50.
  * `:name_contains` (`t:string`) Substring to match in channel association names.
  An association will be returned if any part of its name matches the
  substring. For example, "xyz" matches both "xyzabc" and "abcxyz." To return
  all bot channel associations, use a hyphen ("-") as the nameContains
  parameter.
  * `:next_token` (`t:string`) A pagination token for fetching the next page of
  associations. If the response to this call is truncated, Amazon Lex returns
  a pagination token in the response. To fetch the next page of associations,
  specify the pagination token in the next request.
  """

  @spec get_bot_channel_associations(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_bot_channel_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_bot_channel_associations_errors()}

  def get_bot_channel_associations(%Client{} = client, bot_alias, bot_name, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_name)}/aliases/#{AWS.Util.encode_uri(bot_alias)}/channels"

    # Validate optional parameters
    optional_params = [max_results: nil, name_contains: nil, next_token: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :name_contains) do
        [{"nameContains", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :name_contains, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about all of the versions of a bot. The `GetBotVersions`
  operation returns a `BotMetadata` object for each version of a bot. For
  example, if a bot has three numbered versions, the `GetBotVersions` operation
  returns four `BotMetadata` objects in the response, one for each numbered
  version and one for the `$LATEST` version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20GetBotVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the bot for which versions should be
  returned.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of bot versions to return in
  the response. The default is 10.
  * `:next_token` (`t:string`) A pagination token for fetching the next page of
  bot versions. If the response to this call is truncated, Amazon Lex returns
  a pagination token in the response. To fetch the next page of versions,
  specify the pagination token in the next request.
  """

  @spec get_bot_versions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_bot_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_bot_versions_errors()}

  def get_bot_versions(%Client{} = client, name, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(name)}/versions"

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
  Returns bot information as follows:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20GetBots&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of bots to return in the
  response that the request will return. The default is 10.
  * `:name_contains` (`t:string`) Substring to match in bot names. A bot will be
  returned if any part of its name matches the substring. For example, "xyz"
  matches both "xyzabc" and "abcxyz."
  * `:next_token` (`t:string`) A pagination token that fetches the next page of
  bots. If the response to this call is truncated, Amazon Lex returns a
  pagination token in the response. To fetch the next page of bots, specify
  the pagination token in the next request.
  """

  @spec get_bots(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_bots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_bots_errors()}

  def get_bots(%Client{} = client, options \\ []) do
    url_path = "/bots"

    # Validate optional parameters
    optional_params = [max_results: nil, name_contains: nil, next_token: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :name_contains) do
        [{"nameContains", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :name_contains, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a built-in intent.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20GetBuiltinIntent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:signature` (`t:string`) The unique identifier for a built-in intent. To find
  the signature for an intent, see Standard Built-in Intents in the Alexa
  Skills Kit.

  ## Optional parameters:
  """

  @spec get_builtin_intent(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_builtin_intent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_builtin_intent_errors()}

  def get_builtin_intent(%Client{} = client, signature, options \\ []) do
    url_path = "/builtins/intents/#{AWS.Util.encode_uri(signature)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Gets a list of built-in intents that meet the specified criteria.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20GetBuiltinIntents&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:locale`
  (`t:enum["DE_DE|EN_AU|EN_GB|EN_IN|EN_US|ES_419|ES_ES|ES_US|FR_CA|FR_FR|IT_IT|JA_JP|KO_KR"]`)
  A list of locales that the intent supports.
  * `:max_results` (`t:integer`) The maximum number of intents to return in the
  response. The default is 10.
  * `:next_token` (`t:string`) A pagination token that fetches the next page of
  intents. If this API call is truncated, Amazon Lex returns a pagination
  token in the response. To fetch the next page of intents, use the pagination
  token in the next request.
  * `:signature_contains` (`t:string`) Substring to match in built-in intent
  signatures. An intent will be returned if any part of its signature matches
  the substring. For example, "xyz" matches both "xyzabc" and "abcxyz." To
  find the signature for an intent, see Standard Built-in Intents in the Alexa
  Skills Kit.
  """

  @spec get_builtin_intents(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_builtin_intents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_builtin_intents_errors()}

  def get_builtin_intents(%Client{} = client, options \\ []) do
    url_path = "/builtins/intents"

    # Validate optional parameters
    optional_params = [locale: nil, max_results: nil, next_token: nil, signature_contains: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :signature_contains) do
        [{"signatureContains", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :locale) do
        [{"locale", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:locale, :max_results, :next_token, :signature_contains])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of built-in slot types that meet the specified criteria. For a list
  of built-in slot types, see [Slot Type
  Reference](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference)
  in the *Alexa Skills Kit*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20GetBuiltinSlotTypes&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:locale`
  (`t:enum["DE_DE|EN_AU|EN_GB|EN_IN|EN_US|ES_419|ES_ES|ES_US|FR_CA|FR_FR|IT_IT|JA_JP|KO_KR"]`)
  A list of locales that the slot type supports.
  * `:max_results` (`t:integer`) The maximum number of slot types to return in the
  response. The default is 10.
  * `:next_token` (`t:string`) A pagination token that fetches the next page of
  slot types. If the response to this API call is truncated, Amazon Lex
  returns a pagination token in the response. To fetch the next page of slot
  types, specify the pagination token in the next request.
  * `:signature_contains` (`t:string`) Substring to match in built-in slot type
  signatures. A slot type will be returned if any part of its signature
  matches the substring. For example, "xyz" matches both "xyzabc" and
  "abcxyz."
  """

  @spec get_builtin_slot_types(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_builtin_slot_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_builtin_slot_types_errors()}

  def get_builtin_slot_types(%Client{} = client, options \\ []) do
    url_path = "/builtins/slottypes"

    # Validate optional parameters
    optional_params = [locale: nil, max_results: nil, next_token: nil, signature_contains: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :signature_contains) do
        [{"signatureContains", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :locale) do
        [{"locale", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:locale, :max_results, :next_token, :signature_contains])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Exports the contents of a Amazon Lex resource in a specified format.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20GetExport&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:export_type` (`t:enum["ALEXA_SKILLS_KIT|LEX"]`) The format of the exported
  data.
  * `:name` (`t:string`) The name of the bot to export.
  * `:resource_type` (`t:enum["BOT|INTENT|SLOT_TYPE"]`) The type of resource to
  export.
  * `:version` (`t:string`) The version of the bot to export.

  ## Optional parameters:
  """

  @spec get_export(AWS.Client.t(), String.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_export_errors()}

  def get_export(%Client{} = client, export_type, name, resource_type, version, options \\ [])
      when is_binary(export_type) and is_binary(name) and is_binary(resource_type) and
             is_binary(version) do
    url_path = "/exports"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [
      {"exportType", export_type},
      {"name", name},
      {"resourceType", resource_type},
      {"version", version}
    ]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about an import job started with the `StartImport` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20GetImport&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:import_id` (`t:string`) The identifier of the import job information to
  return.

  ## Optional parameters:
  """

  @spec get_import(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_import_errors()}

  def get_import(%Client{} = client, import_id, options \\ []) do
    url_path = "/imports/#{AWS.Util.encode_uri(import_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns information about an intent. In addition to the intent name, you must
  specify the intent version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20GetIntent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the intent. The name is case sensitive.
  * `:version` (`t:string`) The version of the intent.

  ## Optional parameters:
  """

  @spec get_intent(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_intent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_intent_errors()}

  def get_intent(%Client{} = client, name, version, options \\ []) do
    url_path = "/intents/#{AWS.Util.encode_uri(name)}/versions/#{AWS.Util.encode_uri(version)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Gets information about all of the versions of an intent. The `GetIntentVersions`
  operation returns an `IntentMetadata` object for each version of an intent.
  For example, if an intent has three numbered versions, the `GetIntentVersions`
  operation returns four `IntentMetadata` objects in the response, one for each
  numbered version and one for the `$LATEST` version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20GetIntentVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the intent for which versions should be
  returned.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of intent versions to return
  in the response. The default is 10.
  * `:next_token` (`t:string`) A pagination token for fetching the next page of
  intent versions. If the response to this call is truncated, Amazon Lex
  returns a pagination token in the response. To fetch the next page of
  versions, specify the pagination token in the next request.
  """

  @spec get_intent_versions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_intent_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_intent_versions_errors()}

  def get_intent_versions(%Client{} = client, name, options \\ []) do
    url_path = "/intents/#{AWS.Util.encode_uri(name)}/versions"

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
  Returns intent information as follows:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20GetIntents&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of intents to return in the
  response. The default is 10.
  * `:name_contains` (`t:string`) Substring to match in intent names. An intent
  will be returned if any part of its name matches the substring. For example,
  "xyz" matches both "xyzabc" and "abcxyz."
  * `:next_token` (`t:string`) A pagination token that fetches the next page of
  intents. If the response to this API call is truncated, Amazon Lex returns a
  pagination token in the response. To fetch the next page of intents, specify
  the pagination token in the next request.
  """

  @spec get_intents(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_intents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_intents_errors()}

  def get_intents(%Client{} = client, options \\ []) do
    url_path = "/intents"

    # Validate optional parameters
    optional_params = [max_results: nil, name_contains: nil, next_token: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :name_contains) do
        [{"nameContains", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :name_contains, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides details about an ongoing or complete migration from an Amazon Lex V1
  bot to an Amazon Lex V2 bot. Use this operation to view the migration alerts
  and warnings related to the migration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20GetMigration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:migration_id` (`t:string`) The unique identifier of the migration to view.
  The migrationID is returned by the operation.

  ## Optional parameters:
  """

  @spec get_migration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_migration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_migration_errors()}

  def get_migration(%Client{} = client, migration_id, options \\ []) do
    url_path = "/migrations/#{AWS.Util.encode_uri(migration_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Gets a list of migrations between Amazon Lex V1 and Amazon Lex V2.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20GetMigrations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of migrations to return in the
  response. The default is 10.
  * `:migration_status_equals` (`t:enum["COMPLETED|FAILED|IN_PROGRESS"]`) Filters
  the list to contain only migrations in the specified state.
  * `:next_token` (`t:string`) A pagination token that fetches the next page of
  migrations. If the response to this operation is truncated, Amazon Lex
  returns a pagination token in the response. To fetch the next page of
  migrations, specify the pagination token in the request.
  * `:sort_by_attribute` (`t:enum["MIGRATION_DATE_TIME|V1_BOT_NAME"]`) The field
  to sort the list of migrations by. You can sort by the Amazon Lex V1 bot
  name or the date and time that the migration was started.
  * `:sort_by_order` (`t:enum["ASCENDING|DESCENDING"]`) The order so sort the
  list.
  * `:v1_bot_name_contains` (`t:string`) Filters the list to contain only bots
  whose name contains the specified string. The string is matched anywhere in
  bot name.
  """

  @spec get_migrations(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_migrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_migrations_errors()}

  def get_migrations(%Client{} = client, options \\ []) do
    url_path = "/migrations"

    # Validate optional parameters
    optional_params = [
      max_results: nil,
      migration_status_equals: nil,
      next_token: nil,
      sort_by_attribute: nil,
      sort_by_order: nil,
      v1_bot_name_contains: nil
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
      if opt_val = Keyword.get(options, :v1_bot_name_contains) do
        [{"v1BotNameContains", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :sort_by_order) do
        [{"sortByOrder", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :sort_by_attribute) do
        [{"sortByAttribute", opt_val} | query_params]
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
      if opt_val = Keyword.get(options, :migration_status_equals) do
        [{"migrationStatusEquals", opt_val} | query_params]
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
        :migration_status_equals,
        :next_token,
        :sort_by_attribute,
        :sort_by_order,
        :v1_bot_name_contains
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a specific version of a slot type. In addition to
  specifying the slot type name, you must specify the slot type version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20GetSlotType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the slot type. The name is case sensitive.
  * `:version` (`t:string`) The version of the slot type.

  ## Optional parameters:
  """

  @spec get_slot_type(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_slot_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_slot_type_errors()}

  def get_slot_type(%Client{} = client, name, version, options \\ []) do
    url_path = "/slottypes/#{AWS.Util.encode_uri(name)}/versions/#{AWS.Util.encode_uri(version)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Gets information about all versions of a slot type. The `GetSlotTypeVersions`
  operation returns a `SlotTypeMetadata` object for each version of a slot type.
  For example, if a slot type has three numbered versions, the
  `GetSlotTypeVersions` operation returns four `SlotTypeMetadata` objects in the
  response, one for each numbered version and one for the `$LATEST` version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20GetSlotTypeVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the slot type for which versions should be
  returned.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of slot type versions to
  return in the response. The default is 10.
  * `:next_token` (`t:string`) A pagination token for fetching the next page of
  slot type versions. If the response to this call is truncated, Amazon Lex
  returns a pagination token in the response. To fetch the next page of
  versions, specify the pagination token in the next request.
  """

  @spec get_slot_type_versions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_slot_type_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_slot_type_versions_errors()}

  def get_slot_type_versions(%Client{} = client, name, options \\ []) do
    url_path = "/slottypes/#{AWS.Util.encode_uri(name)}/versions"

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
  Returns slot type information as follows:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20GetSlotTypes&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of slot types to return in the
  response. The default is 10.
  * `:name_contains` (`t:string`) Substring to match in slot type names. A slot
  type will be returned if any part of its name matches the substring. For
  example, "xyz" matches both "xyzabc" and "abcxyz."
  * `:next_token` (`t:string`) A pagination token that fetches the next page of
  slot types. If the response to this API call is truncated, Amazon Lex
  returns a pagination token in the response. To fetch next page of slot
  types, specify the pagination token in the next request.
  """

  @spec get_slot_types(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_slot_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_slot_types_errors()}

  def get_slot_types(%Client{} = client, options \\ []) do
    url_path = "/slottypes"

    # Validate optional parameters
    optional_params = [max_results: nil, name_contains: nil, next_token: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :name_contains) do
        [{"nameContains", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :name_contains, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Use the `GetUtterancesView` operation to get information about the utterances
  that your users have made to your bot. You can use this list to tune the
  utterances that your bot responds to. For example, say that you have created a
  bot to order flowers. After your users have used your bot for a while, use the
  `GetUtterancesView` operation to see the requests that they have made and
  whether they have been successful. You might find that the utterance "I want
  flowers" is not being recognized. You could add this utterance to the
  `OrderFlowers` intent so that your bot recognizes that utterance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20GetUtterancesView&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bot_name` (`t:string`) The name of the bot for which utterance information
  should be returned.
  * `:bot_versions` (`t:list[com.amazonaws.lexmodelbuildingservice#Version]`) An
  array of bot versions for which utterance information should be returned.
  The limit is 5 versions per request.
  * `:status_type` (`t:enum["DETECTED|MISSED"]`) To return utterances that were
  recognized and handled, use Detected. To return utterances that were not
  recognized, use Missed.

  ## Optional parameters:
  """

  @spec get_utterances_view(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_utterances_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_utterances_view_errors()}

  def get_utterances_view(%Client{} = client, bot_name, bot_versions, status_type, options \\ [])
      when is_binary(bot_versions) and is_binary(status_type) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_name)}/utterances?view=aggregation"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"bot_versions", bot_versions}, {"status_type", status_type}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of tags associated with the specified resource. Only bots, bot
  aliases, and bot channels can have tags associated with them.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource to
  get a list of tags for.

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
  Creates an Amazon Lex conversational bot or replaces an existing bot. When you
  create or update a bot you are only required to specify a name, a locale, and
  whether the bot is directed toward children under age 13. You can use this to
  add intents later, or to remove intents from an existing bot. When you create
  a bot with the minimum information, the bot is created or updated but Amazon
  Lex returns the `` response `FAILED`. You can build the bot after you add one
  or more intents. For more information about Amazon Lex bots, see
  `how-it-works`. If you specify the name of an existing bot, the fields in the
  request replace the existing values in the `$LATEST` version of the bot.
  Amazon Lex removes any fields that you don't provide values for in the
  request, except for the `idleTTLInSeconds` and `privacySettings` fields, which
  are set to their default values. If you don't specify values for required
  fields, Amazon Lex throws an exception.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20PutBot&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the bot. The name is not case sensitive.

  ## Optional parameters:
  """

  @spec put_bot(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_bot_errors()}

  def put_bot(%Client{} = client, name, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(name)}/versions/$LATEST"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Creates an alias for the specified version of the bot or replaces an alias for
  the specified bot. To change the version of the bot that the alias points to,
  replace the alias. For more information about aliases, see
  `versioning-aliases`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20PutBotAlias&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:bot_name` (`t:string`) The name of the bot.
  * `:name` (`t:string`) The name of the alias. The name is not case sensitive.

  ## Optional parameters:
  """

  @spec put_bot_alias(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, put_bot_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_bot_alias_errors()}

  def put_bot_alias(%Client{} = client, bot_name, name, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_name)}/aliases/#{AWS.Util.encode_uri(name)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Creates an intent or replaces an existing intent. To define the interaction
  between the user and your bot, you use one or more intents. For a pizza
  ordering bot, for example, you would create an `OrderPizza` intent.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20PutIntent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the intent. The name is not case sensitive.

  ## Optional parameters:
  """

  @spec put_intent(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_intent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_intent_errors()}

  def put_intent(%Client{} = client, name, options \\ []) do
    url_path = "/intents/#{AWS.Util.encode_uri(name)}/versions/$LATEST"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Creates a custom slot type or replaces an existing custom slot type. To create a
  custom slot type, specify a name for the slot type and a set of enumeration
  values, which are the values that a slot of this type can assume. For more
  information, see `how-it-works`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20PutSlotType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the slot type. The name is not case
  sensitive.

  ## Optional parameters:
  """

  @spec put_slot_type(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_slot_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_slot_type_errors()}

  def put_slot_type(%Client{} = client, name, options \\ []) do
    url_path = "/slottypes/#{AWS.Util.encode_uri(name)}/versions/$LATEST"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Starts a job to import a resource to Amazon Lex.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20StartImport&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec start_import(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_import_errors()}

  def start_import(%Client{} = client, options \\ []) do
    url_path = "/imports"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Starts migrating a bot from Amazon Lex V1 to Amazon Lex V2. Migrate your bot
  when you want to take advantage of the new features of Amazon Lex V2.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20StartMigration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec start_migration(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_migration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_migration_errors()}

  def start_migration(%Client{} = client, options \\ []) do
    url_path = "/migrations"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 202)
  end

  @doc """
  Adds the specified tags to the specified resource. If a tag key already exists,
  the existing value is replaced with the new value.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the bot, bot
  alias, or bot channel to tag.

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

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Removes tags from a bot, bot alias or bot channel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=lexmodelbuildingservice%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource to
  remove the tags from.
  * `:tag_keys` (`t:list[com.amazonaws.lexmodelbuildingservice#TagKey]`) A list of
  tag keys to remove from the resource. If a tag key does not exist on the
  resource, it is ignored.

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
      204
    )
  end
end
