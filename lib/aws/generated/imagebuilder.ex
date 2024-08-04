# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Imagebuilder do
  @moduledoc """
  EC2 Image Builder is a fully managed Amazon Web Services service that makes it
  easier to automate the creation, management, and deployment of customized,
  secure, and up-to-date "golden" server images that are pre-installed and
  pre-configured with software and settings to meet specific IT standards.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_workflow_executions_response() :: %{
        "imageBuildVersionArn" => String.t(),
        "message" => String.t(),
        "nextToken" => String.t(),
        "requestId" => String.t(),
        "workflowExecutions" => list(workflow_execution_metadata()())
      }
      
  """
  @type list_workflow_executions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_lifecycle_execution_response() :: %{
        "lifecycleExecutionId" => String.t()
      }
      
  """
  @type cancel_lifecycle_execution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workflow_build_versions_response() :: %{
        "nextToken" => String.t(),
        "workflowSummaryList" => list(workflow_summary()())
      }
      
  """
  @type list_workflow_build_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_distribution_configurations_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_distribution_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workflow_request() :: %{
        optional("changeDescription") => String.t(),
        optional("data") => String.t(),
        optional("description") => String.t(),
        optional("kmsKeyId") => String.t(),
        optional("tags") => map(),
        optional("uri") => String.t(),
        required("clientToken") => String.t(),
        required("name") => String.t(),
        required("semanticVersion") => String.t(),
        required("type") => list(any())
      }
      
  """
  @type create_workflow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_image_policy_request() :: %{
        required("imageArn") => String.t()
      }
      
  """
  @type get_image_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_resource_state_update_request() :: %{
        optional("exclusionRules") => resource_state_update_exclusion_rules(),
        optional("executionRole") => String.t(),
        optional("includeResources") => resource_state_update_include_resources(),
        optional("updateAt") => non_neg_integer(),
        required("clientToken") => String.t(),
        required("resourceArn") => String.t(),
        required("state") => resource_state()
      }
      
  """
  @type start_resource_state_update_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_image_pipeline_images_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("imagePipelineArn") => String.t()
      }
      
  """
  @type list_image_pipeline_images_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_container_recipe_policy_response() :: %{
        "containerRecipeArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type put_container_recipe_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy_detail_exclusion_rules() :: %{
        "amis" => lifecycle_policy_detail_exclusion_rules_amis(),
        "tagMap" => map()
      }
      
  """
  @type lifecycle_policy_detail_exclusion_rules() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_vm_image_request() :: %{
        optional("description") => String.t(),
        optional("osVersion") => String.t(),
        optional("tags") => map(),
        required("clientToken") => String.t(),
        required("name") => String.t(),
        required("platform") => list(any()),
        required("semanticVersion") => String.t(),
        required("vmImportTaskId") => String.t()
      }
      
  """
  @type import_vm_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      component_parameter_detail() :: %{
        "defaultValue" => list(String.t()()),
        "description" => String.t(),
        "name" => String.t(),
        "type" => String.t()
      }
      
  """
  @type component_parameter_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_scan_state() :: %{
        "reason" => String.t(),
        "status" => list(any())
      }
      
  """
  @type image_scan_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy_detail_action_include_resources() :: %{
        "amis" => boolean(),
        "containers" => boolean(),
        "snapshots" => boolean()
      }
      
  """
  @type lifecycle_policy_detail_action_include_resources() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workflow_step_executions_response() :: %{
        "imageBuildVersionArn" => String.t(),
        "message" => String.t(),
        "nextToken" => String.t(),
        "requestId" => String.t(),
        "steps" => list(workflow_step_metadata()()),
        "workflowBuildVersionArn" => String.t(),
        "workflowExecutionId" => String.t()
      }
      
  """
  @type list_workflow_step_executions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_image_packages_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("imageBuildVersionArn") => String.t()
      }
      
  """
  @type list_image_packages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container() :: %{
        "imageUris" => list(String.t()()),
        "region" => String.t()
      }
      
  """
  @type container() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_distribution_configuration_response() :: %{
        "clientToken" => String.t(),
        "distributionConfigurationArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type update_distribution_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      infrastructure_configuration_summary() :: %{
        "arn" => String.t(),
        "dateCreated" => String.t(),
        "dateUpdated" => String.t(),
        "description" => String.t(),
        "instanceProfileName" => String.t(),
        "instanceTypes" => list(String.t()()),
        "name" => String.t(),
        "resourceTags" => map(),
        "tags" => map()
      }
      
  """
  @type infrastructure_configuration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_image_recipes_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("owner") => list(any())
      }
      
  """
  @type list_image_recipes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_version() :: %{
        "arn" => String.t(),
        "dateCreated" => String.t(),
        "description" => String.t(),
        "name" => String.t(),
        "owner" => String.t(),
        "type" => list(any()),
        "version" => String.t()
      }
      
  """
  @type workflow_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_image_pipelines_response() :: %{
        "imagePipelineList" => list(image_pipeline()()),
        "nextToken" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type list_image_pipelines_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_image_response() :: %{
        "clientToken" => String.t(),
        "imageBuildVersionArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type create_image_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_container_recipe_policy_request() :: %{
        required("containerRecipeArn") => String.t(),
        required("policy") => String.t()
      }
      
  """
  @type put_container_recipe_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_waiting_workflow_steps_response() :: %{
        "nextToken" => String.t(),
        "steps" => list(workflow_step_execution()())
      }
      
  """
  @type list_waiting_workflow_steps_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_lifecycle_policy_request() :: %{
        optional("description") => String.t(),
        optional("status") => list(any()),
        required("clientToken") => String.t(),
        required("executionRole") => String.t(),
        required("lifecyclePolicyArn") => String.t(),
        required("policyDetails") => list(lifecycle_policy_detail()()),
        required("resourceSelection") => lifecycle_policy_resource_selection(),
        required("resourceType") => list(any())
      }
      
  """
  @type update_lifecycle_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remediation() :: %{
        "recommendation" => remediation_recommendation()
      }
      
  """
  @type remediation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_scanning_configuration() :: %{
        "ecrConfiguration" => ecr_configuration(),
        "imageScanningEnabled" => boolean()
      }
      
  """
  @type image_scanning_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_image_pipeline_execution_response() :: %{
        "clientToken" => String.t(),
        "imageBuildVersionArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type start_image_pipeline_execution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_image_recipe_policy_response() :: %{
        "imageRecipeArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type put_image_recipe_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_workflow_step_execution_response() :: %{
        "action" => String.t(),
        "description" => String.t(),
        "endTime" => String.t(),
        "imageBuildVersionArn" => String.t(),
        "inputs" => String.t(),
        "message" => String.t(),
        "name" => String.t(),
        "onFailure" => String.t(),
        "outputs" => String.t(),
        "requestId" => String.t(),
        "rollbackStatus" => list(any()),
        "startTime" => String.t(),
        "status" => list(any()),
        "stepExecutionId" => String.t(),
        "timeoutSeconds" => integer(),
        "workflowBuildVersionArn" => String.t(),
        "workflowExecutionId" => String.t()
      }
      
  """
  @type get_workflow_step_execution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      invalid_version_number_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_version_number_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lifecycle_execution_resources_response() :: %{
        "lifecycleExecutionId" => String.t(),
        "lifecycleExecutionState" => lifecycle_execution_state(),
        "nextToken" => String.t(),
        "resources" => list(lifecycle_execution_resource()())
      }
      
  """
  @type list_lifecycle_execution_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workflow_request() :: %{
        required("workflowBuildVersionArn") => String.t()
      }
      
  """
  @type delete_workflow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_image_scan_finding_aggregations_request() :: %{
        optional("filter") => filter(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_image_scan_finding_aggregations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_pipeline() :: %{
        "arn" => String.t(),
        "containerRecipeArn" => String.t(),
        "dateCreated" => String.t(),
        "dateLastRun" => String.t(),
        "dateNextRun" => String.t(),
        "dateUpdated" => String.t(),
        "description" => String.t(),
        "distributionConfigurationArn" => String.t(),
        "enhancedImageMetadataEnabled" => boolean(),
        "executionRole" => String.t(),
        "imageRecipeArn" => String.t(),
        "imageScanningConfiguration" => image_scanning_configuration(),
        "imageTestsConfiguration" => image_tests_configuration(),
        "infrastructureConfigurationArn" => String.t(),
        "name" => String.t(),
        "platform" => list(any()),
        "schedule" => schedule(),
        "status" => list(any()),
        "tags" => map(),
        "workflows" => list(workflow_configuration()())
      }
      
  """
  @type image_pipeline() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_parameter_detail() :: %{
        "defaultValue" => list(String.t()()),
        "description" => String.t(),
        "name" => String.t(),
        "type" => String.t()
      }
      
  """
  @type workflow_parameter_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      forbidden_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_block_device_mapping() :: %{
        "deviceName" => String.t(),
        "ebs" => ebs_instance_block_device_specification(),
        "noDevice" => String.t(),
        "virtualName" => String.t()
      }
      
  """
  @type instance_block_device_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_lifecycle_policy_response() :: %{
        "lifecyclePolicyArn" => String.t()
      }
      
  """
  @type update_lifecycle_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ebs_instance_block_device_specification() :: %{
        "deleteOnTermination" => boolean(),
        "encrypted" => boolean(),
        "iops" => integer(),
        "kmsKeyId" => String.t(),
        "snapshotId" => String.t(),
        "throughput" => integer(),
        "volumeSize" => integer(),
        "volumeType" => list(any())
      }
      
  """
  @type ebs_instance_block_device_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_container_recipe_response() :: %{
        "containerRecipe" => container_recipe(),
        "requestId" => String.t()
      }
      
  """
  @type get_container_recipe_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lifecycle_execution_request() :: %{
        required("lifecycleExecutionId") => String.t()
      }
      
  """
  @type get_lifecycle_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vulnerability_id_aggregation() :: %{
        "severityCounts" => severity_counts(),
        "vulnerabilityId" => String.t()
      }
      
  """
  @type vulnerability_id_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ami() :: %{
        "accountId" => String.t(),
        "description" => String.t(),
        "image" => String.t(),
        "name" => String.t(),
        "region" => String.t(),
        "state" => image_state()
      }
      
  """
  @type ami() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_state() :: %{
        "status" => list(any())
      }
      
  """
  @type resource_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_image_response() :: %{
        "image" => image(),
        "requestId" => String.t()
      }
      
  """
  @type get_image_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_image_recipe_policy_response() :: %{
        "policy" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type get_image_recipe_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lifecycle_policies_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_lifecycle_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_execution_resource_action() :: %{
        "name" => list(any()),
        "reason" => String.t()
      }
      
  """
  @type lifecycle_execution_resource_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_image_pipeline_response() :: %{
        "clientToken" => String.t(),
        "imagePipelineArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type create_image_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_infrastructure_configuration_request() :: %{
        optional("description") => String.t(),
        optional("instanceMetadataOptions") => instance_metadata_options(),
        optional("instanceTypes") => list(String.t()()),
        optional("keyPair") => String.t(),
        optional("logging") => logging(),
        optional("resourceTags") => map(),
        optional("securityGroupIds") => list(String.t()()),
        optional("snsTopicArn") => String.t(),
        optional("subnetId") => String.t(),
        optional("tags") => map(),
        optional("terminateInstanceOnFailure") => boolean(),
        required("clientToken") => String.t(),
        required("instanceProfileName") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_infrastructure_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_component_request() :: %{
        required("componentBuildVersionArn") => String.t()
      }
      
  """
  @type delete_component_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_workflow_step_action_request() :: %{
        optional("reason") => String.t(),
        required("action") => list(any()),
        required("clientToken") => String.t(),
        required("imageBuildVersionArn") => String.t(),
        required("stepExecutionId") => String.t()
      }
      
  """
  @type send_workflow_step_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ecr_configuration() :: %{
        "containerTags" => list(String.t()()),
        "repositoryName" => String.t()
      }
      
  """
  @type ecr_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lifecycle_execution_response() :: %{
        "lifecycleExecution" => lifecycle_execution()
      }
      
  """
  @type get_lifecycle_execution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_component_response() :: %{
        "component" => component(),
        "requestId" => String.t()
      }
      
  """
  @type get_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_scan_findings_filter() :: %{
        "name" => String.t(),
        "values" => list(String.t()())
      }
      
  """
  @type image_scan_findings_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_image_recipe_request() :: %{
        optional("additionalInstanceConfiguration") => additional_instance_configuration(),
        optional("blockDeviceMappings") => list(instance_block_device_mapping()()),
        optional("description") => String.t(),
        optional("tags") => map(),
        optional("workingDirectory") => String.t(),
        required("clientToken") => String.t(),
        required("components") => list(component_configuration()()),
        required("name") => String.t(),
        required("parentImage") => String.t(),
        required("semanticVersion") => String.t()
      }
      
  """
  @type create_image_recipe_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_container_recipe_policy_request() :: %{
        required("containerRecipeArn") => String.t()
      }
      
  """
  @type get_container_recipe_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_container_recipes_response() :: %{
        "containerRecipeSummaryList" => list(container_recipe_summary()()),
        "nextToken" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type list_container_recipes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_infrastructure_configuration_response() :: %{
        "infrastructureConfiguration" => infrastructure_configuration(),
        "requestId" => String.t()
      }
      
  """
  @type get_infrastructure_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_image_creation_request() :: %{
        required("clientToken") => String.t(),
        required("imageBuildVersionArn") => String.t()
      }
      
  """
  @type cancel_image_creation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_component_build_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("componentVersionArn") => String.t()
      }
      
  """
  @type list_component_build_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_component_request() :: %{
        optional("changeDescription") => String.t(),
        optional("data") => String.t(),
        optional("description") => String.t(),
        optional("kmsKeyId") => String.t(),
        optional("tags") => map(),
        optional("uri") => String.t(),
        required("clientToken") => String.t(),
        required("format") => list(any()),
        required("name") => String.t(),
        required("platform") => list(any()),
        required("semanticVersion") => String.t(),
        required("type") => list(any())
      }
      
  """
  @type import_component_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      call_rate_limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type call_rate_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      component_summary() :: %{
        "arn" => String.t(),
        "changeDescription" => String.t(),
        "dateCreated" => String.t(),
        "description" => String.t(),
        "name" => String.t(),
        "obfuscate" => boolean(),
        "owner" => String.t(),
        "platform" => list(any()),
        "publisher" => String.t(),
        "state" => component_state(),
        "supportedOsVersions" => list(String.t()()),
        "tags" => map(),
        "type" => list(any()),
        "version" => String.t()
      }
      
  """
  @type component_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_container_repository() :: %{
        "repositoryName" => String.t(),
        "service" => list(any())
      }
      
  """
  @type target_container_repository() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_distribution_configuration_request() :: %{
        optional("description") => String.t(),
        optional("tags") => map(),
        required("clientToken") => String.t(),
        required("distributions") => list(distribution()()),
        required("name") => String.t()
      }
      
  """
  @type create_distribution_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_container_recipe_response() :: %{
        "containerRecipeArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type delete_container_recipe_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_execution_metadata() :: %{
        "endTime" => String.t(),
        "message" => String.t(),
        "parallelGroup" => String.t(),
        "startTime" => String.t(),
        "status" => list(any()),
        "totalStepCount" => integer(),
        "totalStepsFailed" => integer(),
        "totalStepsSkipped" => integer(),
        "totalStepsSucceeded" => integer(),
        "type" => list(any()),
        "workflowBuildVersionArn" => String.t(),
        "workflowExecutionId" => String.t()
      }
      
  """
  @type workflow_execution_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      component_state() :: %{
        "reason" => String.t(),
        "status" => list(any())
      }
      
  """
  @type component_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_workflow_request() :: %{
        required("workflowBuildVersionArn") => String.t()
      }
      
  """
  @type get_workflow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      severity_counts() :: %{
        "all" => float(),
        "critical" => float(),
        "high" => float(),
        "medium" => float()
      }
      
  """
  @type severity_counts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_combination_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_combination_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_container_recipe_request() :: %{
        required("containerRecipeArn") => String.t()
      }
      
  """
  @type delete_container_recipe_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_scan_finding_aggregation() :: %{
        "accountAggregation" => account_aggregation(),
        "imageAggregation" => image_aggregation(),
        "imagePipelineAggregation" => image_pipeline_aggregation(),
        "vulnerabilityIdAggregation" => vulnerability_id_aggregation()
      }
      
  """
  @type image_scan_finding_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_version() :: %{
        "arn" => String.t(),
        "buildType" => list(any()),
        "dateCreated" => String.t(),
        "imageSource" => list(any()),
        "name" => String.t(),
        "osVersion" => String.t(),
        "owner" => String.t(),
        "platform" => list(any()),
        "type" => list(any()),
        "version" => String.t()
      }
      
  """
  @type image_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_workflow_step_execution_request() :: %{
        required("stepExecutionId") => String.t()
      }
      
  """
  @type get_workflow_step_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_resource_state_update_response() :: %{
        "lifecycleExecutionId" => String.t(),
        "resourceArn" => String.t()
      }
      
  """
  @type start_resource_state_update_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_image_pipeline_request() :: %{
        required("imagePipelineArn") => String.t()
      }
      
  """
  @type delete_image_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_parameter() :: %{
        "name" => String.t(),
        "value" => list(String.t()())
      }
      
  """
  @type workflow_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_image_request() :: %{
        required("imageBuildVersionArn") => String.t()
      }
      
  """
  @type get_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_step_execution() :: %{
        "action" => String.t(),
        "imageBuildVersionArn" => String.t(),
        "name" => String.t(),
        "startTime" => String.t(),
        "stepExecutionId" => String.t(),
        "workflowBuildVersionArn" => String.t(),
        "workflowExecutionId" => String.t()
      }
      
  """
  @type workflow_step_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_distribution_configurations_response() :: %{
        "distributionConfigurationSummaryList" => list(distribution_configuration_summary()()),
        "nextToken" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type list_distribution_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_image_policy_response() :: %{
        "policy" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type get_image_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_component_response() :: %{
        "clientToken" => String.t(),
        "componentBuildVersionArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type create_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workflow_response() :: %{
        "workflowBuildVersionArn" => String.t()
      }
      
  """
  @type delete_workflow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_lifecycle_policy_response() :: %{
        "lifecyclePolicyArn" => String.t()
      }
      
  """
  @type delete_lifecycle_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_execution_resource() :: %{
        "accountId" => String.t(),
        "action" => lifecycle_execution_resource_action(),
        "endTime" => non_neg_integer(),
        "imageUris" => list(String.t()()),
        "region" => String.t(),
        "resourceId" => String.t(),
        "snapshots" => list(lifecycle_execution_snapshot_resource()()),
        "startTime" => non_neg_integer(),
        "state" => lifecycle_execution_resource_state()
      }
      
  """
  @type lifecycle_execution_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_distribution_configuration_request() :: %{
        required("distributionConfigurationArn") => String.t()
      }
      
  """
  @type delete_distribution_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_image_recipe_request() :: %{
        required("imageRecipeArn") => String.t()
      }
      
  """
  @type get_image_recipe_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      systems_manager_agent() :: %{
        "uninstallAfterBuild" => boolean()
      }
      
  """
  @type systems_manager_agent() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_image_recipe_response() :: %{
        "clientToken" => String.t(),
        "imageRecipeArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type create_image_recipe_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy_detail() :: %{
        "action" => lifecycle_policy_detail_action(),
        "exclusionRules" => lifecycle_policy_detail_exclusion_rules(),
        "filter" => lifecycle_policy_detail_filter()
      }
      
  """
  @type lifecycle_policy_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_image_recipe_request() :: %{
        required("imageRecipeArn") => String.t()
      }
      
  """
  @type delete_image_recipe_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_export_configuration() :: %{
        "diskImageFormat" => list(any()),
        "roleName" => String.t(),
        "s3Bucket" => String.t(),
        "s3Prefix" => String.t()
      }
      
  """
  @type s3_export_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      client_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type client_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_infrastructure_configuration_request() :: %{
        optional("description") => String.t(),
        optional("instanceMetadataOptions") => instance_metadata_options(),
        optional("instanceTypes") => list(String.t()()),
        optional("keyPair") => String.t(),
        optional("logging") => logging(),
        optional("resourceTags") => map(),
        optional("securityGroupIds") => list(String.t()()),
        optional("snsTopicArn") => String.t(),
        optional("subnetId") => String.t(),
        optional("terminateInstanceOnFailure") => boolean(),
        required("clientToken") => String.t(),
        required("infrastructureConfigurationArn") => String.t(),
        required("instanceProfileName") => String.t()
      }
      
  """
  @type update_infrastructure_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_components_request() :: %{
        optional("byName") => boolean(),
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("owner") => list(any())
      }
      
  """
  @type list_components_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workflow_executions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("imageBuildVersionArn") => String.t()
      }
      
  """
  @type list_workflow_executions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy_summary() :: %{
        "arn" => String.t(),
        "dateCreated" => non_neg_integer(),
        "dateLastRun" => non_neg_integer(),
        "dateUpdated" => non_neg_integer(),
        "description" => String.t(),
        "executionRole" => String.t(),
        "name" => String.t(),
        "resourceType" => list(any()),
        "status" => list(any()),
        "tags" => map()
      }
      
  """
  @type lifecycle_policy_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_logs() :: %{
        "s3BucketName" => String.t(),
        "s3KeyPrefix" => String.t()
      }
      
  """
  @type s3_logs() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_container_recipe_request() :: %{
        optional("description") => String.t(),
        optional("dockerfileTemplateData") => String.t(),
        optional("dockerfileTemplateUri") => String.t(),
        optional("imageOsVersionOverride") => String.t(),
        optional("instanceConfiguration") => instance_configuration(),
        optional("kmsKeyId") => String.t(),
        optional("platformOverride") => list(any()),
        optional("tags") => map(),
        optional("workingDirectory") => String.t(),
        required("clientToken") => String.t(),
        required("components") => list(component_configuration()()),
        required("containerType") => list(any()),
        required("name") => String.t(),
        required("parentImage") => String.t(),
        required("semanticVersion") => String.t(),
        required("targetRepository") => target_container_repository()
      }
      
  """
  @type create_container_recipe_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_component_policy_request() :: %{
        required("componentArn") => String.t(),
        required("policy") => String.t()
      }
      
  """
  @type put_component_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_image_request() :: %{
        optional("containerRecipeArn") => String.t(),
        optional("distributionConfigurationArn") => String.t(),
        optional("enhancedImageMetadataEnabled") => boolean(),
        optional("executionRole") => String.t(),
        optional("imageRecipeArn") => String.t(),
        optional("imageScanningConfiguration") => image_scanning_configuration(),
        optional("imageTestsConfiguration") => image_tests_configuration(),
        optional("tags") => map(),
        optional("workflows") => list(workflow_configuration()()),
        required("clientToken") => String.t(),
        required("infrastructureConfigurationArn") => String.t()
      }
      
  """
  @type create_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_image_pipeline_response() :: %{
        "imagePipeline" => image_pipeline(),
        "requestId" => String.t()
      }
      
  """
  @type get_image_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lifecycle_policies_response() :: %{
        "lifecyclePolicySummaryList" => list(lifecycle_policy_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_lifecycle_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_images_request() :: %{
        optional("byName") => boolean(),
        optional("filters") => list(filter()()),
        optional("includeDeprecated") => boolean(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("owner") => list(any())
      }
      
  """
  @type list_images_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      component() :: %{
        "arn" => String.t(),
        "changeDescription" => String.t(),
        "data" => String.t(),
        "dateCreated" => String.t(),
        "description" => String.t(),
        "encrypted" => boolean(),
        "kmsKeyId" => String.t(),
        "name" => String.t(),
        "obfuscate" => boolean(),
        "owner" => String.t(),
        "parameters" => list(component_parameter_detail()()),
        "platform" => list(any()),
        "publisher" => String.t(),
        "state" => component_state(),
        "supportedOsVersions" => list(String.t()()),
        "tags" => map(),
        "type" => list(any()),
        "version" => String.t()
      }
      
  """
  @type component() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_state_update_include_resources() :: %{
        "amis" => boolean(),
        "containers" => boolean(),
        "snapshots" => boolean()
      }
      
  """
  @type resource_state_update_include_resources() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_workflow_step_action_response() :: %{
        "clientToken" => String.t(),
        "imageBuildVersionArn" => String.t(),
        "stepExecutionId" => String.t()
      }
      
  """
  @type send_workflow_step_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      idempotent_parameter_mismatch_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type idempotent_parameter_mismatch_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_value_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_value_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_image_recipe_policy_request() :: %{
        required("imageRecipeArn") => String.t(),
        required("policy") => String.t()
      }
      
  """
  @type put_image_recipe_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_component_policy_response() :: %{
        "policy" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type get_component_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workflows_request() :: %{
        optional("byName") => boolean(),
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("owner") => list(any())
      }
      
  """
  @type list_workflows_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_container_recipe_request() :: %{
        required("containerRecipeArn") => String.t()
      }
      
  """
  @type get_container_recipe_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      distribution_configuration() :: %{
        "arn" => String.t(),
        "dateCreated" => String.t(),
        "dateUpdated" => String.t(),
        "description" => String.t(),
        "distributions" => list(distribution()()),
        "name" => String.t(),
        "tags" => map(),
        "timeoutMinutes" => integer()
      }
      
  """
  @type distribution_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_execution_resource_state() :: %{
        "reason" => String.t(),
        "status" => list(any())
      }
      
  """
  @type lifecycle_execution_resource_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow() :: %{
        "arn" => String.t(),
        "changeDescription" => String.t(),
        "data" => String.t(),
        "dateCreated" => String.t(),
        "description" => String.t(),
        "kmsKeyId" => String.t(),
        "name" => String.t(),
        "owner" => String.t(),
        "parameters" => list(workflow_parameter_detail()()),
        "state" => workflow_state(),
        "tags" => map(),
        "type" => list(any()),
        "version" => String.t()
      }
      
  """
  @type workflow() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cvss_score_details() :: %{
        "adjustments" => list(cvss_score_adjustment()()),
        "cvssSource" => String.t(),
        "score" => float(),
        "scoreSource" => String.t(),
        "scoringVector" => String.t(),
        "version" => String.t()
      }
      
  """
  @type cvss_score_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_image_pipelines_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_image_pipelines_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      distribution() :: %{
        "amiDistributionConfiguration" => ami_distribution_configuration(),
        "containerDistributionConfiguration" => container_distribution_configuration(),
        "fastLaunchConfigurations" => list(fast_launch_configuration()()),
        "launchTemplateConfigurations" => list(launch_template_configuration()()),
        "licenseConfigurationArns" => list(String.t()()),
        "region" => String.t(),
        "s3ExportConfiguration" => s3_export_configuration()
      }
      
  """
  @type distribution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_image_scan_findings_response() :: %{
        "findings" => list(image_scan_finding()()),
        "nextToken" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type list_image_scan_findings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_image_recipe_response() :: %{
        "imageRecipeArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type delete_image_recipe_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remediation_recommendation() :: %{
        "text" => String.t(),
        "url" => String.t()
      }
      
  """
  @type remediation_recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inspector_score_details() :: %{
        "adjustedCvss" => cvss_score_details()
      }
      
  """
  @type inspector_score_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_component_request() :: %{
        optional("changeDescription") => String.t(),
        optional("data") => String.t(),
        optional("description") => String.t(),
        optional("kmsKeyId") => String.t(),
        optional("supportedOsVersions") => list(String.t()()),
        optional("tags") => map(),
        optional("uri") => String.t(),
        required("clientToken") => String.t(),
        required("name") => String.t(),
        required("platform") => list(any()),
        required("semanticVersion") => String.t()
      }
      
  """
  @type create_component_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vulnerable_package() :: %{
        "arch" => String.t(),
        "epoch" => integer(),
        "filePath" => String.t(),
        "fixedInVersion" => String.t(),
        "name" => String.t(),
        "packageManager" => String.t(),
        "release" => String.t(),
        "remediation" => String.t(),
        "sourceLayerHash" => String.t(),
        "version" => String.t()
      }
      
  """
  @type vulnerable_package() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_distribution_configuration_request() :: %{
        optional("description") => String.t(),
        required("clientToken") => String.t(),
        required("distributionConfigurationArn") => String.t(),
        required("distributions") => list(distribution()())
      }
      
  """
  @type update_distribution_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_state_update_exclusion_rules() :: %{
        "amis" => lifecycle_policy_detail_exclusion_rules_amis()
      }
      
  """
  @type resource_state_update_exclusion_rules() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cvss_score_adjustment() :: %{
        "metric" => String.t(),
        "reason" => String.t()
      }
      
  """
  @type cvss_score_adjustment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_execution_snapshot_resource() :: %{
        "snapshotId" => String.t(),
        "state" => lifecycle_execution_resource_state()
      }
      
  """
  @type lifecycle_execution_snapshot_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_infrastructure_configurations_response() :: %{
        "infrastructureConfigurationSummaryList" => list(infrastructure_configuration_summary()()),
        "nextToken" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type list_infrastructure_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_recipe_summary() :: %{
        "arn" => String.t(),
        "containerType" => list(any()),
        "dateCreated" => String.t(),
        "name" => String.t(),
        "owner" => String.t(),
        "parentImage" => String.t(),
        "platform" => list(any()),
        "tags" => map()
      }
      
  """
  @type container_recipe_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_workflow_execution_request() :: %{
        required("workflowExecutionId") => String.t()
      }
      
  """
  @type get_workflow_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lifecycle_executions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("resourceArn") => String.t()
      }
      
  """
  @type list_lifecycle_executions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      component_version() :: %{
        "arn" => String.t(),
        "dateCreated" => String.t(),
        "description" => String.t(),
        "name" => String.t(),
        "owner" => String.t(),
        "platform" => list(any()),
        "supportedOsVersions" => list(String.t()()),
        "type" => list(any()),
        "version" => String.t()
      }
      
  """
  @type component_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_lifecycle_policy_response() :: %{
        "clientToken" => String.t(),
        "lifecyclePolicyArn" => String.t()
      }
      
  """
  @type create_lifecycle_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_image_policy_request() :: %{
        required("imageArn") => String.t(),
        required("policy") => String.t()
      }
      
  """
  @type put_image_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_distribution_configuration_request() :: %{
        required("distributionConfigurationArn") => String.t()
      }
      
  """
  @type get_distribution_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_component_response() :: %{
        "clientToken" => String.t(),
        "componentBuildVersionArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type import_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_image_pipeline_request() :: %{
        optional("containerRecipeArn") => String.t(),
        optional("description") => String.t(),
        optional("distributionConfigurationArn") => String.t(),
        optional("enhancedImageMetadataEnabled") => boolean(),
        optional("executionRole") => String.t(),
        optional("imageRecipeArn") => String.t(),
        optional("imageScanningConfiguration") => image_scanning_configuration(),
        optional("imageTestsConfiguration") => image_tests_configuration(),
        optional("schedule") => schedule(),
        optional("status") => list(any()),
        optional("tags") => map(),
        optional("workflows") => list(workflow_configuration()()),
        required("clientToken") => String.t(),
        required("infrastructureConfigurationArn") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_image_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy_detail_filter() :: %{
        "retainAtLeast" => integer(),
        "type" => list(any()),
        "unit" => list(any()),
        "value" => integer()
      }
      
  """
  @type lifecycle_policy_detail_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "name" => String.t(),
        "values" => list(String.t()())
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_distribution_configuration_response() :: %{
        "clientToken" => String.t(),
        "distributionConfigurationArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type create_distribution_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_distribution_configuration_response() :: %{
        "distributionConfigurationArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type delete_distribution_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_images_response() :: %{
        "imageVersionList" => list(image_version()()),
        "nextToken" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type list_images_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lifecycle_executions_response() :: %{
        "lifecycleExecutions" => list(lifecycle_execution()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_lifecycle_executions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_component_build_versions_response() :: %{
        "componentSummaryList" => list(component_summary()()),
        "nextToken" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type list_component_build_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_image_packages_response() :: %{
        "imagePackageList" => list(image_package()()),
        "nextToken" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type list_image_packages_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_summary() :: %{
        "arn" => String.t(),
        "changeDescription" => String.t(),
        "dateCreated" => String.t(),
        "description" => String.t(),
        "name" => String.t(),
        "owner" => String.t(),
        "state" => workflow_state(),
        "tags" => map(),
        "type" => list(any()),
        "version" => String.t()
      }
      
  """
  @type workflow_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_tests_configuration() :: %{
        "imageTestsEnabled" => boolean(),
        "timeoutMinutes" => integer()
      }
      
  """
  @type image_tests_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_container_recipes_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("owner") => list(any())
      }
      
  """
  @type list_container_recipes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_image_build_versions_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("imageVersionArn") => String.t()
      }
      
  """
  @type list_image_build_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_component_response() :: %{
        "componentBuildVersionArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type delete_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      additional_instance_configuration() :: %{
        "systemsManagerAgent" => systems_manager_agent(),
        "userDataOverride" => String.t()
      }
      
  """
  @type additional_instance_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_infrastructure_configuration_request() :: %{
        required("infrastructureConfigurationArn") => String.t()
      }
      
  """
  @type get_infrastructure_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_image_request() :: %{
        required("imageBuildVersionArn") => String.t()
      }
      
  """
  @type delete_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_execution_resources_impacted_summary() :: %{
        "hasImpactedResources" => boolean()
      }
      
  """
  @type lifecycle_execution_resources_impacted_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_recipe() :: %{
        "additionalInstanceConfiguration" => additional_instance_configuration(),
        "arn" => String.t(),
        "blockDeviceMappings" => list(instance_block_device_mapping()()),
        "components" => list(component_configuration()()),
        "dateCreated" => String.t(),
        "description" => String.t(),
        "name" => String.t(),
        "owner" => String.t(),
        "parentImage" => String.t(),
        "platform" => list(any()),
        "tags" => map(),
        "type" => list(any()),
        "version" => String.t(),
        "workingDirectory" => String.t()
      }
      
  """
  @type image_recipe() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fast_launch_snapshot_configuration() :: %{
        "targetResourceCount" => integer()
      }
      
  """
  @type fast_launch_snapshot_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy() :: %{
        "arn" => String.t(),
        "dateCreated" => non_neg_integer(),
        "dateLastRun" => non_neg_integer(),
        "dateUpdated" => non_neg_integer(),
        "description" => String.t(),
        "executionRole" => String.t(),
        "name" => String.t(),
        "policyDetails" => list(lifecycle_policy_detail()()),
        "resourceSelection" => lifecycle_policy_resource_selection(),
        "resourceType" => list(any()),
        "status" => list(any()),
        "tags" => map()
      }
      
  """
  @type lifecycle_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_component_policy_response() :: %{
        "componentArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type put_component_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_workflow_execution_response() :: %{
        "endTime" => String.t(),
        "imageBuildVersionArn" => String.t(),
        "message" => String.t(),
        "parallelGroup" => String.t(),
        "requestId" => String.t(),
        "startTime" => String.t(),
        "status" => list(any()),
        "totalStepCount" => integer(),
        "totalStepsFailed" => integer(),
        "totalStepsSkipped" => integer(),
        "totalStepsSucceeded" => integer(),
        "type" => list(any()),
        "workflowBuildVersionArn" => String.t(),
        "workflowExecutionId" => String.t()
      }
      
  """
  @type get_workflow_execution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schedule() :: %{
        "pipelineExecutionStartCondition" => list(any()),
        "scheduleExpression" => String.t(),
        "timezone" => String.t()
      }
      
  """
  @type schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_image_scan_findings_request() :: %{
        optional("filters") => list(image_scan_findings_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_image_scan_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy_resource_selection() :: %{
        "recipes" => list(lifecycle_policy_resource_selection_recipe()()),
        "tagMap" => map()
      }
      
  """
  @type lifecycle_policy_resource_selection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_lifecycle_policy_request() :: %{
        required("lifecyclePolicyArn") => String.t()
      }
      
  """
  @type delete_lifecycle_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_scan_finding() :: %{
        "awsAccountId" => String.t(),
        "description" => String.t(),
        "firstObservedAt" => non_neg_integer(),
        "fixAvailable" => String.t(),
        "imageBuildVersionArn" => String.t(),
        "imagePipelineArn" => String.t(),
        "inspectorScore" => float(),
        "inspectorScoreDetails" => inspector_score_details(),
        "packageVulnerabilityDetails" => package_vulnerability_details(),
        "remediation" => remediation(),
        "severity" => String.t(),
        "title" => String.t(),
        "type" => String.t(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type image_scan_finding() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workflow_step_executions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("workflowExecutionId") => String.t()
      }
      
  """
  @type list_workflow_step_executions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_image_recipe_policy_request() :: %{
        required("imageRecipeArn") => String.t()
      }
      
  """
  @type get_image_recipe_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_aggregation() :: %{
        "accountId" => String.t(),
        "severityCounts" => severity_counts()
      }
      
  """
  @type account_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_resources() :: %{
        "amis" => list(ami()()),
        "containers" => list(container()())
      }
      
  """
  @type output_resources() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_image_creation_response() :: %{
        "clientToken" => String.t(),
        "imageBuildVersionArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type cancel_image_creation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image() :: %{
        "arn" => String.t(),
        "buildType" => list(any()),
        "containerRecipe" => container_recipe(),
        "dateCreated" => String.t(),
        "deprecationTime" => non_neg_integer(),
        "distributionConfiguration" => distribution_configuration(),
        "enhancedImageMetadataEnabled" => boolean(),
        "executionRole" => String.t(),
        "imageRecipe" => image_recipe(),
        "imageScanningConfiguration" => image_scanning_configuration(),
        "imageSource" => list(any()),
        "imageTestsConfiguration" => image_tests_configuration(),
        "infrastructureConfiguration" => infrastructure_configuration(),
        "lifecycleExecutionId" => String.t(),
        "name" => String.t(),
        "osVersion" => String.t(),
        "outputResources" => output_resources(),
        "platform" => list(any()),
        "scanState" => image_scan_state(),
        "sourcePipelineArn" => String.t(),
        "sourcePipelineName" => String.t(),
        "state" => image_state(),
        "tags" => map(),
        "type" => list(any()),
        "version" => String.t(),
        "workflows" => list(workflow_configuration()())
      }
      
  """
  @type image() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_image_pipeline_response() :: %{
        "imagePipelineArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type delete_image_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_image_pipeline_request() :: %{
        required("imagePipelineArn") => String.t()
      }
      
  """
  @type get_image_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workflow_response() :: %{
        "clientToken" => String.t(),
        "workflowBuildVersionArn" => String.t()
      }
      
  """
  @type create_workflow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_image_policy_response() :: %{
        "imageArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type put_image_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      package_vulnerability_details() :: %{
        "cvss" => list(cvss_score()()),
        "referenceUrls" => list(String.t()()),
        "relatedVulnerabilities" => list(String.t()()),
        "source" => String.t(),
        "sourceUrl" => String.t(),
        "vendorCreatedAt" => non_neg_integer(),
        "vendorSeverity" => String.t(),
        "vendorUpdatedAt" => non_neg_integer(),
        "vulnerabilityId" => String.t(),
        "vulnerablePackages" => list(vulnerable_package()())
      }
      
  """
  @type package_vulnerability_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cvss_score() :: %{
        "baseScore" => float(),
        "scoringVector" => String.t(),
        "source" => String.t(),
        "version" => String.t()
      }
      
  """
  @type cvss_score() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_metadata_options() :: %{
        "httpPutResponseHopLimit" => integer(),
        "httpTokens" => String.t()
      }
      
  """
  @type instance_metadata_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_infrastructure_configuration_response() :: %{
        "clientToken" => String.t(),
        "infrastructureConfigurationArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type update_infrastructure_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fast_launch_launch_template_specification() :: %{
        "launchTemplateId" => String.t(),
        "launchTemplateName" => String.t(),
        "launchTemplateVersion" => String.t()
      }
      
  """
  @type fast_launch_launch_template_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workflow_build_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("workflowVersionArn") => String.t()
      }
      
  """
  @type list_workflow_build_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_vm_image_response() :: %{
        "clientToken" => String.t(),
        "imageArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type import_vm_image_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_infrastructure_configuration_request() :: %{
        required("infrastructureConfigurationArn") => String.t()
      }
      
  """
  @type delete_infrastructure_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_image_scan_finding_aggregations_response() :: %{
        "aggregationType" => String.t(),
        "nextToken" => String.t(),
        "requestId" => String.t(),
        "responses" => list(image_scan_finding_aggregation()())
      }
      
  """
  @type list_image_scan_finding_aggregations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      image_recipe_summary() :: %{
        "arn" => String.t(),
        "dateCreated" => String.t(),
        "name" => String.t(),
        "owner" => String.t(),
        "parentImage" => String.t(),
        "platform" => list(any()),
        "tags" => map()
      }
      
  """
  @type image_recipe_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fast_launch_configuration() :: %{
        "accountId" => String.t(),
        "enabled" => boolean(),
        "launchTemplate" => fast_launch_launch_template_specification(),
        "maxParallelLaunches" => integer(),
        "snapshotConfiguration" => fast_launch_snapshot_configuration()
      }
      
  """
  @type fast_launch_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ami_distribution_configuration() :: %{
        "amiTags" => map(),
        "description" => String.t(),
        "kmsKeyId" => String.t(),
        "launchPermission" => launch_permission_configuration(),
        "name" => String.t(),
        "targetAccountIds" => list(String.t()())
      }
      
  """
  @type ami_distribution_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      component_configuration() :: %{
        "componentArn" => String.t(),
        "parameters" => list(component_parameter()())
      }
      
  """
  @type component_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_configuration() :: %{
        "blockDeviceMappings" => list(instance_block_device_mapping()()),
        "image" => String.t()
      }
      
  """
  @type instance_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_infrastructure_configuration_response() :: %{
        "clientToken" => String.t(),
        "infrastructureConfigurationArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type create_infrastructure_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_distribution_configuration() :: %{
        "containerTags" => list(String.t()()),
        "description" => String.t(),
        "targetRepository" => target_container_repository()
      }
      
  """
  @type container_distribution_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lifecycle_policy_request() :: %{
        required("lifecyclePolicyArn") => String.t()
      }
      
  """
  @type get_lifecycle_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_aggregation() :: %{
        "imageBuildVersionArn" => String.t(),
        "severityCounts" => severity_counts()
      }
      
  """
  @type image_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{}
      
  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:
      
      get_container_recipe_policy_response() :: %{
        "policy" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type get_container_recipe_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_container_recipe_response() :: %{
        "clientToken" => String.t(),
        "containerRecipeArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type create_container_recipe_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_recipe() :: %{
        "arn" => String.t(),
        "components" => list(component_configuration()()),
        "containerType" => list(any()),
        "dateCreated" => String.t(),
        "description" => String.t(),
        "dockerfileTemplateData" => String.t(),
        "encrypted" => boolean(),
        "instanceConfiguration" => instance_configuration(),
        "kmsKeyId" => String.t(),
        "name" => String.t(),
        "owner" => String.t(),
        "parentImage" => String.t(),
        "platform" => list(any()),
        "tags" => map(),
        "targetRepository" => target_container_repository(),
        "version" => String.t(),
        "workingDirectory" => String.t()
      }
      
  """
  @type container_recipe() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_lifecycle_policy_request() :: %{
        optional("description") => String.t(),
        optional("status") => list(any()),
        optional("tags") => map(),
        required("clientToken") => String.t(),
        required("executionRole") => String.t(),
        required("name") => String.t(),
        required("policyDetails") => list(lifecycle_policy_detail()()),
        required("resourceSelection") => lifecycle_policy_resource_selection(),
        required("resourceType") => list(any())
      }
      
  """
  @type create_lifecycle_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_dependency_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_dependency_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_execution_state() :: %{
        "reason" => String.t(),
        "status" => list(any())
      }
      
  """
  @type lifecycle_execution_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_package() :: %{
        "packageName" => String.t(),
        "packageVersion" => String.t()
      }
      
  """
  @type image_package() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_image_response() :: %{
        "imageBuildVersionArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type delete_image_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_execution() :: %{
        "endTime" => non_neg_integer(),
        "lifecycleExecutionId" => String.t(),
        "lifecyclePolicyArn" => String.t(),
        "resourcesImpactedSummary" => lifecycle_execution_resources_impacted_summary(),
        "startTime" => non_neg_integer(),
        "state" => lifecycle_execution_state()
      }
      
  """
  @type lifecycle_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_components_response() :: %{
        "componentVersionList" => list(component_version()()),
        "nextToken" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type list_components_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy_resource_selection_recipe() :: %{
        "name" => String.t(),
        "semanticVersion" => String.t()
      }
      
  """
  @type lifecycle_policy_resource_selection_recipe() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_step_metadata() :: %{
        "action" => String.t(),
        "description" => String.t(),
        "endTime" => String.t(),
        "inputs" => String.t(),
        "message" => String.t(),
        "name" => String.t(),
        "outputs" => String.t(),
        "rollbackStatus" => list(any()),
        "startTime" => String.t(),
        "status" => list(any()),
        "stepExecutionId" => String.t()
      }
      
  """
  @type workflow_step_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_image_build_versions_response() :: %{
        "imageSummaryList" => list(image_summary()()),
        "nextToken" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type list_image_build_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_image_pipeline_request() :: %{
        optional("containerRecipeArn") => String.t(),
        optional("description") => String.t(),
        optional("distributionConfigurationArn") => String.t(),
        optional("enhancedImageMetadataEnabled") => boolean(),
        optional("executionRole") => String.t(),
        optional("imageRecipeArn") => String.t(),
        optional("imageScanningConfiguration") => image_scanning_configuration(),
        optional("imageTestsConfiguration") => image_tests_configuration(),
        optional("schedule") => schedule(),
        optional("status") => list(any()),
        optional("workflows") => list(workflow_configuration()()),
        required("clientToken") => String.t(),
        required("imagePipelineArn") => String.t(),
        required("infrastructureConfigurationArn") => String.t()
      }
      
  """
  @type update_image_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_lifecycle_execution_resources_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("parentResourceId") => String.t(),
        required("lifecycleExecutionId") => String.t()
      }
      
  """
  @type list_lifecycle_execution_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_state() :: %{
        "reason" => String.t(),
        "status" => list(any())
      }
      
  """
  @type image_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_lifecycle_execution_request() :: %{
        required("clientToken") => String.t(),
        required("lifecycleExecutionId") => String.t()
      }
      
  """
  @type cancel_lifecycle_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_configuration() :: %{
        "onFailure" => list(any()),
        "parallelGroup" => String.t(),
        "parameters" => list(workflow_parameter()()),
        "workflowArn" => String.t()
      }
      
  """
  @type workflow_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_state() :: %{
        "reason" => String.t(),
        "status" => list(any())
      }
      
  """
  @type workflow_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_infrastructure_configurations_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_infrastructure_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_summary() :: %{
        "arn" => String.t(),
        "buildType" => list(any()),
        "dateCreated" => String.t(),
        "deprecationTime" => non_neg_integer(),
        "imageSource" => list(any()),
        "lifecycleExecutionId" => String.t(),
        "name" => String.t(),
        "osVersion" => String.t(),
        "outputResources" => output_resources(),
        "owner" => String.t(),
        "platform" => list(any()),
        "state" => image_state(),
        "tags" => map(),
        "type" => list(any()),
        "version" => String.t()
      }
      
  """
  @type image_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy_detail_action() :: %{
        "includeResources" => lifecycle_policy_detail_action_include_resources(),
        "type" => list(any())
      }
      
  """
  @type lifecycle_policy_detail_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_image_recipes_response() :: %{
        "imageRecipeSummaryList" => list(image_recipe_summary()()),
        "nextToken" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type list_image_recipes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_waiting_workflow_steps_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_waiting_workflow_steps_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy_detail_exclusion_rules_amis() :: %{
        "isPublic" => boolean(),
        "lastLaunched" => lifecycle_policy_detail_exclusion_rules_amis_last_launched(),
        "regions" => list(String.t()()),
        "sharedAccounts" => list(String.t()()),
        "tagMap" => map()
      }
      
  """
  @type lifecycle_policy_detail_exclusion_rules_amis() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      launch_template_configuration() :: %{
        "accountId" => String.t(),
        "launchTemplateId" => String.t(),
        "setDefaultVersion" => boolean()
      }
      
  """
  @type launch_template_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      infrastructure_configuration() :: %{
        "arn" => String.t(),
        "dateCreated" => String.t(),
        "dateUpdated" => String.t(),
        "description" => String.t(),
        "instanceMetadataOptions" => instance_metadata_options(),
        "instanceProfileName" => String.t(),
        "instanceTypes" => list(String.t()()),
        "keyPair" => String.t(),
        "logging" => logging(),
        "name" => String.t(),
        "resourceTags" => map(),
        "securityGroupIds" => list(String.t()()),
        "snsTopicArn" => String.t(),
        "subnetId" => String.t(),
        "tags" => map(),
        "terminateInstanceOnFailure" => boolean()
      }
      
  """
  @type infrastructure_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_component_policy_request() :: %{
        required("componentArn") => String.t()
      }
      
  """
  @type get_component_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workflows_response() :: %{
        "nextToken" => String.t(),
        "workflowVersionList" => list(workflow_version()())
      }
      
  """
  @type list_workflows_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_image_pipeline_execution_request() :: %{
        required("clientToken") => String.t(),
        required("imagePipelineArn") => String.t()
      }
      
  """
  @type start_image_pipeline_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy_detail_exclusion_rules_amis_last_launched() :: %{
        "unit" => list(any()),
        "value" => integer()
      }
      
  """
  @type lifecycle_policy_detail_exclusion_rules_amis_last_launched() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_pipeline_aggregation() :: %{
        "imagePipelineArn" => String.t(),
        "severityCounts" => severity_counts()
      }
      
  """
  @type image_pipeline_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_infrastructure_configuration_response() :: %{
        "infrastructureConfigurationArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type delete_infrastructure_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      component_parameter() :: %{
        "name" => String.t(),
        "value" => list(String.t()())
      }
      
  """
  @type component_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_image_recipe_response() :: %{
        "imageRecipe" => image_recipe(),
        "requestId" => String.t()
      }
      
  """
  @type get_image_recipe_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_distribution_configuration_response() :: %{
        "distributionConfiguration" => distribution_configuration(),
        "requestId" => String.t()
      }
      
  """
  @type get_distribution_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      distribution_configuration_summary() :: %{
        "arn" => String.t(),
        "dateCreated" => String.t(),
        "dateUpdated" => String.t(),
        "description" => String.t(),
        "name" => String.t(),
        "regions" => list(String.t()()),
        "tags" => map()
      }
      
  """
  @type distribution_configuration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      launch_permission_configuration() :: %{
        "organizationArns" => list(String.t()()),
        "organizationalUnitArns" => list(String.t()()),
        "userGroups" => list(String.t()()),
        "userIds" => list(String.t()())
      }
      
  """
  @type launch_permission_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      logging() :: %{
        "s3Logs" => s3_logs()
      }
      
  """
  @type logging() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_image_pipeline_images_response() :: %{
        "imageSummaryList" => list(image_summary()()),
        "nextToken" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type list_image_pipeline_images_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_component_request() :: %{
        required("componentBuildVersionArn") => String.t()
      }
      
  """
  @type get_component_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lifecycle_policy_response() :: %{
        "lifecyclePolicy" => lifecycle_policy()
      }
      
  """
  @type get_lifecycle_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_pagination_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_pagination_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_image_pipeline_response() :: %{
        "clientToken" => String.t(),
        "imagePipelineArn" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type update_image_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_workflow_response() :: %{
        "workflow" => workflow()
      }
      
  """
  @type get_workflow_response() :: %{String.t() => any()}

  @type cancel_image_creation_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type cancel_lifecycle_execution_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type create_component_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | client_exception()
          | invalid_parameter_combination_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()
          | invalid_version_number_exception()

  @type create_container_recipe_errors() ::
          resource_already_exists_exception()
          | service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()
          | invalid_version_number_exception()

  @type create_distribution_configuration_errors() ::
          resource_already_exists_exception()
          | service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | client_exception()
          | invalid_parameter_combination_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type create_image_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type create_image_pipeline_errors() ::
          resource_already_exists_exception()
          | service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type create_image_recipe_errors() ::
          resource_already_exists_exception()
          | service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()
          | invalid_version_number_exception()

  @type create_infrastructure_configuration_errors() ::
          resource_already_exists_exception()
          | service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type create_lifecycle_policy_errors() ::
          resource_already_exists_exception()
          | service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type create_workflow_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | client_exception()
          | invalid_parameter_combination_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()
          | invalid_version_number_exception()

  @type delete_component_errors() ::
          resource_dependency_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type delete_container_recipe_errors() ::
          resource_dependency_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type delete_distribution_configuration_errors() ::
          resource_dependency_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type delete_image_errors() ::
          resource_dependency_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type delete_image_pipeline_errors() ::
          resource_dependency_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type delete_image_recipe_errors() ::
          resource_dependency_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type delete_infrastructure_configuration_errors() ::
          resource_dependency_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type delete_lifecycle_policy_errors() ::
          resource_dependency_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type delete_workflow_errors() ::
          resource_dependency_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_component_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_component_policy_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_container_recipe_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_container_recipe_policy_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_distribution_configuration_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_image_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_image_pipeline_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_image_policy_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_image_recipe_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_image_recipe_policy_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_infrastructure_configuration_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_lifecycle_execution_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_lifecycle_policy_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_workflow_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_workflow_execution_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_workflow_step_execution_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type import_component_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | invalid_request_exception()
          | client_exception()
          | invalid_parameter_combination_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()
          | invalid_version_number_exception()

  @type import_vm_image_errors() ::
          service_unavailable_exception() | service_exception() | client_exception()

  @type list_component_build_versions_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_components_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_container_recipes_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_distribution_configurations_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_image_build_versions_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_image_packages_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_image_pipeline_images_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_image_pipelines_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_image_recipes_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_image_scan_finding_aggregations_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_image_scan_findings_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_images_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_infrastructure_configurations_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_lifecycle_execution_resources_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_lifecycle_executions_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_lifecycle_policies_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_tags_for_resource_errors() ::
          invalid_parameter_exception() | service_exception() | resource_not_found_exception()

  @type list_waiting_workflow_steps_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_workflow_build_versions_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_workflow_executions_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_workflow_step_executions_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_workflows_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type put_component_policy_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type put_container_recipe_policy_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type put_image_policy_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type put_image_recipe_policy_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type send_workflow_step_action_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | idempotent_parameter_mismatch_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type start_image_pipeline_execution_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type start_resource_state_update_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type tag_resource_errors() ::
          invalid_parameter_exception() | service_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          invalid_parameter_exception() | service_exception() | resource_not_found_exception()

  @type update_distribution_configuration_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | invalid_request_exception()
          | client_exception()
          | invalid_parameter_combination_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type update_image_pipeline_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type update_infrastructure_configuration_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type update_lifecycle_policy_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | invalid_request_exception()
          | client_exception()
          | invalid_parameter_combination_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  def metadata do
    %{
      api_version: "2019-12-02",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "imagebuilder",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "imagebuilder",
      signature_version: "v4",
      signing_name: "imagebuilder",
      target_prefix: nil
    }
  end

  @doc """
  CancelImageCreation cancels the creation of Image. This operation can only be
  used on images in a non-terminal state.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20CancelImageCreation&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec cancel_image_creation(AWS.Client.t(), Keyword.t()) ::
          {:ok, cancel_image_creation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_image_creation_errors()}
  def cancel_image_creation(%Client{} = client, options \\ []) do
    url_path = "/CancelImageCreation"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Cancel a specific image lifecycle policy runtime instance.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20CancelLifecycleExecution&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec cancel_lifecycle_execution(AWS.Client.t(), Keyword.t()) ::
          {:ok, cancel_lifecycle_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_lifecycle_execution_errors()}
  def cancel_lifecycle_execution(%Client{} = client, options \\ []) do
    url_path = "/CancelLifecycleExecution"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Creates a new component that can be used to build, validate, test, and assess
  your image. The component is based on a YAML document that you specify using
  exactly one of the following methods:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20CreateComponent&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_component(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_component_errors()}
  def create_component(%Client{} = client, options \\ []) do
    url_path = "/CreateComponent"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Creates a new container recipe. Container recipes define how images are
  configured, tested, and assessed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20CreateContainerRecipe&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_container_recipe(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_container_recipe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_container_recipe_errors()}
  def create_container_recipe(%Client{} = client, options \\ []) do
    url_path = "/CreateContainerRecipe"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Creates a new distribution configuration. Distribution configurations define and
  configure the outputs of your pipeline.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20CreateDistributionConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_distribution_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_distribution_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_distribution_configuration_errors()}
  def create_distribution_configuration(%Client{} = client, options \\ []) do
    url_path = "/CreateDistributionConfiguration"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Creates a new image. This request will create a new image along with all of the
  configured output resources defined in the distribution configuration. You
  must specify exactly one recipe for your image, using either a
  ContainerRecipeArn or an ImageRecipeArn.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20CreateImage&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_image(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_image_errors()}
  def create_image(%Client{} = client, options \\ []) do
    url_path = "/CreateImage"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Creates a new image pipeline. Image pipelines enable you to automate the
  creation and distribution of images.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20CreateImagePipeline&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_image_pipeline(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_image_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_image_pipeline_errors()}
  def create_image_pipeline(%Client{} = client, options \\ []) do
    url_path = "/CreateImagePipeline"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Creates a new image recipe. Image recipes define how images are configured,
  tested, and assessed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20CreateImageRecipe&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_image_recipe(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_image_recipe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_image_recipe_errors()}
  def create_image_recipe(%Client{} = client, options \\ []) do
    url_path = "/CreateImageRecipe"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Creates a new infrastructure configuration. An infrastructure configuration
  defines the environment in which your image will be built and tested.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20CreateInfrastructureConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_infrastructure_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_infrastructure_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_infrastructure_configuration_errors()}
  def create_infrastructure_configuration(%Client{} = client, options \\ []) do
    url_path = "/CreateInfrastructureConfiguration"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Create a lifecycle policy resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20CreateLifecyclePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_lifecycle_policy(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_lifecycle_policy_errors()}
  def create_lifecycle_policy(%Client{} = client, options \\ []) do
    url_path = "/CreateLifecyclePolicy"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Create a new workflow or a new version of an existing workflow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20CreateWorkflow&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_workflow(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_workflow_errors()}
  def create_workflow(%Client{} = client, options \\ []) do
    url_path = "/CreateWorkflow"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Deletes a component build version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20DeleteComponent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:component_build_version_arn` (`t:string` required) The Amazon Resource Name
  (ARN) of the component build version to delete.
  ## Keyword parameters:
  """
  @spec delete_component(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_component_errors()}
  def delete_component(%Client{} = client, component_build_version_arn, options \\ [])
      when is_binary(component_build_version_arn) do
    url_path = "/DeleteComponent"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"componentBuildVersionArn", component_build_version_arn}]

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
  Deletes a container recipe.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20DeleteContainerRecipe&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:container_recipe_arn` (`t:string` required) The Amazon Resource Name (ARN)
  of the container recipe to delete.
  ## Keyword parameters:
  """
  @spec delete_container_recipe(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_container_recipe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_container_recipe_errors()}
  def delete_container_recipe(%Client{} = client, container_recipe_arn, options \\ [])
      when is_binary(container_recipe_arn) do
    url_path = "/DeleteContainerRecipe"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"containerRecipeArn", container_recipe_arn}]

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
  Deletes a distribution configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20DeleteDistributionConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:distribution_configuration_arn` (`t:string` required) The Amazon Resource
  Name (ARN) of the distribution configuration to delete.
  ## Keyword parameters:
  """
  @spec delete_distribution_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_distribution_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_distribution_configuration_errors()}
  def delete_distribution_configuration(
        %Client{} = client,
        distribution_configuration_arn,
        options \\ []
      )
      when is_binary(distribution_configuration_arn) do
    url_path = "/DeleteDistributionConfiguration"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"distributionConfigurationArn", distribution_configuration_arn}]

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
  Deletes an Image Builder image resource. This does not delete any EC2 AMIs or
  ECR container images that are created during the image build process. You must
  clean those up separately, using the appropriate Amazon EC2 or Amazon ECR
  console actions, or API or CLI commands.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20DeleteImage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:image_build_version_arn` (`t:string` required) The Amazon Resource Name
  (ARN) of the Image Builder image resource to delete.
  ## Keyword parameters:
  """
  @spec delete_image(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_image_errors()}
  def delete_image(%Client{} = client, image_build_version_arn, options \\ [])
      when is_binary(image_build_version_arn) do
    url_path = "/DeleteImage"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"imageBuildVersionArn", image_build_version_arn}]

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
  Deletes an image pipeline.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20DeleteImagePipeline&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:image_pipeline_arn` (`t:string` required) The Amazon Resource Name (ARN) of
  the image pipeline to delete.
  ## Keyword parameters:
  """
  @spec delete_image_pipeline(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_image_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_image_pipeline_errors()}
  def delete_image_pipeline(%Client{} = client, image_pipeline_arn, options \\ [])
      when is_binary(image_pipeline_arn) do
    url_path = "/DeleteImagePipeline"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"imagePipelineArn", image_pipeline_arn}]

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
  Deletes an image recipe.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20DeleteImageRecipe&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:image_recipe_arn` (`t:string` required) The Amazon Resource Name (ARN) of
  the image recipe to delete.
  ## Keyword parameters:
  """
  @spec delete_image_recipe(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_image_recipe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_image_recipe_errors()}
  def delete_image_recipe(%Client{} = client, image_recipe_arn, options \\ [])
      when is_binary(image_recipe_arn) do
    url_path = "/DeleteImageRecipe"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"imageRecipeArn", image_recipe_arn}]

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
  Deletes an infrastructure configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20DeleteInfrastructureConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:infrastructure_configuration_arn` (`t:string` required) The Amazon Resource
  Name (ARN) of the infrastructure configuration to delete.
  ## Keyword parameters:
  """
  @spec delete_infrastructure_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_infrastructure_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_infrastructure_configuration_errors()}
  def delete_infrastructure_configuration(
        %Client{} = client,
        infrastructure_configuration_arn,
        options \\ []
      )
      when is_binary(infrastructure_configuration_arn) do
    url_path = "/DeleteInfrastructureConfiguration"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"infrastructureConfigurationArn", infrastructure_configuration_arn}]

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
  Delete the specified lifecycle policy resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20DeleteLifecyclePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lifecycle_policy_arn` (`t:string` required) The Amazon Resource Name (ARN)
  of the lifecycle policy resource to delete.
  ## Keyword parameters:
  """
  @spec delete_lifecycle_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_lifecycle_policy_errors()}
  def delete_lifecycle_policy(%Client{} = client, lifecycle_policy_arn, options \\ [])
      when is_binary(lifecycle_policy_arn) do
    url_path = "/DeleteLifecyclePolicy"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"lifecyclePolicyArn", lifecycle_policy_arn}]

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
  Deletes a specific workflow resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20DeleteWorkflow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workflow_build_version_arn` (`t:string` required) The Amazon Resource Name
  (ARN) of the workflow resource to delete.
  ## Keyword parameters:
  """
  @spec delete_workflow(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_workflow_errors()}
  def delete_workflow(%Client{} = client, workflow_build_version_arn, options \\ [])
      when is_binary(workflow_build_version_arn) do
    url_path = "/DeleteWorkflow"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"workflowBuildVersionArn", workflow_build_version_arn}]

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
  Gets a component object.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20GetComponent&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:component_build_version_arn` (`t:string` required) The Amazon Resource Name
  (ARN) of the component that you want to get. Regex requires the suffix
  /\d+$.
  ## Keyword parameters:
  """
  @spec get_component(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_component_errors()}
  def get_component(%Client{} = client, component_build_version_arn, options \\ [])
      when is_binary(component_build_version_arn) do
    url_path = "/GetComponent"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"componentBuildVersionArn", component_build_version_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a component policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20GetComponentPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:component_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
  component whose policy you want to retrieve.
  ## Keyword parameters:
  """
  @spec get_component_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_component_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_component_policy_errors()}
  def get_component_policy(%Client{} = client, component_arn, options \\ [])
      when is_binary(component_arn) do
    url_path = "/GetComponentPolicy"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"componentArn", component_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a container recipe.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20GetContainerRecipe&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:container_recipe_arn` (`t:string` required) The Amazon Resource Name (ARN)
  of the container recipe to retrieve.
  ## Keyword parameters:
  """
  @spec get_container_recipe(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_container_recipe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_container_recipe_errors()}
  def get_container_recipe(%Client{} = client, container_recipe_arn, options \\ [])
      when is_binary(container_recipe_arn) do
    url_path = "/GetContainerRecipe"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"containerRecipeArn", container_recipe_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the policy for a container recipe.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20GetContainerRecipePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:container_recipe_arn` (`t:string` required) The Amazon Resource Name (ARN)
  of the container recipe for the policy being requested.
  ## Keyword parameters:
  """
  @spec get_container_recipe_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_container_recipe_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_container_recipe_policy_errors()}
  def get_container_recipe_policy(%Client{} = client, container_recipe_arn, options \\ [])
      when is_binary(container_recipe_arn) do
    url_path = "/GetContainerRecipePolicy"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"containerRecipeArn", container_recipe_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a distribution configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20GetDistributionConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:distribution_configuration_arn` (`t:string` required) The Amazon Resource
  Name (ARN) of the distribution configuration that you want to retrieve.
  ## Keyword parameters:
  """
  @spec get_distribution_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_distribution_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_distribution_configuration_errors()}
  def get_distribution_configuration(
        %Client{} = client,
        distribution_configuration_arn,
        options \\ []
      )
      when is_binary(distribution_configuration_arn) do
    url_path = "/GetDistributionConfiguration"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"distributionConfigurationArn", distribution_configuration_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an image.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20GetImage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:image_build_version_arn` (`t:string` required) The Amazon Resource Name
  (ARN) of the image that you want to get.
  ## Keyword parameters:
  """
  @spec get_image(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_image_errors()}
  def get_image(%Client{} = client, image_build_version_arn, options \\ [])
      when is_binary(image_build_version_arn) do
    url_path = "/GetImage"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"imageBuildVersionArn", image_build_version_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an image pipeline.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20GetImagePipeline&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:image_pipeline_arn` (`t:string` required) The Amazon Resource Name (ARN) of
  the image pipeline that you want to retrieve.
  ## Keyword parameters:
  """
  @spec get_image_pipeline(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_image_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_image_pipeline_errors()}
  def get_image_pipeline(%Client{} = client, image_pipeline_arn, options \\ [])
      when is_binary(image_pipeline_arn) do
    url_path = "/GetImagePipeline"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"imagePipelineArn", image_pipeline_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an image policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20GetImagePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:image_arn` (`t:string` required) The Amazon Resource Name (ARN) of the image
  whose policy you want to retrieve.
  ## Keyword parameters:
  """
  @spec get_image_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_image_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_image_policy_errors()}
  def get_image_policy(%Client{} = client, image_arn, options \\ []) when is_binary(image_arn) do
    url_path = "/GetImagePolicy"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"imageArn", image_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an image recipe.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20GetImageRecipe&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:image_recipe_arn` (`t:string` required) The Amazon Resource Name (ARN) of
  the image recipe that you want to retrieve.
  ## Keyword parameters:
  """
  @spec get_image_recipe(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_image_recipe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_image_recipe_errors()}
  def get_image_recipe(%Client{} = client, image_recipe_arn, options \\ [])
      when is_binary(image_recipe_arn) do
    url_path = "/GetImageRecipe"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"imageRecipeArn", image_recipe_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an image recipe policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20GetImageRecipePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:image_recipe_arn` (`t:string` required) The Amazon Resource Name (ARN) of
  the image recipe whose policy you want to retrieve.
  ## Keyword parameters:
  """
  @spec get_image_recipe_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_image_recipe_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_image_recipe_policy_errors()}
  def get_image_recipe_policy(%Client{} = client, image_recipe_arn, options \\ [])
      when is_binary(image_recipe_arn) do
    url_path = "/GetImageRecipePolicy"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"imageRecipeArn", image_recipe_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an infrastructure configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20GetInfrastructureConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:infrastructure_configuration_arn` (`t:string` required) The Amazon Resource
  Name (ARN) of the infrastructure configuration that you want to retrieve.
  ## Keyword parameters:
  """
  @spec get_infrastructure_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_infrastructure_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_infrastructure_configuration_errors()}
  def get_infrastructure_configuration(
        %Client{} = client,
        infrastructure_configuration_arn,
        options \\ []
      )
      when is_binary(infrastructure_configuration_arn) do
    url_path = "/GetInfrastructureConfiguration"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"infrastructureConfigurationArn", infrastructure_configuration_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the runtime information that was logged for a specific runtime instance of
  the lifecycle policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20GetLifecycleExecution&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lifecycle_execution_id` (`t:string` required) Use the unique identifier for
  a runtime instance of the lifecycle policy to get runtime details.
  ## Keyword parameters:
  """
  @spec get_lifecycle_execution(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_lifecycle_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_lifecycle_execution_errors()}
  def get_lifecycle_execution(%Client{} = client, lifecycle_execution_id, options \\ [])
      when is_binary(lifecycle_execution_id) do
    url_path = "/GetLifecycleExecution"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"lifecycleExecutionId", lifecycle_execution_id}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get details for the specified image lifecycle policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20GetLifecyclePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:lifecycle_policy_arn` (`t:string` required) Specifies the Amazon Resource
  Name (ARN) of the image lifecycle policy resource to get.
  ## Keyword parameters:
  """
  @spec get_lifecycle_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_lifecycle_policy_errors()}
  def get_lifecycle_policy(%Client{} = client, lifecycle_policy_arn, options \\ [])
      when is_binary(lifecycle_policy_arn) do
    url_path = "/GetLifecyclePolicy"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"lifecyclePolicyArn", lifecycle_policy_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a workflow resource object.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20GetWorkflow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workflow_build_version_arn` (`t:string` required) The Amazon Resource Name
  (ARN) of the workflow resource that you want to get.
  ## Keyword parameters:
  """
  @spec get_workflow(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_workflow_errors()}
  def get_workflow(%Client{} = client, workflow_build_version_arn, options \\ [])
      when is_binary(workflow_build_version_arn) do
    url_path = "/GetWorkflow"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"workflowBuildVersionArn", workflow_build_version_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the runtime information that was logged for a specific runtime instance of
  the workflow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20GetWorkflowExecution&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:workflow_execution_id` (`t:string` required) Use the unique identifier for a
  runtime instance of the workflow to get runtime details.
  ## Keyword parameters:
  """
  @spec get_workflow_execution(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_workflow_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_workflow_execution_errors()}
  def get_workflow_execution(%Client{} = client, workflow_execution_id, options \\ [])
      when is_binary(workflow_execution_id) do
    url_path = "/GetWorkflowExecution"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"workflowExecutionId", workflow_execution_id}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the runtime information that was logged for a specific runtime instance of
  the workflow step.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20GetWorkflowStepExecution&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:step_execution_id` (`t:string` required) Use the unique identifier for a
  specific runtime instance of the workflow step to get runtime details for
  that step.
  ## Keyword parameters:
  """
  @spec get_workflow_step_execution(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_workflow_step_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_workflow_step_execution_errors()}
  def get_workflow_step_execution(%Client{} = client, step_execution_id, options \\ [])
      when is_binary(step_execution_id) do
    url_path = "/GetWorkflowStepExecution"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"stepExecutionId", step_execution_id}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Imports a component and transforms its data into a component document.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ImportComponent&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec import_component(AWS.Client.t(), Keyword.t()) ::
          {:ok, import_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_component_errors()}
  def import_component(%Client{} = client, options \\ []) do
    url_path = "/ImportComponent"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  When you export your virtual machine (VM) from its virtualization environment,
  that process creates a set of one or more disk container files that act as
  snapshots of your VM’s environment, settings, and data. The Amazon EC2 API
  [ImportImage](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportImage.html)
  action uses those files to import your VM and create an AMI. To import using
  the CLI command, see
  [import-image](https://docs.aws.amazon.com/cli/latest/reference/ec2/import-image.html)

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ImportVmImage&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec import_vm_image(AWS.Client.t(), Keyword.t()) ::
          {:ok, import_vm_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_vm_image_errors()}
  def import_vm_image(%Client{} = client, options \\ []) do
    url_path = "/ImportVmImage"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns the list of component build versions for the specified semantic version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ListComponentBuildVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_component_build_versions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_component_build_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_component_build_versions_errors()}
  def list_component_build_versions(%Client{} = client, options \\ []) do
    url_path = "/ListComponentBuildVersions"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns the list of components that can be filtered by name, or by using the
  listed `filters` to streamline results. Newly created components can take up
  to two minutes to appear in the ListComponents API Results.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ListComponents&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_components(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_components_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_components_errors()}
  def list_components(%Client{} = client, options \\ []) do
    url_path = "/ListComponents"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns a list of container recipes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ListContainerRecipes&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_container_recipes(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_container_recipes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_container_recipes_errors()}
  def list_container_recipes(%Client{} = client, options \\ []) do
    url_path = "/ListContainerRecipes"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns a list of distribution configurations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ListDistributionConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_distribution_configurations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_distribution_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_distribution_configurations_errors()}
  def list_distribution_configurations(%Client{} = client, options \\ []) do
    url_path = "/ListDistributionConfigurations"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns a list of image build versions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ListImageBuildVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_image_build_versions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_image_build_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_image_build_versions_errors()}
  def list_image_build_versions(%Client{} = client, options \\ []) do
    url_path = "/ListImageBuildVersions"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  List the Packages that are associated with an Image Build Version, as determined
  by Amazon Web Services Systems Manager Inventory at build time.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ListImagePackages&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_image_packages(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_image_packages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_image_packages_errors()}
  def list_image_packages(%Client{} = client, options \\ []) do
    url_path = "/ListImagePackages"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns a list of images created by the specified pipeline.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ListImagePipelineImages&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_image_pipeline_images(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_image_pipeline_images_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_image_pipeline_images_errors()}
  def list_image_pipeline_images(%Client{} = client, options \\ []) do
    url_path = "/ListImagePipelineImages"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns a list of image pipelines.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ListImagePipelines&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_image_pipelines(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_image_pipelines_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_image_pipelines_errors()}
  def list_image_pipelines(%Client{} = client, options \\ []) do
    url_path = "/ListImagePipelines"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns a list of image recipes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ListImageRecipes&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_image_recipes(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_image_recipes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_image_recipes_errors()}
  def list_image_recipes(%Client{} = client, options \\ []) do
    url_path = "/ListImageRecipes"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns a list of image scan aggregations for your account. You can filter by
  the type of key that Image Builder uses to group results. For example, if you
  want to get a list of findings by severity level for one of your pipelines,
  you might specify your pipeline with the `imagePipelineArn` filter. If you
  don't specify a filter, Image Builder returns an aggregation for your account.
  To streamline results, you can use the following filters in your request:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ListImageScanFindingAggregations&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_image_scan_finding_aggregations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_image_scan_finding_aggregations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_image_scan_finding_aggregations_errors()}
  def list_image_scan_finding_aggregations(%Client{} = client, options \\ []) do
    url_path = "/ListImageScanFindingAggregations"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns a list of image scan findings for your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ListImageScanFindings&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_image_scan_findings(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_image_scan_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_image_scan_findings_errors()}
  def list_image_scan_findings(%Client{} = client, options \\ []) do
    url_path = "/ListImageScanFindings"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns the list of images that you have access to. Newly created images can
  take up to two minutes to appear in the ListImages API Results.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ListImages&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_images(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_images_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_images_errors()}
  def list_images(%Client{} = client, options \\ []) do
    url_path = "/ListImages"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns a list of infrastructure configurations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ListInfrastructureConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_infrastructure_configurations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_infrastructure_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_infrastructure_configurations_errors()}
  def list_infrastructure_configurations(%Client{} = client, options \\ []) do
    url_path = "/ListInfrastructureConfigurations"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  List resources that the runtime instance of the image lifecycle identified for
  lifecycle actions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ListLifecycleExecutionResources&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_lifecycle_execution_resources(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_lifecycle_execution_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_lifecycle_execution_resources_errors()}
  def list_lifecycle_execution_resources(%Client{} = client, options \\ []) do
    url_path = "/ListLifecycleExecutionResources"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Get the lifecycle runtime history for the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ListLifecycleExecutions&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_lifecycle_executions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_lifecycle_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_lifecycle_executions_errors()}
  def list_lifecycle_executions(%Client{} = client, options \\ []) do
    url_path = "/ListLifecycleExecutions"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Get a list of lifecycle policies in your Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ListLifecyclePolicies&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_lifecycle_policies(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_lifecycle_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_lifecycle_policies_errors()}
  def list_lifecycle_policies(%Client{} = client, options \\ []) do
    url_path = "/ListLifecyclePolicies"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns the list of tags for the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
  resource whose tags you want to retrieve.
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
  Get a list of workflow steps that are waiting for action for workflows in your
  Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ListWaitingWorkflowSteps&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_waiting_workflow_steps(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_waiting_workflow_steps_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_waiting_workflow_steps_errors()}
  def list_waiting_workflow_steps(%Client{} = client, options \\ []) do
    url_path = "/ListWaitingWorkflowSteps"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns a list of build versions for a specific workflow resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ListWorkflowBuildVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_workflow_build_versions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_workflow_build_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workflow_build_versions_errors()}
  def list_workflow_build_versions(%Client{} = client, options \\ []) do
    url_path = "/ListWorkflowBuildVersions"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns a list of workflow runtime instance metadata objects for a specific
  image build version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ListWorkflowExecutions&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_workflow_executions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_workflow_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workflow_executions_errors()}
  def list_workflow_executions(%Client{} = client, options \\ []) do
    url_path = "/ListWorkflowExecutions"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Returns runtime data for each step in a runtime instance of the workflow that
  you specify in the request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ListWorkflowStepExecutions&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_workflow_step_executions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_workflow_step_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workflow_step_executions_errors()}
  def list_workflow_step_executions(%Client{} = client, options \\ []) do
    url_path = "/ListWorkflowStepExecutions"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Lists workflow build versions based on filtering parameters.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20ListWorkflows&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_workflows(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_workflows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workflows_errors()}
  def list_workflows(%Client{} = client, options \\ []) do
    url_path = "/ListWorkflows"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Applies a policy to a component. We recommend that you call the RAM API
  [CreateResourceShare](https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html)
  to share resources. If you call the Image Builder API `PutComponentPolicy`,
  you must also call the RAM API
  [PromoteResourceShareCreatedFromPolicy](https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html)
  in order for the resource to be visible to all principals with whom the
  resource is shared.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20PutComponentPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec put_component_policy(AWS.Client.t(), Keyword.t()) ::
          {:ok, put_component_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_component_policy_errors()}
  def put_component_policy(%Client{} = client, options \\ []) do
    url_path = "/PutComponentPolicy"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Applies a policy to a container image. We recommend that you call the RAM API
  CreateResourceShare
  (https://docs.aws.amazon.com//ram/latest/APIReference/API_CreateResourceShare.html)
  to share resources. If you call the Image Builder API
  `PutContainerImagePolicy`, you must also call the RAM API
  PromoteResourceShareCreatedFromPolicy
  (https://docs.aws.amazon.com//ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html)
  in order for the resource to be visible to all principals with whom the
  resource is shared.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20PutContainerRecipePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec put_container_recipe_policy(AWS.Client.t(), Keyword.t()) ::
          {:ok, put_container_recipe_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_container_recipe_policy_errors()}
  def put_container_recipe_policy(%Client{} = client, options \\ []) do
    url_path = "/PutContainerRecipePolicy"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Applies a policy to an image. We recommend that you call the RAM API
  [CreateResourceShare](https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html)
  to share resources. If you call the Image Builder API `PutImagePolicy`, you
  must also call the RAM API
  [PromoteResourceShareCreatedFromPolicy](https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html)
  in order for the resource to be visible to all principals with whom the
  resource is shared.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20PutImagePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec put_image_policy(AWS.Client.t(), Keyword.t()) ::
          {:ok, put_image_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_image_policy_errors()}
  def put_image_policy(%Client{} = client, options \\ []) do
    url_path = "/PutImagePolicy"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Applies a policy to an image recipe. We recommend that you call the RAM API
  [CreateResourceShare](https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html)
  to share resources. If you call the Image Builder API `PutImageRecipePolicy`,
  you must also call the RAM API
  [PromoteResourceShareCreatedFromPolicy](https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html)
  in order for the resource to be visible to all principals with whom the
  resource is shared.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20PutImageRecipePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec put_image_recipe_policy(AWS.Client.t(), Keyword.t()) ::
          {:ok, put_image_recipe_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_image_recipe_policy_errors()}
  def put_image_recipe_policy(%Client{} = client, options \\ []) do
    url_path = "/PutImageRecipePolicy"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Pauses or resumes image creation when the associated workflow runs a
  `WaitForAction` step.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20SendWorkflowStepAction&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec send_workflow_step_action(AWS.Client.t(), Keyword.t()) ::
          {:ok, send_workflow_step_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_workflow_step_action_errors()}
  def send_workflow_step_action(%Client{} = client, options \\ []) do
    url_path = "/SendWorkflowStepAction"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Manually triggers a pipeline to create an image.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20StartImagePipelineExecution&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec start_image_pipeline_execution(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_image_pipeline_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_image_pipeline_execution_errors()}
  def start_image_pipeline_execution(%Client{} = client, options \\ []) do
    url_path = "/StartImagePipelineExecution"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Begin asynchronous resource state update for lifecycle changes to the specified
  image resources.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20StartResourceStateUpdate&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec start_resource_state_update(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_resource_state_update_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_resource_state_update_errors()}
  def start_resource_state_update(%Client{} = client, options \\ []) do
    url_path = "/StartResourceStateUpdate"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Adds a tag to a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
  resource that you want to tag.
  ## Keyword parameters:
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
  Removes a tag from a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
  resource that you want to untag.
  * `:tag_keys` (`t:list[com.amazonaws.imagebuilder#TagKey]` required) The tag
  keys to remove from the resource.
  ## Keyword parameters:
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
  Updates a new distribution configuration. Distribution configurations define and
  configure the outputs of your pipeline.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20UpdateDistributionConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec update_distribution_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_distribution_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_distribution_configuration_errors()}
  def update_distribution_configuration(%Client{} = client, options \\ []) do
    url_path = "/UpdateDistributionConfiguration"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Updates an image pipeline. Image pipelines enable you to automate the creation
  and distribution of images. You must specify exactly one recipe for your
  image, using either a `containerRecipeArn` or an `imageRecipeArn`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20UpdateImagePipeline&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec update_image_pipeline(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_image_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_image_pipeline_errors()}
  def update_image_pipeline(%Client{} = client, options \\ []) do
    url_path = "/UpdateImagePipeline"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Updates a new infrastructure configuration. An infrastructure configuration
  defines the environment in which your image will be built and tested.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20UpdateInfrastructureConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec update_infrastructure_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_infrastructure_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_infrastructure_configuration_errors()}
  def update_infrastructure_configuration(%Client{} = client, options \\ []) do
    url_path = "/UpdateInfrastructureConfiguration"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Update the specified lifecycle policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=imagebuilder%20UpdateLifecyclePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec update_lifecycle_policy(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_lifecycle_policy_errors()}
  def update_lifecycle_policy(%Client{} = client, options \\ []) do
    url_path = "/UpdateLifecyclePolicy"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
