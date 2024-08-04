# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTThingsGraph do
  @moduledoc """
  AWS IoT Things Graph AWS IoT Things Graph provides an integrated set of tools
  that enable developers to connect devices and services that use different
  standards, such as units of measure and communication protocols. AWS IoT
  Things Graph makes it possible to build IoT applications with little to no
  code by connecting devices and services and defining how they interact at an
  abstract level.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      delete_namespace_response() :: %{
        "namespaceArn" => String.t(),
        "namespaceName" => String.t()
      }
      
  """
  @type delete_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_namespace_response() :: %{
        "namespaceArn" => String.t(),
        "namespaceName" => String.t(),
        "namespaceVersion" => float(),
        "trackingNamespaceName" => String.t(),
        "trackingNamespaceVersion" => float()
      }
      
  """
  @type describe_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_flow_templates_response() :: %{
        "nextToken" => String.t(),
        "summaries" => list(flow_template_summary()())
      }
      
  """
  @type search_flow_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_failure_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_things_response() :: %{
        "nextToken" => String.t(),
        "things" => list(thing()())
      }
      
  """
  @type search_things_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_entity_definitions_request() :: %{
        optional("deprecateExistingEntities") => boolean(),
        optional("document") => definition_document(),
        optional("syncWithPublicNamespace") => boolean()
      }
      
  """
  @type upload_entity_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_namespace_deletion_status_response() :: %{
        "errorCode" => list(any()),
        "errorMessage" => String.t(),
        "namespaceArn" => String.t(),
        "namespaceName" => String.t(),
        "status" => list(any())
      }
      
  """
  @type get_namespace_deletion_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      flow_execution_summary() :: %{
        "createdAt" => non_neg_integer(),
        "flowExecutionId" => String.t(),
        "flowTemplateId" => String.t(),
        "status" => list(any()),
        "systemInstanceId" => String.t(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type flow_execution_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      system_instance_filter() :: %{
        "name" => list(any()),
        "value" => list(String.t()())
      }
      
  """
  @type system_instance_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      upload_entity_definitions_response() :: %{
        "uploadId" => String.t()
      }
      
  """
  @type upload_entity_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_system_instance_request() :: %{
        optional("id") => String.t()
      }
      
  """
  @type delete_system_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_entity_to_thing_request() :: %{
        optional("namespaceVersion") => float(),
        required("entityId") => String.t(),
        required("thingName") => String.t()
      }
      
  """
  @type associate_entity_to_thing_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_filter() :: %{
        "name" => list(any()),
        "value" => list(String.t()())
      }
      
  """
  @type entity_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_system_template_request() :: %{
        optional("compatibleNamespaceVersion") => float(),
        required("definition") => definition_document(),
        required("id") => String.t()
      }
      
  """
  @type update_system_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_upload_status_response() :: %{
        "createdDate" => non_neg_integer(),
        "failureReason" => list(String.t()()),
        "namespaceArn" => String.t(),
        "namespaceName" => String.t(),
        "namespaceVersion" => float(),
        "uploadId" => String.t(),
        "uploadStatus" => list(any())
      }
      
  """
  @type get_upload_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_system_template_revisions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("id") => String.t()
      }
      
  """
  @type get_system_template_revisions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      undeploy_system_instance_response() :: %{
        "summary" => system_instance_summary()
      }
      
  """
  @type undeploy_system_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_entities_request() :: %{
        optional("namespaceVersion") => float(),
        required("ids") => list(String.t()())
      }
      
  """
  @type get_entities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_entities_response() :: %{
        "descriptions" => list(entity_description()()),
        "nextToken" => String.t()
      }
      
  """
  @type search_entities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_upload_status_request() :: %{
        required("uploadId") => String.t()
      }
      
  """
  @type get_upload_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_entities_response() :: %{
        "descriptions" => list(entity_description()())
      }
      
  """
  @type get_entities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_system_instance_response() :: %{
        "description" => system_instance_description()
      }
      
  """
  @type get_system_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_system_instance_request() :: %{
        required("id") => String.t()
      }
      
  """
  @type get_system_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_namespace_request() :: %{
        optional("namespaceName") => String.t()
      }
      
  """
  @type describe_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_flow_template_response() :: %{
        "summary" => flow_template_summary()
      }
      
  """
  @type update_flow_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_system_template_response() :: %{
        "description" => system_template_description()
      }
      
  """
  @type get_system_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_system_template_request() :: %{
        optional("compatibleNamespaceVersion") => float(),
        required("definition") => definition_document()
      }
      
  """
  @type create_system_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_system_instance_request() :: %{
        optional("flowActionsRoleArn") => String.t(),
        optional("greengrassGroupName") => String.t(),
        optional("metricsConfiguration") => metrics_configuration(),
        optional("s3BucketName") => String.t(),
        optional("tags") => list(tag()()),
        required("definition") => definition_document(),
        required("target") => list(any())
      }
      
  """
  @type create_system_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_system_instance_response() :: %{}
      
  """
  @type delete_system_instance_response() :: %{}

  @typedoc """

  ## Example:
      
      deprecate_flow_template_response() :: %{}
      
  """
  @type deprecate_flow_template_response() :: %{}

  @typedoc """

  ## Example:
      
      search_system_templates_request() :: %{
        optional("filters") => list(system_template_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type search_system_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_flow_executions_response() :: %{
        "nextToken" => String.t(),
        "summaries" => list(flow_execution_summary()())
      }
      
  """
  @type search_flow_executions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_description() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "definition" => definition_document(),
        "id" => String.t(),
        "type" => list(any())
      }
      
  """
  @type entity_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      system_template_description() :: %{
        "definition" => definition_document(),
        "summary" => system_template_summary(),
        "validatedNamespaceVersion" => float()
      }
      
  """
  @type system_template_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dissociate_entity_from_thing_response() :: %{}
      
  """
  @type dissociate_entity_from_thing_response() :: %{}

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
      
      get_flow_template_request() :: %{
        optional("revisionNumber") => float(),
        required("id") => String.t()
      }
      
  """
  @type get_flow_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_system_template_request() :: %{
        required("id") => String.t()
      }
      
  """
  @type delete_system_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_system_template_request() :: %{
        optional("revisionNumber") => float(),
        required("id") => String.t()
      }
      
  """
  @type get_system_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      thing() :: %{
        "thingArn" => String.t(),
        "thingName" => String.t()
      }
      
  """
  @type thing() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_namespace_deletion_status_request() :: %{}
      
  """
  @type get_namespace_deletion_status_request() :: %{}

  @typedoc """

  ## Example:
      
      search_system_instances_request() :: %{
        optional("filters") => list(system_instance_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type search_system_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_flow_templates_request() :: %{
        optional("filters") => list(flow_template_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type search_flow_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      system_template_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "id" => String.t(),
        "revisionNumber" => float()
      }
      
  """
  @type system_template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_flow_template_response() :: %{
        "summary" => flow_template_summary()
      }
      
  """
  @type create_flow_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_flow_execution_messages_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("flowExecutionId") => String.t()
      }
      
  """
  @type list_flow_execution_messages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "nextToken" => String.t(),
        "tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      undeploy_system_instance_request() :: %{
        optional("id") => String.t()
      }
      
  """
  @type undeploy_system_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      system_instance_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "greengrassGroupId" => String.t(),
        "greengrassGroupName" => String.t(),
        "greengrassGroupVersionId" => String.t(),
        "id" => String.t(),
        "status" => list(any()),
        "target" => list(any()),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type system_instance_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_flow_template_request() :: %{
        optional("compatibleNamespaceVersion") => float(),
        required("definition") => definition_document()
      }
      
  """
  @type create_flow_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_flow_template_revisions_response() :: %{
        "nextToken" => String.t(),
        "summaries" => list(flow_template_summary()())
      }
      
  """
  @type get_flow_template_revisions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_things_request() :: %{
        optional("maxResults") => integer(),
        optional("namespaceVersion") => float(),
        optional("nextToken") => String.t(),
        required("entityId") => String.t()
      }
      
  """
  @type search_things_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_system_template_response() :: %{}
      
  """
  @type delete_system_template_response() :: %{}

  @typedoc """

  ## Example:
      
      search_entities_request() :: %{
        optional("filters") => list(entity_filter()()),
        optional("maxResults") => integer(),
        optional("namespaceVersion") => float(),
        optional("nextToken") => String.t(),
        required("entityTypes") => list(list(any())())
      }
      
  """
  @type search_entities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deprecate_system_template_response() :: %{}
      
  """
  @type deprecate_system_template_response() :: %{}

  @typedoc """

  ## Example:
      
      flow_template_description() :: %{
        "definition" => definition_document(),
        "summary" => flow_template_summary(),
        "validatedNamespaceVersion" => float()
      }
      
  """
  @type flow_template_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_system_instances_response() :: %{
        "nextToken" => String.t(),
        "summaries" => list(system_instance_summary()())
      }
      
  """
  @type search_system_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      flow_execution_message() :: %{
        "eventType" => list(any()),
        "messageId" => String.t(),
        "payload" => String.t(),
        "timestamp" => non_neg_integer()
      }
      
  """
  @type flow_execution_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_system_template_response() :: %{
        "summary" => system_template_summary()
      }
      
  """
  @type create_system_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      definition_document() :: %{
        "language" => list(any()),
        "text" => String.t()
      }
      
  """
  @type definition_document() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("resourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      system_instance_description() :: %{
        "definition" => definition_document(),
        "flowActionsRoleArn" => String.t(),
        "metricsConfiguration" => metrics_configuration(),
        "s3BucketName" => String.t(),
        "summary" => system_instance_summary(),
        "validatedDependencyRevisions" => list(dependency_revision()()),
        "validatedNamespaceVersion" => float()
      }
      
  """
  @type system_instance_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_namespace_request() :: %{}
      
  """
  @type delete_namespace_request() :: %{}

  @typedoc """

  ## Example:
      
      get_flow_template_revisions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("id") => String.t()
      }
      
  """
  @type get_flow_template_revisions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_flow_template_request() :: %{
        optional("compatibleNamespaceVersion") => float(),
        required("definition") => definition_document(),
        required("id") => String.t()
      }
      
  """
  @type update_flow_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_system_instance_response() :: %{
        "summary" => system_instance_summary()
      }
      
  """
  @type create_system_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      system_template_filter() :: %{
        "name" => list(any()),
        "value" => list(String.t()())
      }
      
  """
  @type system_template_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_system_templates_response() :: %{
        "nextToken" => String.t(),
        "summaries" => list(system_template_summary()())
      }
      
  """
  @type search_system_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_entity_to_thing_response() :: %{}
      
  """
  @type associate_entity_to_thing_response() :: %{}

  @typedoc """

  ## Example:
      
      update_system_template_response() :: %{
        "summary" => system_template_summary()
      }
      
  """
  @type update_system_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_system_template_revisions_response() :: %{
        "nextToken" => String.t(),
        "summaries" => list(system_template_summary()())
      }
      
  """
  @type get_system_template_revisions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dissociate_entity_from_thing_request() :: %{
        required("entityType") => list(any()),
        required("thingName") => String.t()
      }
      
  """
  @type dissociate_entity_from_thing_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      flow_template_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "id" => String.t(),
        "revisionNumber" => float()
      }
      
  """
  @type flow_template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_flow_template_request() :: %{
        required("id") => String.t()
      }
      
  """
  @type delete_flow_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_flow_execution_messages_response() :: %{
        "messages" => list(flow_execution_message()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_flow_execution_messages_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dependency_revision() :: %{
        "id" => String.t(),
        "revisionNumber" => float()
      }
      
  """
  @type dependency_revision() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_flow_executions_request() :: %{
        optional("endTime") => non_neg_integer(),
        optional("flowExecutionId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("startTime") => non_neg_integer(),
        required("systemInstanceId") => String.t()
      }
      
  """
  @type search_flow_executions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deprecate_flow_template_request() :: %{
        required("id") => String.t()
      }
      
  """
  @type deprecate_flow_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_flow_template_response() :: %{
        "description" => flow_template_description()
      }
      
  """
  @type get_flow_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      flow_template_filter() :: %{
        "name" => list(any()),
        "value" => list(String.t()())
      }
      
  """
  @type flow_template_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_flow_template_response() :: %{}
      
  """
  @type delete_flow_template_response() :: %{}

  @typedoc """

  ## Example:
      
      deprecate_system_template_request() :: %{
        required("id") => String.t()
      }
      
  """
  @type deprecate_system_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deploy_system_instance_response() :: %{
        "greengrassDeploymentId" => String.t(),
        "summary" => system_instance_summary()
      }
      
  """
  @type deploy_system_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metrics_configuration() :: %{
        "cloudMetricEnabled" => boolean(),
        "metricRuleRoleArn" => String.t()
      }
      
  """
  @type metrics_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deploy_system_instance_request() :: %{
        optional("id") => String.t()
      }
      
  """
  @type deploy_system_instance_request() :: %{String.t() => any()}

  @type associate_entity_to_thing_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type create_flow_template_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type create_system_instance_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type create_system_template_errors() ::
          resource_already_exists_exception()
          | throttling_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type delete_flow_template_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type delete_namespace_errors() :: throttling_exception() | internal_failure_exception()

  @type delete_system_instance_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type delete_system_template_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type deploy_system_instance_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type deprecate_flow_template_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type deprecate_system_template_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_namespace_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type dissociate_entity_from_thing_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type get_entities_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type get_flow_template_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type get_flow_template_revisions_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type get_namespace_deletion_status_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type get_system_instance_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type get_system_template_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type get_system_template_revisions_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type get_upload_status_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_flow_execution_messages_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_tags_for_resource_errors() ::
          resource_already_exists_exception()
          | throttling_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type search_entities_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type search_flow_executions_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type search_flow_templates_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type search_system_instances_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type search_system_templates_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type search_things_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type tag_resource_errors() ::
          resource_already_exists_exception()
          | throttling_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type undeploy_system_instance_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type untag_resource_errors() ::
          resource_already_exists_exception()
          | throttling_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type update_flow_template_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_system_template_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type upload_entity_definitions_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  def metadata do
    %{
      api_version: "2018-09-06",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "iotthingsgraph",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "IoTThingsGraph",
      signature_version: "v4",
      signing_name: "iotthingsgraph",
      target_prefix: "IotThingsGraphFrontEndService"
    }
  end

  @doc """
   
  Associates a device with a concrete thing that is in the user's registry.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20AssociateEntityToThing&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_entity_to_thing_request`)
    %{
      optional("namespaceVersion") => float(),
      required("entityId") => String.t(),
      required("thingName") => String.t()
    }
  """
  @spec associate_entity_to_thing(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, associate_entity_to_thing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_entity_to_thing_errors()}
  def associate_entity_to_thing(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateEntityToThing", input, options)
  end

  @doc """
   
  Creates a workflow template. Workflows can be created only in the user's
  namespace. (The public namespace contains only entities.) The workflow can
  contain only entities in the specified namespace. The workflow is validated
  against the entities in the latest version of the user's namespace unless
  another namespace version is specified in the request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20CreateFlowTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_flow_template_request`)
    %{
      optional("compatibleNamespaceVersion") => float(),
      required("definition") => definition_document()
    }
  """
  @spec create_flow_template(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_flow_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_flow_template_errors()}
  def create_flow_template(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateFlowTemplate", input, options)
  end

  @doc """
   
  Creates a system instance. This action validates the system instance, prepares
  the deployment-related resources. For Greengrass deployments, it updates the
  Greengrass group that is specified by the `greengrassGroupName` parameter. It
  also adds a file to the S3 bucket specified by the `s3BucketName` parameter.
  You need to call `DeploySystemInstance` after running this action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20CreateSystemInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_system_instance_request`)
    %{
      optional("flowActionsRoleArn") => String.t(),
      optional("greengrassGroupName") => String.t(),
      optional("metricsConfiguration") => metrics_configuration(),
      optional("s3BucketName") => String.t(),
      optional("tags") => list(tag()()),
      required("definition") => definition_document(),
      required("target") => list(any())
    }
  """
  @spec create_system_instance(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_system_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_system_instance_errors()}
  def create_system_instance(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateSystemInstance", input, options)
  end

  @doc """
   
  Creates a system. The system is validated against the entities in the latest
  version of the user's namespace unless another namespace version is specified
  in the request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20CreateSystemTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_system_template_request`)
    %{
      optional("compatibleNamespaceVersion") => float(),
      required("definition") => definition_document()
    }
  """
  @spec create_system_template(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_system_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_system_template_errors()}
  def create_system_template(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateSystemTemplate", input, options)
  end

  @doc """
   
  Deletes a workflow. Any new system or deployment that contains this workflow
  will fail to update or deploy. Existing deployments that contain the workflow
  will continue to run (since they use a snapshot of the workflow taken at the
  time of deployment).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20DeleteFlowTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_flow_template_request`)
    %{
      required("id") => String.t()
    }
  """
  @spec delete_flow_template(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_flow_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_flow_template_errors()}
  def delete_flow_template(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteFlowTemplate", input, options)
  end

  @doc """
   
  Deletes the specified namespace. This action deletes all of the entities in the
  namespace. Delete the systems and flows that use entities in the namespace
  before performing this action. This action takes no request parameters.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20DeleteNamespace&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_namespace_request`)
    %{
      
    }
  """
  @spec delete_namespace(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_namespace_errors()}
  def delete_namespace(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteNamespace", input, options)
  end

  @doc """
   
  Deletes a system instance. Only system instances that have never been deployed,
  or that have been undeployed can be deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20DeleteSystemInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_system_instance_request`)
    %{
      optional("id") => String.t()
    }
  """
  @spec delete_system_instance(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_system_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_system_instance_errors()}
  def delete_system_instance(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteSystemInstance", input, options)
  end

  @doc """
   
  Deletes a system. New deployments can't contain the system after its deletion.
  Existing deployments that contain the system will continue to work because
  they use a snapshot of the system that is taken when it is deployed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20DeleteSystemTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_system_template_request`)
    %{
      required("id") => String.t()
    }
  """
  @spec delete_system_template(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_system_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_system_template_errors()}
  def delete_system_template(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteSystemTemplate", input, options)
  end

  @doc """
   
  **Greengrass and Cloud Deployments** Deploys the system instance to the target
  specified in `CreateSystemInstance`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20DeploySystemInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:deploy_system_instance_request`)
    %{
      optional("id") => String.t()
    }
  """
  @spec deploy_system_instance(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, deploy_system_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deploy_system_instance_errors()}
  def deploy_system_instance(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeploySystemInstance", input, options)
  end

  @doc """
   
  Deprecates the specified workflow. This action marks the workflow for deletion.
  Deprecated flows can't be deployed, but existing deployments will continue to
  run.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20DeprecateFlowTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:deprecate_flow_template_request`)
    %{
      required("id") => String.t()
    }
  """
  @spec deprecate_flow_template(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, deprecate_flow_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deprecate_flow_template_errors()}
  def deprecate_flow_template(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeprecateFlowTemplate", input, options)
  end

  @doc """
   
  Deprecates the specified system.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20DeprecateSystemTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:deprecate_system_template_request`)
    %{
      required("id") => String.t()
    }
  """
  @spec deprecate_system_template(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, deprecate_system_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deprecate_system_template_errors()}
  def deprecate_system_template(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeprecateSystemTemplate", input, options)
  end

  @doc """
   
  Gets the latest version of the user's namespace and the public version that it
  is tracking.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20DescribeNamespace&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_namespace_request`)
    %{
      optional("namespaceName") => String.t()
    }
  """
  @spec describe_namespace(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_namespace_errors()}
  def describe_namespace(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeNamespace", input, options)
  end

  @doc """
   
  Dissociates a device entity from a concrete thing. The action takes only the
  type of the entity that you need to dissociate because only one entity of a
  particular type can be associated with a thing.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20DissociateEntityFromThing&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:dissociate_entity_from_thing_request`)
    %{
      required("entityType") => list(any()),
      required("thingName") => String.t()
    }
  """
  @spec dissociate_entity_from_thing(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, dissociate_entity_from_thing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, dissociate_entity_from_thing_errors()}
  def dissociate_entity_from_thing(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DissociateEntityFromThing", input, options)
  end

  @doc """
   
  Gets definitions of the specified entities. Uses the latest version of the
  user's namespace by default. This API returns the following TDM entities.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20GetEntities&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_entities_request`)
    %{
      optional("namespaceVersion") => float(),
      required("ids") => list(String.t()())
    }
  """
  @spec get_entities(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_entities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_entities_errors()}
  def get_entities(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetEntities", input, options)
  end

  @doc """
   
  Gets the latest version of the `DefinitionDocument` and `FlowTemplateSummary`
  for the specified workflow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20GetFlowTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_flow_template_request`)
    %{
      optional("revisionNumber") => float(),
      required("id") => String.t()
    }
  """
  @spec get_flow_template(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_flow_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_flow_template_errors()}
  def get_flow_template(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetFlowTemplate", input, options)
  end

  @doc """
   
  Gets revisions of the specified workflow. Only the last 100 revisions are
  stored. If the workflow has been deprecated, this action will return revisions
  that occurred before the deprecation. This action won't work for workflows
  that have been deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20GetFlowTemplateRevisions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_flow_template_revisions_request`)
    %{
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      required("id") => String.t()
    }
  """
  @spec get_flow_template_revisions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_flow_template_revisions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_flow_template_revisions_errors()}
  def get_flow_template_revisions(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetFlowTemplateRevisions", input, options)
  end

  @doc """
   
  Gets the status of a namespace deletion task.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20GetNamespaceDeletionStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_namespace_deletion_status_request`)
    %{
      
    }
  """
  @spec get_namespace_deletion_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_namespace_deletion_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_namespace_deletion_status_errors()}
  def get_namespace_deletion_status(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetNamespaceDeletionStatus", input, options)
  end

  @doc """
   
  Gets a system instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20GetSystemInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_system_instance_request`)
    %{
      required("id") => String.t()
    }
  """
  @spec get_system_instance(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_system_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_system_instance_errors()}
  def get_system_instance(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSystemInstance", input, options)
  end

  @doc """
   
  Gets a system.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20GetSystemTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_system_template_request`)
    %{
      optional("revisionNumber") => float(),
      required("id") => String.t()
    }
  """
  @spec get_system_template(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_system_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_system_template_errors()}
  def get_system_template(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSystemTemplate", input, options)
  end

  @doc """
   
  Gets revisions made to the specified system template. Only the previous 100
  revisions are stored. If the system has been deprecated, this action will
  return the revisions that occurred before its deprecation. This action won't
  work with systems that have been deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20GetSystemTemplateRevisions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_system_template_revisions_request`)
    %{
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      required("id") => String.t()
    }
  """
  @spec get_system_template_revisions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_system_template_revisions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_system_template_revisions_errors()}
  def get_system_template_revisions(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSystemTemplateRevisions", input, options)
  end

  @doc """
   
  Gets the status of the specified upload.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20GetUploadStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_upload_status_request`)
    %{
      required("uploadId") => String.t()
    }
  """
  @spec get_upload_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_upload_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_upload_status_errors()}
  def get_upload_status(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetUploadStatus", input, options)
  end

  @doc """
   
  Returns a list of objects that contain information about events in a flow
  execution.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20ListFlowExecutionMessages&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_flow_execution_messages_request`)
    %{
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      required("flowExecutionId") => String.t()
    }
  """
  @spec list_flow_execution_messages(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_flow_execution_messages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_flow_execution_messages_errors()}
  def list_flow_execution_messages(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListFlowExecutionMessages", input, options)
  end

  @doc """
   
  Lists all tags on an AWS IoT Things Graph resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_request`)
    %{
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      required("resourceArn") => String.t()
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
   
  Searches for entities of the specified type. You can search for entities in your
  namespace and the public namespace that you're tracking.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20SearchEntities&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:search_entities_request`)
    %{
      optional("filters") => list(entity_filter()()),
      optional("maxResults") => integer(),
      optional("namespaceVersion") => float(),
      optional("nextToken") => String.t(),
      required("entityTypes") => list(list(any())())
    }
  """
  @spec search_entities(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, search_entities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_entities_errors()}
  def search_entities(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SearchEntities", input, options)
  end

  @doc """
   
  Searches for AWS IoT Things Graph workflow execution instances.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20SearchFlowExecutions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:search_flow_executions_request`)
    %{
      optional("endTime") => non_neg_integer(),
      optional("flowExecutionId") => String.t(),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      optional("startTime") => non_neg_integer(),
      required("systemInstanceId") => String.t()
    }
  """
  @spec search_flow_executions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, search_flow_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_flow_executions_errors()}
  def search_flow_executions(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SearchFlowExecutions", input, options)
  end

  @doc """
   
  Searches for summary information about workflows.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20SearchFlowTemplates&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:search_flow_templates_request`)
    %{
      optional("filters") => list(flow_template_filter()()),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t()
    }
  """
  @spec search_flow_templates(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, search_flow_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_flow_templates_errors()}
  def search_flow_templates(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SearchFlowTemplates", input, options)
  end

  @doc """
   
  Searches for system instances in the user's account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20SearchSystemInstances&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:search_system_instances_request`)
    %{
      optional("filters") => list(system_instance_filter()()),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t()
    }
  """
  @spec search_system_instances(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, search_system_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_system_instances_errors()}
  def search_system_instances(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SearchSystemInstances", input, options)
  end

  @doc """
   
  Searches for summary information about systems in the user's account. You can
  filter by the ID of a workflow to return only systems that use the specified
  workflow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20SearchSystemTemplates&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:search_system_templates_request`)
    %{
      optional("filters") => list(system_template_filter()()),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t()
    }
  """
  @spec search_system_templates(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, search_system_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_system_templates_errors()}
  def search_system_templates(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SearchSystemTemplates", input, options)
  end

  @doc """
   
  Searches for things associated with the specified entity. You can search by both
  device and device model. For example, if two different devices, camera1 and
  camera2, implement the camera device model, the user can associate thing1 to
  camera1 and thing2 to camera2. `SearchThings(camera2)` will return only
  thing2, but `SearchThings(camera)` will return both thing1 and thing2.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20SearchThings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:search_things_request`)
    %{
      optional("maxResults") => integer(),
      optional("namespaceVersion") => float(),
      optional("nextToken") => String.t(),
      required("entityId") => String.t()
    }
  """
  @spec search_things(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, search_things_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_things_errors()}
  def search_things(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SearchThings", input, options)
  end

  @doc """
   
  Creates a tag for the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_request`)
    %{
      required("resourceArn") => String.t(),
      required("tags") => list(tag()())
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
   
  Removes a system instance from its target (Cloud or Greengrass).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20UndeploySystemInstance&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:undeploy_system_instance_request`)
    %{
      optional("id") => String.t()
    }
  """
  @spec undeploy_system_instance(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, undeploy_system_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, undeploy_system_instance_errors()}
  def undeploy_system_instance(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UndeploySystemInstance", input, options)
  end

  @doc """
   
  Removes a tag from the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_request`)
    %{
      required("resourceArn") => String.t(),
      required("tagKeys") => list(String.t()())
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
   
  Updates the specified workflow. All deployed systems and system instances that
  use the workflow will see the changes in the flow when it is redeployed. If
  you don't want this behavior, copy the workflow (creating a new workflow with
  a different ID), and update the copy. The workflow can contain only entities
  in the specified namespace.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20UpdateFlowTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_flow_template_request`)
    %{
      optional("compatibleNamespaceVersion") => float(),
      required("definition") => definition_document(),
      required("id") => String.t()
    }
  """
  @spec update_flow_template(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_flow_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_flow_template_errors()}
  def update_flow_template(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateFlowTemplate", input, options)
  end

  @doc """
   
  Updates the specified system. You don't need to run this action after updating a
  workflow. Any deployment that uses the system will see the changes in the
  system when it is redeployed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20UpdateSystemTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_system_template_request`)
    %{
      optional("compatibleNamespaceVersion") => float(),
      required("definition") => definition_document(),
      required("id") => String.t()
    }
  """
  @spec update_system_template(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_system_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_system_template_errors()}
  def update_system_template(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSystemTemplate", input, options)
  end

  @doc """
   
  Asynchronously uploads one or more entity definitions to the user's namespace.
  The `document` parameter is required if `syncWithPublicNamespace` and
  `deleteExistingEntites` are false. If the `syncWithPublicNamespace` parameter
  is set to `true`, the user's namespace will synchronize with the latest
  version of the public namespace. If `deprecateExistingEntities` is set to
  true, all entities in the latest version will be deleted before the new
  `DefinitionDocument` is uploaded. When a user uploads entity definitions for
  the first time, the service creates a new namespace for the user. The new
  namespace tracks the public namespace. Currently users can have only one
  namespace. The namespace version increments whenever a user uploads entity
  definitions that are backwards-incompatible and whenever a user sets the
  `syncWithPublicNamespace` parameter or the `deprecateExistingEntities`
  parameter to `true`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=iotthingsgraph%20UploadEntityDefinitions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:upload_entity_definitions_request`)
    %{
      optional("deprecateExistingEntities") => boolean(),
      optional("document") => definition_document(),
      optional("syncWithPublicNamespace") => boolean()
    }
  """
  @spec upload_entity_definitions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, upload_entity_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, upload_entity_definitions_errors()}
  def upload_entity_definitions(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UploadEntityDefinitions", input, options)
  end
end
