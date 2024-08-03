# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ECR do
  @moduledoc """
  Amazon Elastic Container Registry Amazon Elastic Container Registry (Amazon ECR)
  is a managed container image registry service. Customers can use the familiar
  Docker CLI, or their preferred client, to push, pull, and manage images.
  Amazon ECR provides a secure, scalable, and reliable registry for your Docker
  or Open Container Initiative (OCI) images. Amazon ECR supports private
  repositories with resource-based permissions using IAM so that specific users
  or Amazon EC2 instances can access repositories and images.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      image_scan_findings_summary() :: %{
        "findingSeverityCounts" => map(),
        "imageScanCompletedAt" => non_neg_integer(),
        "vulnerabilitySourceUpdatedAt" => non_neg_integer()
      }
      
  """
  @type image_scan_findings_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_repository_policy_request() :: %{
        optional("registryId") => String.t(),
        required("repositoryName") => String.t()
      }
      
  """
  @type get_repository_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type upload_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_repository_response() :: %{
        "repository" => repository()
      }
      
  """
  @type create_repository_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_replication_status() :: %{
        "failureCode" => String.t(),
        "region" => String.t(),
        "registryId" => String.t(),
        "status" => list(any())
      }
      
  """
  @type image_replication_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_registry_scanning_configuration_request() :: %{
        optional("rules") => list(registry_scanning_rule()()),
        optional("scanType") => list(any())
      }
      
  """
  @type put_registry_scanning_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_pull_through_cache_rule_response() :: %{
        "createdAt" => non_neg_integer(),
        "credentialArn" => String.t(),
        "ecrRepositoryPrefix" => String.t(),
        "registryId" => String.t(),
        "upstreamRegistry" => list(any()),
        "upstreamRegistryUrl" => String.t()
      }
      
  """
  @type create_pull_through_cache_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encryption_configuration() :: %{
        "encryptionType" => list(any()),
        "kmsKey" => String.t()
      }
      
  """
  @type encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      template_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type template_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_digest_does_not_match_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type image_digest_does_not_match_exception() :: %{String.t() => any()}

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
      
      put_image_tag_mutability_response() :: %{
        "imageTagMutability" => list(any()),
        "registryId" => String.t(),
        "repositoryName" => String.t()
      }
      
  """
  @type put_image_tag_mutability_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_registry_policy_response() :: %{
        "policyText" => String.t(),
        "registryId" => String.t()
      }
      
  """
  @type put_registry_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy_preview_in_progress_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type lifecycle_policy_preview_in_progress_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type image_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_download_url_for_layer_response() :: %{
        "downloadUrl" => String.t(),
        "layerDigest" => String.t()
      }
      
  """
  @type get_download_url_for_layer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remediation() :: %{
        "recommendation" => recommendation()
      }
      
  """
  @type remediation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_scanning_configuration() :: %{
        "scanOnPush" => boolean()
      }
      
  """
  @type image_scanning_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_repository_creation_template_response() :: %{
        "registryId" => String.t(),
        "repositoryCreationTemplate" => repository_creation_template()
      }
      
  """
  @type update_repository_creation_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      layer_failure() :: %{
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "layerDigest" => String.t()
      }
      
  """
  @type layer_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      image_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type image_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_repository_creation_template_request() :: %{
        optional("customRoleArn") => String.t(),
        optional("description") => String.t(),
        optional("encryptionConfiguration") => encryption_configuration_for_repository_creation_template(),
        optional("imageTagMutability") => list(any()),
        optional("lifecyclePolicy") => String.t(),
        optional("repositoryPolicy") => String.t(),
        optional("resourceTags") => list(tag()()),
        required("appliedFor") => list(list(any())()),
        required("prefix") => String.t()
      }
      
  """
  @type create_repository_creation_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_images_request() :: %{
        optional("filter") => describe_images_filter(),
        optional("imageIds") => list(image_identifier()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("registryId") => String.t(),
        required("repositoryName") => String.t()
      }
      
  """
  @type describe_images_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scan_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type scan_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_scan_status() :: %{
        "description" => String.t(),
        "status" => list(any())
      }
      
  """
  @type image_scan_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_repository_policy_response() :: %{
        "policyText" => String.t(),
        "registryId" => String.t(),
        "repositoryName" => String.t()
      }
      
  """
  @type set_repository_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      initiate_layer_upload_request() :: %{
        optional("registryId") => String.t(),
        required("repositoryName") => String.t()
      }
      
  """
  @type initiate_layer_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_registry_scanning_configuration_response() :: %{
        "registryScanningConfiguration" => registry_scanning_configuration()
      }
      
  """
  @type put_registry_scanning_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_pull_through_cache_rule_request() :: %{
        optional("registryId") => String.t(),
        required("credentialArn") => String.t(),
        required("ecrRepositoryPrefix") => String.t()
      }
      
  """
  @type update_pull_through_cache_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_check_layer_availability_response() :: %{
        "failures" => list(layer_failure()()),
        "layers" => list(layer()())
      }
      
  """
  @type batch_check_layer_availability_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      layers_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type layers_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encryption_configuration_for_repository_creation_template() :: %{
        "encryptionType" => list(any()),
        "kmsKey" => String.t()
      }
      
  """
  @type encryption_configuration_for_repository_creation_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_repository_policy_request() :: %{
        optional("registryId") => String.t(),
        required("repositoryName") => String.t()
      }
      
  """
  @type delete_repository_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_scan_findings() :: %{
        "enhancedFindings" => list(enhanced_image_scan_finding()()),
        "findingSeverityCounts" => map(),
        "findings" => list(image_scan_finding()()),
        "imageScanCompletedAt" => non_neg_integer(),
        "vulnerabilitySourceUpdatedAt" => non_neg_integer()
      }
      
  """
  @type image_scan_findings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_image_scan_request() :: %{
        optional("registryId") => String.t(),
        required("imageId") => image_identifier(),
        required("repositoryName") => String.t()
      }
      
  """
  @type start_image_scan_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository_not_empty_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type repository_not_empty_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_repository_creation_template_request() :: %{
        required("prefix") => String.t()
      }
      
  """
  @type delete_repository_creation_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_registry_policy_request() :: %{}
      
  """
  @type delete_registry_policy_request() :: %{}

  @typedoc """

  ## Example:
      
      repository_filter() :: %{
        "filter" => String.t(),
        "filterType" => list(any())
      }
      
  """
  @type repository_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registry_policy_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type registry_policy_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_image_scanning_configuration_response() :: %{
        "imageScanningConfiguration" => image_scanning_configuration(),
        "registryId" => String.t(),
        "repositoryName" => String.t()
      }
      
  """
  @type put_image_scanning_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_image_type_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unsupported_image_type_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_tag_parameter_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_tag_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type repository_already_exists_exception() :: %{String.t() => any()}

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
      
      repository_policy_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type repository_policy_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_repository_policy_response() :: %{
        "policyText" => String.t(),
        "registryId" => String.t(),
        "repositoryName" => String.t()
      }
      
  """
  @type get_repository_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      layer_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type layer_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registry_scanning_configuration() :: %{
        "rules" => list(registry_scanning_rule()()),
        "scanType" => list(any())
      }
      
  """
  @type registry_scanning_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_images_response() :: %{
        "imageDetails" => list(image_detail()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_images_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_repositories_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("registryId") => String.t(),
        optional("repositoryNames") => list(String.t()())
      }
      
  """
  @type describe_repositories_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_image_request() :: %{
        optional("imageDigest") => String.t(),
        optional("imageManifestMediaType") => String.t(),
        optional("imageTag") => String.t(),
        optional("registryId") => String.t(),
        required("imageManifest") => String.t(),
        required("repositoryName") => String.t()
      }
      
  """
  @type put_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy_preview_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type lifecycle_policy_preview_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      complete_layer_upload_request() :: %{
        optional("registryId") => String.t(),
        required("layerDigests") => list(String.t()()),
        required("repositoryName") => String.t(),
        required("uploadId") => String.t()
      }
      
  """
  @type complete_layer_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unable_to_get_upstream_image_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unable_to_get_upstream_image_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_repository_policy_request() :: %{
        optional("force") => boolean(),
        optional("registryId") => String.t(),
        required("policyText") => String.t(),
        required("repositoryName") => String.t()
      }
      
  """
  @type set_repository_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_registry_policy_request() :: %{}
      
  """
  @type get_registry_policy_request() :: %{}

  @typedoc """

  ## Example:
      
      put_image_scanning_configuration_request() :: %{
        optional("registryId") => String.t(),
        required("imageScanningConfiguration") => image_scanning_configuration(),
        required("repositoryName") => String.t()
      }
      
  """
  @type put_image_scanning_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy_preview_filter() :: %{
        "tagStatus" => list(any())
      }
      
  """
  @type lifecycle_policy_preview_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enhanced_image_scan_finding() :: %{
        "awsAccountId" => String.t(),
        "description" => String.t(),
        "findingArn" => String.t(),
        "firstObservedAt" => non_neg_integer(),
        "lastObservedAt" => non_neg_integer(),
        "packageVulnerabilityDetails" => package_vulnerability_details(),
        "remediation" => remediation(),
        "resources" => list(resource()()),
        "score" => float(),
        "scoreDetails" => score_details(),
        "severity" => String.t(),
        "status" => String.t(),
        "title" => String.t(),
        "type" => String.t(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type enhanced_image_scan_finding() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lifecycle_policy_preview_response() :: %{
        "lifecyclePolicyText" => String.t(),
        "nextToken" => String.t(),
        "previewResults" => list(lifecycle_policy_preview_result()()),
        "registryId" => String.t(),
        "repositoryName" => String.t(),
        "status" => list(any()),
        "summary" => lifecycle_policy_preview_summary()
      }
      
  """
  @type get_lifecycle_policy_preview_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      template_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type template_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy_rule_action() :: %{
        "type" => list(any())
      }
      
  """
  @type lifecycle_policy_rule_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_lifecycle_policy_response() :: %{
        "lastEvaluatedAt" => non_neg_integer(),
        "lifecyclePolicyText" => String.t(),
        "registryId" => String.t(),
        "repositoryName" => String.t()
      }
      
  """
  @type delete_lifecycle_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_image_request() :: %{
        optional("registryId") => String.t(),
        required("imageIds") => list(image_identifier()()),
        required("repositoryName") => String.t()
      }
      
  """
  @type batch_delete_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_lifecycle_policy_request() :: %{
        optional("registryId") => String.t(),
        required("lifecyclePolicyText") => String.t(),
        required("repositoryName") => String.t()
      }
      
  """
  @type put_lifecycle_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      complete_layer_upload_response() :: %{
        "layerDigest" => String.t(),
        "registryId" => String.t(),
        "repositoryName" => String.t(),
        "uploadId" => String.t()
      }
      
  """
  @type complete_layer_upload_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository_creation_template() :: %{
        "appliedFor" => list(list(any())()),
        "createdAt" => non_neg_integer(),
        "customRoleArn" => String.t(),
        "description" => String.t(),
        "encryptionConfiguration" => encryption_configuration_for_repository_creation_template(),
        "imageTagMutability" => list(any()),
        "lifecyclePolicy" => String.t(),
        "prefix" => String.t(),
        "repositoryPolicy" => String.t(),
        "resourceTags" => list(tag()()),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type repository_creation_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_configuration() :: %{
        "rules" => list(replication_rule()())
      }
      
  """
  @type replication_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_failure() :: %{
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "imageId" => image_identifier()
      }
      
  """
  @type image_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type lifecycle_policy_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_layer_part_exception() :: %{
        "lastValidByteReceived" => float(),
        "message" => String.t(),
        "registryId" => String.t(),
        "repositoryName" => String.t(),
        "uploadId" => String.t()
      }
      
  """
  @type invalid_layer_part_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_pull_through_cache_rule_request() :: %{
        optional("credentialArn") => String.t(),
        optional("registryId") => String.t(),
        optional("upstreamRegistry") => list(any()),
        required("ecrRepositoryPrefix") => String.t(),
        required("upstreamRegistryUrl") => String.t()
      }
      
  """
  @type create_pull_through_cache_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_tag_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type image_tag_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_image_response() :: %{
        "image" => image()
      }
      
  """
  @type put_image_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pull_through_cache_rule_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type pull_through_cache_rule_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_destination() :: %{
        "region" => String.t(),
        "registryId" => String.t()
      }
      
  """
  @type replication_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validate_pull_through_cache_rule_request() :: %{
        optional("registryId") => String.t(),
        required("ecrRepositoryPrefix") => String.t()
      }
      
  """
  @type validate_pull_through_cache_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lifecycle_policy_preview_request() :: %{
        optional("filter") => lifecycle_policy_preview_filter(),
        optional("imageIds") => list(image_identifier()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("registryId") => String.t(),
        required("repositoryName") => String.t()
      }
      
  """
  @type get_lifecycle_policy_preview_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository() :: %{
        "createdAt" => non_neg_integer(),
        "encryptionConfiguration" => encryption_configuration(),
        "imageScanningConfiguration" => image_scanning_configuration(),
        "imageTagMutability" => list(any()),
        "registryId" => String.t(),
        "repositoryArn" => String.t(),
        "repositoryName" => String.t(),
        "repositoryUri" => String.t()
      }
      
  """
  @type repository() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_images_request() :: %{
        optional("filter") => list_images_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("registryId") => String.t(),
        required("repositoryName") => String.t()
      }
      
  """
  @type list_images_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation() :: %{
        "text" => String.t(),
        "url" => String.t()
      }
      
  """
  @type recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_repository_request() :: %{
        optional("force") => boolean(),
        optional("registryId") => String.t(),
        required("repositoryName") => String.t()
      }
      
  """
  @type delete_repository_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      layer() :: %{
        "layerAvailability" => list(any()),
        "layerDigest" => String.t(),
        "layerSize" => float(),
        "mediaType" => String.t()
      }
      
  """
  @type layer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_images_filter() :: %{
        "tagStatus" => list(any())
      }
      
  """
  @type list_images_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cvss_score_details() :: %{
        "adjustments" => list(cvss_score_adjustment()()),
        "score" => float(),
        "scoreSource" => String.t(),
        "scoringVector" => String.t(),
        "version" => String.t()
      }
      
  """
  @type cvss_score_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      layer_part_too_small_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type layer_part_too_small_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      referenced_images_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type referenced_images_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vulnerable_package() :: %{
        "arch" => String.t(),
        "epoch" => integer(),
        "filePath" => String.t(),
        "name" => String.t(),
        "packageManager" => String.t(),
        "release" => String.t(),
        "sourceLayerHash" => String.t(),
        "version" => String.t()
      }
      
  """
  @type vulnerable_package() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => list(tag()())
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
      
      unable_to_get_upstream_layer_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unable_to_get_upstream_layer_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validate_pull_through_cache_rule_response() :: %{
        "credentialArn" => String.t(),
        "ecrRepositoryPrefix" => String.t(),
        "failure" => String.t(),
        "isValid" => boolean(),
        "registryId" => String.t(),
        "upstreamRegistryUrl" => String.t()
      }
      
  """
  @type validate_pull_through_cache_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_repository_scanning_configuration_response() :: %{
        "failures" => list(repository_scanning_configuration_failure()()),
        "scanningConfigurations" => list(repository_scanning_configuration()())
      }
      
  """
  @type batch_get_repository_scanning_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registry_scanning_rule() :: %{
        "repositoryFilters" => list(scanning_repository_filter()()),
        "scanFrequency" => list(any())
      }
      
  """
  @type registry_scanning_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_authorization_token_response() :: %{
        "authorizationData" => list(authorization_data()())
      }
      
  """
  @type get_authorization_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_authorization_token_request() :: %{
        optional("registryIds") => list(String.t()())
      }
      
  """
  @type get_authorization_token_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      score_details() :: %{
        "cvss" => cvss_score_details()
      }
      
  """
  @type score_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_image_scan_response() :: %{
        "imageId" => image_identifier(),
        "imageScanStatus" => image_scan_status(),
        "registryId" => String.t(),
        "repositoryName" => String.t()
      }
      
  """
  @type start_image_scan_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_registry_response() :: %{
        "registryId" => String.t(),
        "replicationConfiguration" => replication_configuration()
      }
      
  """
  @type describe_registry_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      layer_inaccessible_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type layer_inaccessible_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_images_response() :: %{
        "imageIds" => list(image_identifier()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_images_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_registry_policy_response() :: %{
        "policyText" => String.t(),
        "registryId" => String.t()
      }
      
  """
  @type delete_registry_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_registry_scanning_configuration_response() :: %{
        "registryId" => String.t(),
        "scanningConfiguration" => registry_scanning_configuration()
      }
      
  """
  @type get_registry_scanning_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unable_to_decrypt_secret_value_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unable_to_decrypt_secret_value_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_image_request() :: %{
        optional("acceptedMediaTypes") => list(String.t()()),
        optional("registryId") => String.t(),
        required("imageIds") => list(image_identifier()()),
        required("repositoryName") => String.t()
      }
      
  """
  @type batch_get_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_layer_part_response() :: %{
        "lastByteReceived" => float(),
        "registryId" => String.t(),
        "repositoryName" => String.t(),
        "uploadId" => String.t()
      }
      
  """
  @type upload_layer_part_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_repository_request() :: %{
        optional("encryptionConfiguration") => encryption_configuration(),
        optional("imageScanningConfiguration") => image_scanning_configuration(),
        optional("imageTagMutability") => list(any()),
        optional("registryId") => String.t(),
        optional("tags") => list(tag()()),
        required("repositoryName") => String.t()
      }
      
  """
  @type create_repository_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_lifecycle_policy_request() :: %{
        optional("registryId") => String.t(),
        required("repositoryName") => String.t()
      }
      
  """
  @type delete_lifecycle_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_scan_finding() :: %{
        "attributes" => list(attribute()()),
        "description" => String.t(),
        "name" => String.t(),
        "severity" => list(any()),
        "uri" => String.t()
      }
      
  """
  @type image_scan_finding() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pull_through_cache_rule_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type pull_through_cache_rule_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_image_scan_findings_response() :: %{
        "imageId" => image_identifier(),
        "imageScanFindings" => image_scan_findings(),
        "imageScanStatus" => image_scan_status(),
        "nextToken" => String.t(),
        "registryId" => String.t(),
        "repositoryName" => String.t()
      }
      
  """
  @type describe_image_scan_findings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_replication_configuration_response() :: %{
        "replicationConfiguration" => replication_configuration()
      }
      
  """
  @type put_replication_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_repository_creation_template_response() :: %{
        "registryId" => String.t(),
        "repositoryCreationTemplate" => repository_creation_template()
      }
      
  """
  @type create_repository_creation_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_image_scan_findings_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("registryId") => String.t(),
        required("imageId") => image_identifier(),
        required("repositoryName") => String.t()
      }
      
  """
  @type describe_image_scan_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image() :: %{
        "imageId" => image_identifier(),
        "imageManifest" => String.t(),
        "imageManifestMediaType" => String.t(),
        "registryId" => String.t(),
        "repositoryName" => String.t()
      }
      
  """
  @type image() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_image_tag_mutability_request() :: %{
        optional("registryId") => String.t(),
        required("imageTagMutability") => list(any()),
        required("repositoryName") => String.t()
      }
      
  """
  @type put_image_tag_mutability_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_repository_policy_response() :: %{
        "policyText" => String.t(),
        "registryId" => String.t(),
        "repositoryName" => String.t()
      }
      
  """
  @type delete_repository_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_repository_creation_templates_response() :: %{
        "nextToken" => String.t(),
        "registryId" => String.t(),
        "repositoryCreationTemplates" => list(repository_creation_template()())
      }
      
  """
  @type describe_repository_creation_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_pull_through_cache_rules_request() :: %{
        optional("ecrRepositoryPrefixes") => list(String.t()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("registryId") => String.t()
      }
      
  """
  @type describe_pull_through_cache_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_repository_creation_template_response() :: %{
        "registryId" => String.t(),
        "repositoryCreationTemplate" => repository_creation_template()
      }
      
  """
  @type delete_repository_creation_template_response() :: %{String.t() => any()}

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
      
      batch_delete_image_response() :: %{
        "failures" => list(image_failure()()),
        "imageIds" => list(image_identifier()())
      }
      
  """
  @type batch_delete_image_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      secret_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type secret_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      invalid_layer_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_layer_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_registry_request() :: %{}
      
  """
  @type describe_registry_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_pull_through_cache_rule_response() :: %{
        "createdAt" => non_neg_integer(),
        "credentialArn" => String.t(),
        "ecrRepositoryPrefix" => String.t(),
        "registryId" => String.t(),
        "upstreamRegistryUrl" => String.t()
      }
      
  """
  @type delete_pull_through_cache_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_rule() :: %{
        "destinations" => list(replication_destination()()),
        "repositoryFilters" => list(repository_filter()())
      }
      
  """
  @type replication_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_exception() :: %{
        "kmsError" => String.t(),
        "message" => String.t()
      }
      
  """
  @type kms_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository_scanning_configuration() :: %{
        "appliedScanFilters" => list(scanning_repository_filter()()),
        "repositoryArn" => String.t(),
        "repositoryName" => String.t(),
        "scanFrequency" => list(any()),
        "scanOnPush" => boolean()
      }
      
  """
  @type repository_scanning_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lifecycle_policy_request() :: %{
        optional("registryId") => String.t(),
        required("repositoryName") => String.t()
      }
      
  """
  @type get_lifecycle_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_pull_through_cache_rule_response() :: %{
        "credentialArn" => String.t(),
        "ecrRepositoryPrefix" => String.t(),
        "registryId" => String.t(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type update_pull_through_cache_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_replication_configuration_request() :: %{
        required("replicationConfiguration") => replication_configuration()
      }
      
  """
  @type put_replication_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_check_layer_availability_request() :: %{
        optional("registryId") => String.t(),
        required("layerDigests") => list(String.t()()),
        required("repositoryName") => String.t()
      }
      
  """
  @type batch_check_layer_availability_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_registry_scanning_configuration_request() :: %{}
      
  """
  @type get_registry_scanning_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      server_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_identifier() :: %{
        "imageDigest" => String.t(),
        "imageTag" => String.t()
      }
      
  """
  @type image_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy_preview_summary() :: %{
        "expiringImageTotalCount" => integer()
      }
      
  """
  @type lifecycle_policy_preview_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type repository_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attribute() :: %{
        "key" => String.t(),
        "value" => String.t()
      }
      
  """
  @type attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_lifecycle_policy_response() :: %{
        "lifecyclePolicyText" => String.t(),
        "registryId" => String.t(),
        "repositoryName" => String.t()
      }
      
  """
  @type put_lifecycle_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_image_replication_status_request() :: %{
        optional("registryId") => String.t(),
        required("imageId") => image_identifier(),
        required("repositoryName") => String.t()
      }
      
  """
  @type describe_image_replication_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_repository_response() :: %{
        "repository" => repository()
      }
      
  """
  @type delete_repository_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_repositories_response() :: %{
        "nextToken" => String.t(),
        "repositories" => list(repository()())
      }
      
  """
  @type describe_repositories_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_registry_policy_response() :: %{
        "policyText" => String.t(),
        "registryId" => String.t()
      }
      
  """
  @type get_registry_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_pull_through_cache_rules_response() :: %{
        "nextToken" => String.t(),
        "pullThroughCacheRules" => list(pull_through_cache_rule()())
      }
      
  """
  @type describe_pull_through_cache_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pull_through_cache_rule() :: %{
        "createdAt" => non_neg_integer(),
        "credentialArn" => String.t(),
        "ecrRepositoryPrefix" => String.t(),
        "registryId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "upstreamRegistry" => list(any()),
        "upstreamRegistryUrl" => String.t()
      }
      
  """
  @type pull_through_cache_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_repository_scanning_configuration_request() :: %{
        required("repositoryNames") => list(String.t()())
      }
      
  """
  @type batch_get_repository_scanning_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_details() :: %{
        "awsEcrContainerImage" => aws_ecr_container_image_details()
      }
      
  """
  @type resource_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository_scanning_configuration_failure() :: %{
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "repositoryName" => String.t()
      }
      
  """
  @type repository_scanning_configuration_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_pull_through_cache_rule_request() :: %{
        optional("registryId") => String.t(),
        required("ecrRepositoryPrefix") => String.t()
      }
      
  """
  @type delete_pull_through_cache_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_policy_preview_result() :: %{
        "action" => lifecycle_policy_rule_action(),
        "appliedRulePriority" => integer(),
        "imageDigest" => String.t(),
        "imagePushedAt" => non_neg_integer(),
        "imageTags" => list(String.t()())
      }
      
  """
  @type lifecycle_policy_preview_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_lifecycle_policy_preview_request() :: %{
        optional("lifecyclePolicyText") => String.t(),
        optional("registryId") => String.t(),
        required("repositoryName") => String.t()
      }
      
  """
  @type start_lifecycle_policy_preview_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aws_ecr_container_image_details() :: %{
        "architecture" => String.t(),
        "author" => String.t(),
        "imageHash" => String.t(),
        "imageTags" => list(String.t()()),
        "platform" => String.t(),
        "pushedAt" => non_neg_integer(),
        "registry" => String.t(),
        "repositoryName" => String.t()
      }
      
  """
  @type aws_ecr_container_image_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authorization_data() :: %{
        "authorizationToken" => String.t(),
        "expiresAt" => non_neg_integer(),
        "proxyEndpoint" => String.t()
      }
      
  """
  @type authorization_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_repository_creation_templates_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("prefixes") => list(String.t()())
      }
      
  """
  @type describe_repository_creation_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_detail() :: %{
        "artifactMediaType" => String.t(),
        "imageDigest" => String.t(),
        "imageManifestMediaType" => String.t(),
        "imagePushedAt" => non_neg_integer(),
        "imageScanFindingsSummary" => image_scan_findings_summary(),
        "imageScanStatus" => image_scan_status(),
        "imageSizeInBytes" => float(),
        "imageTags" => list(String.t()()),
        "lastRecordedPullTime" => non_neg_integer(),
        "registryId" => String.t(),
        "repositoryName" => String.t()
      }
      
  """
  @type image_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      empty_upload_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type empty_upload_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_images_filter() :: %{
        "tagStatus" => list(any())
      }
      
  """
  @type describe_images_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      initiate_layer_upload_response() :: %{
        "partSize" => float(),
        "uploadId" => String.t()
      }
      
  """
  @type initiate_layer_upload_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_image_response() :: %{
        "failures" => list(image_failure()()),
        "images" => list(image()())
      }
      
  """
  @type batch_get_image_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_repository_creation_template_request() :: %{
        optional("appliedFor") => list(list(any())()),
        optional("customRoleArn") => String.t(),
        optional("description") => String.t(),
        optional("encryptionConfiguration") => encryption_configuration_for_repository_creation_template(),
        optional("imageTagMutability") => list(any()),
        optional("lifecyclePolicy") => String.t(),
        optional("repositoryPolicy") => String.t(),
        optional("resourceTags") => list(tag()()),
        required("prefix") => String.t()
      }
      
  """
  @type update_repository_creation_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_download_url_for_layer_request() :: %{
        optional("registryId") => String.t(),
        required("layerDigest") => String.t(),
        required("repositoryName") => String.t()
      }
      
  """
  @type get_download_url_for_layer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_registry_policy_request() :: %{
        required("policyText") => String.t()
      }
      
  """
  @type put_registry_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_image_replication_status_response() :: %{
        "imageId" => image_identifier(),
        "replicationStatuses" => list(image_replication_status()()),
        "repositoryName" => String.t()
      }
      
  """
  @type describe_image_replication_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lifecycle_policy_response() :: %{
        "lastEvaluatedAt" => non_neg_integer(),
        "lifecyclePolicyText" => String.t(),
        "registryId" => String.t(),
        "repositoryName" => String.t()
      }
      
  """
  @type get_lifecycle_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_lifecycle_policy_preview_response() :: %{
        "lifecyclePolicyText" => String.t(),
        "registryId" => String.t(),
        "repositoryName" => String.t(),
        "status" => list(any())
      }
      
  """
  @type start_lifecycle_policy_preview_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scanning_repository_filter() :: %{
        "filter" => String.t(),
        "filterType" => list(any())
      }
      
  """
  @type scanning_repository_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unable_to_access_secret_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unable_to_access_secret_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_layer_part_request() :: %{
        optional("registryId") => String.t(),
        required("layerPartBlob") => binary(),
        required("partFirstByte") => float(),
        required("partLastByte") => float(),
        required("repositoryName") => String.t(),
        required("uploadId") => String.t()
      }
      
  """
  @type upload_layer_part_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource() :: %{
        "details" => resource_details(),
        "id" => String.t(),
        "tags" => map(),
        "type" => String.t()
      }
      
  """
  @type resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_upstream_registry_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unsupported_upstream_registry_exception() :: %{String.t() => any()}

  @type batch_check_layer_availability_errors() ::
          repository_not_found_exception() | server_exception() | invalid_parameter_exception()

  @type batch_delete_image_errors() ::
          repository_not_found_exception() | server_exception() | invalid_parameter_exception()

  @type batch_get_image_errors() ::
          limit_exceeded_exception()
          | repository_not_found_exception()
          | server_exception()
          | invalid_parameter_exception()
          | unable_to_get_upstream_image_exception()

  @type batch_get_repository_scanning_configuration_errors() ::
          repository_not_found_exception()
          | server_exception()
          | validation_exception()
          | invalid_parameter_exception()

  @type complete_layer_upload_errors() ::
          empty_upload_exception()
          | repository_not_found_exception()
          | server_exception()
          | kms_exception()
          | invalid_layer_exception()
          | invalid_parameter_exception()
          | layer_part_too_small_exception()
          | layer_already_exists_exception()
          | upload_not_found_exception()

  @type create_pull_through_cache_rule_errors() ::
          unsupported_upstream_registry_exception()
          | unable_to_access_secret_exception()
          | limit_exceeded_exception()
          | server_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | secret_not_found_exception()
          | unable_to_decrypt_secret_value_exception()
          | pull_through_cache_rule_already_exists_exception()

  @type create_repository_errors() ::
          too_many_tags_exception()
          | limit_exceeded_exception()
          | server_exception()
          | kms_exception()
          | invalid_parameter_exception()
          | repository_already_exists_exception()
          | invalid_tag_parameter_exception()

  @type create_repository_creation_template_errors() ::
          limit_exceeded_exception()
          | server_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | template_already_exists_exception()

  @type delete_lifecycle_policy_errors() ::
          repository_not_found_exception()
          | server_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | lifecycle_policy_not_found_exception()

  @type delete_pull_through_cache_rule_errors() ::
          server_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | pull_through_cache_rule_not_found_exception()

  @type delete_registry_policy_errors() ::
          server_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | registry_policy_not_found_exception()

  @type delete_repository_errors() ::
          repository_not_found_exception()
          | server_exception()
          | kms_exception()
          | invalid_parameter_exception()
          | repository_not_empty_exception()

  @type delete_repository_creation_template_errors() ::
          server_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | template_not_found_exception()

  @type delete_repository_policy_errors() ::
          repository_not_found_exception()
          | server_exception()
          | invalid_parameter_exception()
          | repository_policy_not_found_exception()

  @type describe_image_replication_status_errors() ::
          repository_not_found_exception()
          | server_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | image_not_found_exception()

  @type describe_image_scan_findings_errors() ::
          repository_not_found_exception()
          | server_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | scan_not_found_exception()
          | image_not_found_exception()

  @type describe_images_errors() ::
          repository_not_found_exception()
          | server_exception()
          | invalid_parameter_exception()
          | image_not_found_exception()

  @type describe_pull_through_cache_rules_errors() ::
          server_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | pull_through_cache_rule_not_found_exception()

  @type describe_registry_errors() ::
          server_exception() | validation_exception() | invalid_parameter_exception()

  @type describe_repositories_errors() ::
          repository_not_found_exception() | server_exception() | invalid_parameter_exception()

  @type describe_repository_creation_templates_errors() ::
          server_exception() | validation_exception() | invalid_parameter_exception()

  @type get_authorization_token_errors() :: server_exception() | invalid_parameter_exception()

  @type get_download_url_for_layer_errors() ::
          repository_not_found_exception()
          | server_exception()
          | invalid_parameter_exception()
          | layer_inaccessible_exception()
          | unable_to_get_upstream_layer_exception()
          | layers_not_found_exception()

  @type get_lifecycle_policy_errors() ::
          repository_not_found_exception()
          | server_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | lifecycle_policy_not_found_exception()

  @type get_lifecycle_policy_preview_errors() ::
          repository_not_found_exception()
          | server_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | lifecycle_policy_preview_not_found_exception()

  @type get_registry_policy_errors() ::
          server_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | registry_policy_not_found_exception()

  @type get_registry_scanning_configuration_errors() ::
          server_exception() | validation_exception() | invalid_parameter_exception()

  @type get_repository_policy_errors() ::
          repository_not_found_exception()
          | server_exception()
          | invalid_parameter_exception()
          | repository_policy_not_found_exception()

  @type initiate_layer_upload_errors() ::
          repository_not_found_exception()
          | server_exception()
          | kms_exception()
          | invalid_parameter_exception()

  @type list_images_errors() ::
          repository_not_found_exception() | server_exception() | invalid_parameter_exception()

  @type list_tags_for_resource_errors() ::
          repository_not_found_exception() | server_exception() | invalid_parameter_exception()

  @type put_image_errors() ::
          limit_exceeded_exception()
          | repository_not_found_exception()
          | server_exception()
          | kms_exception()
          | invalid_parameter_exception()
          | referenced_images_not_found_exception()
          | image_tag_already_exists_exception()
          | layers_not_found_exception()
          | image_already_exists_exception()
          | image_digest_does_not_match_exception()

  @type put_image_scanning_configuration_errors() ::
          repository_not_found_exception()
          | server_exception()
          | validation_exception()
          | invalid_parameter_exception()

  @type put_image_tag_mutability_errors() ::
          repository_not_found_exception() | server_exception() | invalid_parameter_exception()

  @type put_lifecycle_policy_errors() ::
          repository_not_found_exception()
          | server_exception()
          | validation_exception()
          | invalid_parameter_exception()

  @type put_registry_policy_errors() ::
          server_exception() | validation_exception() | invalid_parameter_exception()

  @type put_registry_scanning_configuration_errors() ::
          server_exception() | validation_exception() | invalid_parameter_exception()

  @type put_replication_configuration_errors() ::
          server_exception() | validation_exception() | invalid_parameter_exception()

  @type set_repository_policy_errors() ::
          repository_not_found_exception() | server_exception() | invalid_parameter_exception()

  @type start_image_scan_errors() ::
          limit_exceeded_exception()
          | repository_not_found_exception()
          | server_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | unsupported_image_type_exception()
          | image_not_found_exception()

  @type start_lifecycle_policy_preview_errors() ::
          repository_not_found_exception()
          | server_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | lifecycle_policy_not_found_exception()
          | lifecycle_policy_preview_in_progress_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | repository_not_found_exception()
          | server_exception()
          | invalid_parameter_exception()
          | invalid_tag_parameter_exception()

  @type untag_resource_errors() ::
          too_many_tags_exception()
          | repository_not_found_exception()
          | server_exception()
          | invalid_parameter_exception()
          | invalid_tag_parameter_exception()

  @type update_pull_through_cache_rule_errors() ::
          unable_to_access_secret_exception()
          | server_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | secret_not_found_exception()
          | pull_through_cache_rule_not_found_exception()
          | unable_to_decrypt_secret_value_exception()

  @type update_repository_creation_template_errors() ::
          server_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | template_not_found_exception()

  @type upload_layer_part_errors() ::
          limit_exceeded_exception()
          | repository_not_found_exception()
          | server_exception()
          | kms_exception()
          | invalid_parameter_exception()
          | invalid_layer_part_exception()
          | upload_not_found_exception()

  @type validate_pull_through_cache_rule_errors() ::
          server_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | pull_through_cache_rule_not_found_exception()

  def metadata do
    %{
      api_version: "2015-09-21",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.ecr",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "ECR",
      signature_version: "v4",
      signing_name: "ecr",
      target_prefix: "AmazonEC2ContainerRegistry_V20150921"
    }
  end

  @doc """
  Checks the availability of one or more image layers in a repository. When an
  image is pushed to a repository, each image layer is checked to verify if it
  has been uploaded before. If it has been uploaded, then the image layer is
  skipped.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20BatchCheckLayerAvailability&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:batch_check_layer_availability_request`)
    %{
      optional("registryId") => String.t(),
      required("layerDigests") => list(String.t()()),
      required("repositoryName") => String.t()
    }
  """

  @spec batch_check_layer_availability(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, batch_check_layer_availability_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_check_layer_availability_errors()}

  def batch_check_layer_availability(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchCheckLayerAvailability", input, options)
  end

  @doc """
  Deletes a list of specified images within a repository. Images are specified
  with either an `imageTag` or `imageDigest`. You can remove a tag from an image
  by specifying the image's tag in your request. When you remove the last tag
  from an image, the image is deleted from your repository.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20BatchDeleteImage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:batch_delete_image_request`)
    %{
      optional("registryId") => String.t(),
      required("imageIds") => list(image_identifier()()),
      required("repositoryName") => String.t()
    }
  """

  @spec batch_delete_image(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, batch_delete_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_image_errors()}

  def batch_delete_image(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchDeleteImage", input, options)
  end

  @doc """
  Gets detailed information for an image. Images are specified with either an
  `imageTag` or `imageDigest`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20BatchGetImage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:batch_get_image_request`)
    %{
      optional("acceptedMediaTypes") => list(String.t()()),
      optional("registryId") => String.t(),
      required("imageIds") => list(image_identifier()()),
      required("repositoryName") => String.t()
    }
  """

  @spec batch_get_image(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, batch_get_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_image_errors()}

  def batch_get_image(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetImage", input, options)
  end

  @doc """
  Gets the scanning configuration for one or more repositories.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20BatchGetRepositoryScanningConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:batch_get_repository_scanning_configuration_request`)
    %{
      required("repositoryNames") => list(String.t()())
    }
  """

  @spec batch_get_repository_scanning_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, batch_get_repository_scanning_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_repository_scanning_configuration_errors()}

  def batch_get_repository_scanning_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetRepositoryScanningConfiguration", input, options)
  end

  @doc """
  Informs Amazon ECR that the image layer upload has completed for a specified
  registry, repository name, and upload ID. You can optionally provide a
  `sha256` digest of the image layer for data validation purposes. When an image
  is pushed, the CompleteLayerUpload API is called once per each new image layer
  to verify that the upload has completed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20CompleteLayerUpload&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:complete_layer_upload_request`)
    %{
      optional("registryId") => String.t(),
      required("layerDigests") => list(String.t()()),
      required("repositoryName") => String.t(),
      required("uploadId") => String.t()
    }
  """

  @spec complete_layer_upload(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, complete_layer_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, complete_layer_upload_errors()}

  def complete_layer_upload(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CompleteLayerUpload", input, options)
  end

  @doc """
  Creates a pull through cache rule. A pull through cache rule provides a way to
  cache images from an upstream registry source in your Amazon ECR private
  registry. For more information, see [Using pull through cache
  rules](https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache.html)
  in the *Amazon Elastic Container Registry User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20CreatePullThroughCacheRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_pull_through_cache_rule_request`)
    %{
      optional("credentialArn") => String.t(),
      optional("registryId") => String.t(),
      optional("upstreamRegistry") => list(any()),
      required("ecrRepositoryPrefix") => String.t(),
      required("upstreamRegistryUrl") => String.t()
    }
  """

  @spec create_pull_through_cache_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_pull_through_cache_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_pull_through_cache_rule_errors()}

  def create_pull_through_cache_rule(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePullThroughCacheRule", input, options)
  end

  @doc """
  Creates a repository. For more information, see [Amazon ECR
  repositories](https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html)
  in the *Amazon Elastic Container Registry User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20CreateRepository&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_repository_request`)
    %{
      optional("encryptionConfiguration") => encryption_configuration(),
      optional("imageScanningConfiguration") => image_scanning_configuration(),
      optional("imageTagMutability") => list(any()),
      optional("registryId") => String.t(),
      optional("tags") => list(tag()()),
      required("repositoryName") => String.t()
    }
  """

  @spec create_repository(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_repository_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_repository_errors()}

  def create_repository(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRepository", input, options)
  end

  @doc """
  Creates a repository creation template. This template is used to define the
  settings for repositories created by Amazon ECR on your behalf. For example,
  repositories created through pull through cache actions. For more information,
  see [Private repository creation
  templates](https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-creation-templates.html)
  in the *Amazon Elastic Container Registry User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20CreateRepositoryCreationTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_repository_creation_template_request`)
    %{
      optional("customRoleArn") => String.t(),
      optional("description") => String.t(),
      optional("encryptionConfiguration") => encryption_configuration_for_repository_creation_template(),
      optional("imageTagMutability") => list(any()),
      optional("lifecyclePolicy") => String.t(),
      optional("repositoryPolicy") => String.t(),
      optional("resourceTags") => list(tag()()),
      required("appliedFor") => list(list(any())()),
      required("prefix") => String.t()
    }
  """

  @spec create_repository_creation_template(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_repository_creation_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_repository_creation_template_errors()}

  def create_repository_creation_template(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRepositoryCreationTemplate", input, options)
  end

  @doc """
  Deletes the lifecycle policy associated with the specified repository.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20DeleteLifecyclePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_lifecycle_policy_request`)
    %{
      optional("registryId") => String.t(),
      required("repositoryName") => String.t()
    }
  """

  @spec delete_lifecycle_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_lifecycle_policy_errors()}

  def delete_lifecycle_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteLifecyclePolicy", input, options)
  end

  @doc """
  Deletes a pull through cache rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20DeletePullThroughCacheRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_pull_through_cache_rule_request`)
    %{
      optional("registryId") => String.t(),
      required("ecrRepositoryPrefix") => String.t()
    }
  """

  @spec delete_pull_through_cache_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_pull_through_cache_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_pull_through_cache_rule_errors()}

  def delete_pull_through_cache_rule(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePullThroughCacheRule", input, options)
  end

  @doc """
  Deletes the registry permissions policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20DeleteRegistryPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_registry_policy_request`)
    %{
      
    }
  """

  @spec delete_registry_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_registry_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_registry_policy_errors()}

  def delete_registry_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRegistryPolicy", input, options)
  end

  @doc """
  Deletes a repository. If the repository isn't empty, you must either delete the
  contents of the repository or use the `force` option to delete the repository
  and have Amazon ECR delete all of its contents on your behalf.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20DeleteRepository&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_repository_request`)
    %{
      optional("force") => boolean(),
      optional("registryId") => String.t(),
      required("repositoryName") => String.t()
    }
  """

  @spec delete_repository(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_repository_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_repository_errors()}

  def delete_repository(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRepository", input, options)
  end

  @doc """
  Deletes a repository creation template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20DeleteRepositoryCreationTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_repository_creation_template_request`)
    %{
      required("prefix") => String.t()
    }
  """

  @spec delete_repository_creation_template(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_repository_creation_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_repository_creation_template_errors()}

  def delete_repository_creation_template(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRepositoryCreationTemplate", input, options)
  end

  @doc """
  Deletes the repository policy associated with the specified repository.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20DeleteRepositoryPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_repository_policy_request`)
    %{
      optional("registryId") => String.t(),
      required("repositoryName") => String.t()
    }
  """

  @spec delete_repository_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_repository_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_repository_policy_errors()}

  def delete_repository_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRepositoryPolicy", input, options)
  end

  @doc """
  Returns the replication status for a specified image.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20DescribeImageReplicationStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_image_replication_status_request`)
    %{
      optional("registryId") => String.t(),
      required("imageId") => image_identifier(),
      required("repositoryName") => String.t()
    }
  """

  @spec describe_image_replication_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_image_replication_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_image_replication_status_errors()}

  def describe_image_replication_status(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeImageReplicationStatus", input, options)
  end

  @doc """
  Returns the scan findings for the specified image.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20DescribeImageScanFindings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_image_scan_findings_request`)
    %{
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      optional("registryId") => String.t(),
      required("imageId") => image_identifier(),
      required("repositoryName") => String.t()
    }
  """

  @spec describe_image_scan_findings(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_image_scan_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_image_scan_findings_errors()}

  def describe_image_scan_findings(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeImageScanFindings", input, options)
  end

  @doc """
  Returns metadata about the images in a repository.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20DescribeImages&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_images_request`)
    %{
      optional("filter") => describe_images_filter(),
      optional("imageIds") => list(image_identifier()()),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      optional("registryId") => String.t(),
      required("repositoryName") => String.t()
    }
  """

  @spec describe_images(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_images_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_images_errors()}

  def describe_images(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeImages", input, options)
  end

  @doc """
  Returns the pull through cache rules for a registry.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20DescribePullThroughCacheRules&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_pull_through_cache_rules_request`)
    %{
      optional("ecrRepositoryPrefixes") => list(String.t()()),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      optional("registryId") => String.t()
    }
  """

  @spec describe_pull_through_cache_rules(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_pull_through_cache_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_pull_through_cache_rules_errors()}

  def describe_pull_through_cache_rules(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribePullThroughCacheRules", input, options)
  end

  @doc """
  Describes the settings for a registry. The replication configuration for a
  repository can be created or updated with the `PutReplicationConfiguration`
  API action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20DescribeRegistry&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_registry_request`)
    %{
      
    }
  """

  @spec describe_registry(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_registry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_registry_errors()}

  def describe_registry(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRegistry", input, options)
  end

  @doc """
  Describes image repositories in a registry.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20DescribeRepositories&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_repositories_request`)
    %{
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      optional("registryId") => String.t(),
      optional("repositoryNames") => list(String.t()())
    }
  """

  @spec describe_repositories(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_repositories_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_repositories_errors()}

  def describe_repositories(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRepositories", input, options)
  end

  @doc """
  Returns details about the repository creation templates in a registry. The
  `prefixes` request parameter can be used to return the details for a specific
  repository creation template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20DescribeRepositoryCreationTemplates&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_repository_creation_templates_request`)
    %{
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      optional("prefixes") => list(String.t()())
    }
  """

  @spec describe_repository_creation_templates(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_repository_creation_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_repository_creation_templates_errors()}

  def describe_repository_creation_templates(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRepositoryCreationTemplates", input, options)
  end

  @doc """
  Retrieves an authorization token. An authorization token represents your IAM
  authentication credentials and can be used to access any Amazon ECR registry
  that your IAM principal has access to. The authorization token is valid for 12
  hours.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20GetAuthorizationToken&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_authorization_token_request`)
    %{
      optional("registryIds") => list(String.t()())
    }
  """

  @spec get_authorization_token(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_authorization_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_authorization_token_errors()}

  def get_authorization_token(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAuthorizationToken", input, options)
  end

  @doc """
  Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer.
  You can only get URLs for image layers that are referenced in an image. When
  an image is pulled, the GetDownloadUrlForLayer API is called once per image
  layer that is not already cached.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20GetDownloadUrlForLayer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_download_url_for_layer_request`)
    %{
      optional("registryId") => String.t(),
      required("layerDigest") => String.t(),
      required("repositoryName") => String.t()
    }
  """

  @spec get_download_url_for_layer(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_download_url_for_layer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_download_url_for_layer_errors()}

  def get_download_url_for_layer(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDownloadUrlForLayer", input, options)
  end

  @doc """
  Retrieves the lifecycle policy for the specified repository.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20GetLifecyclePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_lifecycle_policy_request`)
    %{
      optional("registryId") => String.t(),
      required("repositoryName") => String.t()
    }
  """

  @spec get_lifecycle_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_lifecycle_policy_errors()}

  def get_lifecycle_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetLifecyclePolicy", input, options)
  end

  @doc """
  Retrieves the results of the lifecycle policy preview request for the specified
  repository.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20GetLifecyclePolicyPreview&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_lifecycle_policy_preview_request`)
    %{
      optional("filter") => lifecycle_policy_preview_filter(),
      optional("imageIds") => list(image_identifier()()),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      optional("registryId") => String.t(),
      required("repositoryName") => String.t()
    }
  """

  @spec get_lifecycle_policy_preview(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_lifecycle_policy_preview_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_lifecycle_policy_preview_errors()}

  def get_lifecycle_policy_preview(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetLifecyclePolicyPreview", input, options)
  end

  @doc """
  Retrieves the permissions policy for a registry.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20GetRegistryPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_registry_policy_request`)
    %{
      
    }
  """

  @spec get_registry_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_registry_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_registry_policy_errors()}

  def get_registry_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRegistryPolicy", input, options)
  end

  @doc """
  Retrieves the scanning configuration for a registry.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20GetRegistryScanningConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_registry_scanning_configuration_request`)
    %{
      
    }
  """

  @spec get_registry_scanning_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_registry_scanning_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_registry_scanning_configuration_errors()}

  def get_registry_scanning_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRegistryScanningConfiguration", input, options)
  end

  @doc """
  Retrieves the repository policy for the specified repository.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20GetRepositoryPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_repository_policy_request`)
    %{
      optional("registryId") => String.t(),
      required("repositoryName") => String.t()
    }
  """

  @spec get_repository_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_repository_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_repository_policy_errors()}

  def get_repository_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRepositoryPolicy", input, options)
  end

  @doc """
  Notifies Amazon ECR that you intend to upload an image layer. When an image is
  pushed, the InitiateLayerUpload API is called once per image layer that has
  not already been uploaded. Whether or not an image layer has been uploaded is
  determined by the BatchCheckLayerAvailability API action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20InitiateLayerUpload&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:initiate_layer_upload_request`)
    %{
      optional("registryId") => String.t(),
      required("repositoryName") => String.t()
    }
  """

  @spec initiate_layer_upload(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, initiate_layer_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, initiate_layer_upload_errors()}

  def initiate_layer_upload(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "InitiateLayerUpload", input, options)
  end

  @doc """
  Lists all the image IDs for the specified repository.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20ListImages&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_images_request`)
    %{
      optional("filter") => list_images_filter(),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      optional("registryId") => String.t(),
      required("repositoryName") => String.t()
    }
  """

  @spec list_images(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_images_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_images_errors()}

  def list_images(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListImages", input, options)
  end

  @doc """
  List the tags for an Amazon ECR resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_request`)
    %{
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
  Creates or updates the image manifest and tags associated with an image. When an
  image is pushed and all new image layers have been uploaded, the PutImage API
  is called once to create or update the image manifest and the tags associated
  with the image.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20PutImage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_image_request`)
    %{
      optional("imageDigest") => String.t(),
      optional("imageManifestMediaType") => String.t(),
      optional("imageTag") => String.t(),
      optional("registryId") => String.t(),
      required("imageManifest") => String.t(),
      required("repositoryName") => String.t()
    }
  """

  @spec put_image(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_image_errors()}

  def put_image(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutImage", input, options)
  end

  @doc """
  The `PutImageScanningConfiguration` API is being deprecated, in favor of
  specifying the image scanning configuration at the registry level. For more
  information, see `PutRegistryScanningConfiguration`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20PutImageScanningConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_image_scanning_configuration_request`)
    %{
      optional("registryId") => String.t(),
      required("imageScanningConfiguration") => image_scanning_configuration(),
      required("repositoryName") => String.t()
    }
  """

  @spec put_image_scanning_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_image_scanning_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_image_scanning_configuration_errors()}

  def put_image_scanning_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutImageScanningConfiguration", input, options)
  end

  @doc """
  Updates the image tag mutability settings for the specified repository. For more
  information, see [Image tag
  mutability](https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-tag-mutability.html)
  in the *Amazon Elastic Container Registry User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20PutImageTagMutability&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_image_tag_mutability_request`)
    %{
      optional("registryId") => String.t(),
      required("imageTagMutability") => list(any()),
      required("repositoryName") => String.t()
    }
  """

  @spec put_image_tag_mutability(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_image_tag_mutability_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_image_tag_mutability_errors()}

  def put_image_tag_mutability(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutImageTagMutability", input, options)
  end

  @doc """
  Creates or updates the lifecycle policy for the specified repository. For more
  information, see [Lifecycle policy
  template](https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20PutLifecyclePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_lifecycle_policy_request`)
    %{
      optional("registryId") => String.t(),
      required("lifecyclePolicyText") => String.t(),
      required("repositoryName") => String.t()
    }
  """

  @spec put_lifecycle_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_lifecycle_policy_errors()}

  def put_lifecycle_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutLifecyclePolicy", input, options)
  end

  @doc """
  Creates or updates the permissions policy for your registry.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20PutRegistryPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_registry_policy_request`)
    %{
      required("policyText") => String.t()
    }
  """

  @spec put_registry_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_registry_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_registry_policy_errors()}

  def put_registry_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutRegistryPolicy", input, options)
  end

  @doc """
  Creates or updates the scanning configuration for your private registry.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20PutRegistryScanningConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_registry_scanning_configuration_request`)
    %{
      optional("rules") => list(registry_scanning_rule()()),
      optional("scanType") => list(any())
    }
  """

  @spec put_registry_scanning_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_registry_scanning_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_registry_scanning_configuration_errors()}

  def put_registry_scanning_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutRegistryScanningConfiguration", input, options)
  end

  @doc """
  Creates or updates the replication configuration for a registry. The existing
  replication configuration for a repository can be retrieved with the
  `DescribeRegistry` API action. The first time the PutReplicationConfiguration
  API is called, a service-linked IAM role is created in your account for the
  replication process. For more information, see [Using service-linked roles for
  Amazon
  ECR](https://docs.aws.amazon.com/AmazonECR/latest/userguide/using-service-linked-roles.html)
  in the *Amazon Elastic Container Registry User Guide*. For more information on
  the custom role for replication, see [Creating an IAM role for
  replication](https://docs.aws.amazon.com/AmazonECR/latest/userguide/replication-creation-templates.html#roles-creatingrole-user-console).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20PutReplicationConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_replication_configuration_request`)
    %{
      required("replicationConfiguration") => replication_configuration()
    }
  """

  @spec put_replication_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_replication_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_replication_configuration_errors()}

  def put_replication_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutReplicationConfiguration", input, options)
  end

  @doc """
  Applies a repository policy to the specified repository to control access
  permissions. For more information, see [Amazon ECR Repository
  policies](https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policies.html)
  in the *Amazon Elastic Container Registry User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20SetRepositoryPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_repository_policy_request`)
    %{
      optional("force") => boolean(),
      optional("registryId") => String.t(),
      required("policyText") => String.t(),
      required("repositoryName") => String.t()
    }
  """

  @spec set_repository_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_repository_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_repository_policy_errors()}

  def set_repository_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetRepositoryPolicy", input, options)
  end

  @doc """
  Starts an image vulnerability scan. An image scan can only be started once per
  24 hours on an individual image. This limit includes if an image was scanned
  on initial push. For more information, see [Image
  scanning](https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html)
  in the *Amazon Elastic Container Registry User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20StartImageScan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_image_scan_request`)
    %{
      optional("registryId") => String.t(),
      required("imageId") => image_identifier(),
      required("repositoryName") => String.t()
    }
  """

  @spec start_image_scan(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_image_scan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_image_scan_errors()}

  def start_image_scan(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartImageScan", input, options)
  end

  @doc """
  Starts a preview of a lifecycle policy for the specified repository. This allows
  you to see the results before associating the lifecycle policy with the
  repository.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20StartLifecyclePolicyPreview&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_lifecycle_policy_preview_request`)
    %{
      optional("lifecyclePolicyText") => String.t(),
      optional("registryId") => String.t(),
      required("repositoryName") => String.t()
    }
  """

  @spec start_lifecycle_policy_preview(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_lifecycle_policy_preview_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_lifecycle_policy_preview_errors()}

  def start_lifecycle_policy_preview(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartLifecyclePolicyPreview", input, options)
  end

  @doc """
  Adds specified tags to a resource with the specified ARN. Existing tags on a
  resource are not changed if they are not specified in the request parameters.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20TagResource&this_doc_guide=API%2520Reference)

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
  Deletes specified tags from a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20UntagResource&this_doc_guide=API%2520Reference)

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
  Updates an existing pull through cache rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20UpdatePullThroughCacheRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_pull_through_cache_rule_request`)
    %{
      optional("registryId") => String.t(),
      required("credentialArn") => String.t(),
      required("ecrRepositoryPrefix") => String.t()
    }
  """

  @spec update_pull_through_cache_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_pull_through_cache_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_pull_through_cache_rule_errors()}

  def update_pull_through_cache_rule(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePullThroughCacheRule", input, options)
  end

  @doc """
  Updates an existing repository creation template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20UpdateRepositoryCreationTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_repository_creation_template_request`)
    %{
      optional("appliedFor") => list(list(any())()),
      optional("customRoleArn") => String.t(),
      optional("description") => String.t(),
      optional("encryptionConfiguration") => encryption_configuration_for_repository_creation_template(),
      optional("imageTagMutability") => list(any()),
      optional("lifecyclePolicy") => String.t(),
      optional("repositoryPolicy") => String.t(),
      optional("resourceTags") => list(tag()()),
      required("prefix") => String.t()
    }
  """

  @spec update_repository_creation_template(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_repository_creation_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_repository_creation_template_errors()}

  def update_repository_creation_template(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRepositoryCreationTemplate", input, options)
  end

  @doc """
  Uploads an image layer part to Amazon ECR. When an image is pushed, each new
  image layer is uploaded in parts. The maximum size of each image layer part
  can be 20971520 bytes (or about 20MB). The UploadLayerPart API is called once
  per each new image layer part.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20UploadLayerPart&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:upload_layer_part_request`)
    %{
      optional("registryId") => String.t(),
      required("layerPartBlob") => binary(),
      required("partFirstByte") => float(),
      required("partLastByte") => float(),
      required("repositoryName") => String.t(),
      required("uploadId") => String.t()
    }
  """

  @spec upload_layer_part(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, upload_layer_part_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, upload_layer_part_errors()}

  def upload_layer_part(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UploadLayerPart", input, options)
  end

  @doc """
  Validates an existing pull through cache rule for an upstream registry that
  requires authentication. This will retrieve the contents of the Amazon Web
  Services Secrets Manager secret, verify the syntax, and then validate that
  authentication to the upstream registry is successful.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ecr%20ValidatePullThroughCacheRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:validate_pull_through_cache_rule_request`)
    %{
      optional("registryId") => String.t(),
      required("ecrRepositoryPrefix") => String.t()
    }
  """

  @spec validate_pull_through_cache_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, validate_pull_through_cache_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, validate_pull_through_cache_rule_errors()}

  def validate_pull_through_cache_rule(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ValidatePullThroughCacheRule", input, options)
  end
end
