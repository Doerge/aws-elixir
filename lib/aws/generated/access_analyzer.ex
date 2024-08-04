# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AccessAnalyzer do
  @moduledoc """
  Identity and Access Management Access Analyzer helps you to set, verify, and
  refine your IAM policies by providing a suite of capabilities. Its features
  include findings for external and unused access, basic and custom policy
  checks for validating policies, and policy generation to generate fine-grained
  policies. To start using IAM Access Analyzer to identify external or unused
  access, you first need to create an analyzer. **External access analyzers**
  help identify potential risks of accessing resources by enabling you to
  identify any resource policies that grant access to an external principal. It
  does this by using logic-based reasoning to analyze resource-based policies in
  your Amazon Web Services environment. An external principal can be another
  Amazon Web Services account, a root user, an IAM user or role, a federated
  user, an Amazon Web Services service, or an anonymous user. You can also use
  IAM Access Analyzer to preview public and cross-account access to your
  resources before deploying permissions changes.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      trail_properties() :: %{
        "allRegions" => [boolean()],
        "cloudTrailArn" => String.t(),
        "regions" => list([String.t()]())
      }
      
  """
  @type trail_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_trail_details() :: %{
        "accessRole" => String.t(),
        "endTime" => non_neg_integer(),
        "startTime" => non_neg_integer(),
        "trails" => list(trail()())
      }
      
  """
  @type cloud_trail_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        "tags" => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reason_summary() :: %{
        "description" => [String.t()],
        "statementId" => [String.t()],
        "statementIndex" => [integer()]
      }
      
  """
  @type reason_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      status_reason() :: %{
        "code" => String.t()
      }
      
  """
  @type status_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_configuration() :: %{
        "vpcId" => String.t()
      }
      
  """
  @type vpc_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      check_no_public_access_response() :: %{
        "message" => [String.t()],
        "reasons" => list(reason_summary()()),
        "result" => String.t()
      }
      
  """
  @type check_no_public_access_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_archive_rule_request() :: %{
        "clientToken" => [String.t()]
      }
      
  """
  @type delete_archive_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_access_previews_response() :: %{
        optional("nextToken") => String.t(),
        required("accessPreviews") => list(access_preview_summary()())
      }
      
  """
  @type list_access_previews_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unused_iam_user_access_key_details() :: %{
        "accessKeyId" => [String.t()],
        "lastAccessed" => non_neg_integer()
      }
      
  """
  @type unused_iam_user_access_key_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_grant_constraints() :: %{
        "encryptionContextEquals" => map(),
        "encryptionContextSubset" => map()
      }
      
  """
  @type kms_grant_constraints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generated_policy_properties() :: %{
        "cloudTrailProperties" => cloud_trail_properties(),
        "isComplete" => [boolean()],
        "principalArn" => String.t()
      }
      
  """
  @type generated_policy_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      finding_summary() :: %{
        "action" => list([String.t()]()),
        "analyzedAt" => non_neg_integer(),
        "condition" => map(),
        "createdAt" => non_neg_integer(),
        "error" => [String.t()],
        "id" => String.t(),
        "isPublic" => [boolean()],
        "principal" => map(),
        "resource" => [String.t()],
        "resourceOwnerAccount" => [String.t()],
        "resourceType" => String.t(),
        "sources" => list(finding_source()()),
        "status" => String.t(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type finding_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_access_previews_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        required("analyzerArn") => String.t()
      }
      
  """
  @type list_access_previews_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sns_topic_configuration() :: %{
        "topicPolicy" => String.t()
      }
      
  """
  @type sns_topic_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unused_access_configuration() :: %{
        "unusedAccessAge" => [integer()]
      }
      
  """
  @type unused_access_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_bucket_acl_grant_configuration() :: %{
        "grantee" => list(),
        "permission" => String.t()
      }
      
  """
  @type s3_bucket_acl_grant_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_finding_recommendation_response() :: %{
        "completedAt" => non_neg_integer(),
        "error" => recommendation_error(),
        "nextToken" => String.t(),
        "recommendationType" => String.t(),
        "recommendedSteps" => list(list()()),
        "resourceArn" => String.t(),
        "startedAt" => non_neg_integer(),
        "status" => String.t()
      }
      
  """
  @type get_finding_recommendation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      analyzed_resource() :: %{
        "actions" => list([String.t()]()),
        "analyzedAt" => non_neg_integer(),
        "createdAt" => non_neg_integer(),
        "error" => [String.t()],
        "isPublic" => [boolean()],
        "resourceArn" => String.t(),
        "resourceOwnerAccount" => [String.t()],
        "resourceType" => String.t(),
        "sharedVia" => list([String.t()]()),
        "status" => String.t(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type analyzed_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_analyzer_response() :: %{
        "analyzer" => analyzer_summary()
      }
      
  """
  @type get_analyzer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_findings_response() :: %{
        "findings" => list(finding_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_findings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_analyzer_request() :: %{
        "analyzerName" => String.t(),
        "archiveRules" => list(inline_archive_rule()()),
        "clientToken" => [String.t()],
        "configuration" => list(),
        "tags" => map(),
        "type" => String.t()
      }
      
  """
  @type create_analyzer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unused_iam_user_password_details() :: %{
        "lastAccessed" => non_neg_integer()
      }
      
  """
  @type unused_iam_user_password_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unused_iam_role_details() :: %{
        "lastAccessed" => non_neg_integer()
      }
      
  """
  @type unused_iam_role_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unused_permission_details() :: %{
        "actions" => list(unused_action()()),
        "lastAccessed" => non_neg_integer(),
        "serviceNamespace" => [String.t()]
      }
      
  """
  @type unused_permission_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        "tagKeys" => list([String.t()]())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_analyzed_resource_response() :: %{
        "resource" => analyzed_resource()
      }
      
  """
  @type get_analyzed_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_finding_v2_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        required("analyzerArn") => String.t()
      }
      
  """
  @type get_finding_v2_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      check_no_new_access_request() :: %{
        required("existingPolicyDocument") => String.t(),
        required("newPolicyDocument") => String.t(),
        required("policyType") => String.t()
      }
      
  """
  @type check_no_new_access_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      position() :: %{
        "column" => [integer()],
        "line" => [integer()],
        "offset" => [integer()]
      }
      
  """
  @type position() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_analyzer_request() :: %{
        "clientToken" => [String.t()]
      }
      
  """
  @type delete_analyzer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_analyzers_response() :: %{
        "analyzers" => list(analyzer_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_analyzers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      check_access_not_granted_response() :: %{
        "message" => [String.t()],
        "reasons" => list(reason_summary()()),
        "result" => String.t()
      }
      
  """
  @type check_access_not_granted_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_policy_generation_response() :: %{}
      
  """
  @type cancel_policy_generation_response() :: %{}

  @typedoc """

  ## Example:
      
      list_findings_v2_request() :: %{
        optional("filter") => map(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("sort") => sort_criteria(),
        required("analyzerArn") => String.t()
      }
      
  """
  @type list_findings_v2_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_analyzed_resources_request() :: %{
        "analyzerArn" => String.t(),
        "maxResults" => [integer()],
        "nextToken" => String.t(),
        "resourceType" => String.t()
      }
      
  """
  @type list_analyzed_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_preview_status_reason() :: %{
        "code" => String.t()
      }
      
  """
  @type access_preview_status_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_archive_rules_request() :: %{
        "maxResults" => [integer()],
        "nextToken" => String.t()
      }
      
  """
  @type list_archive_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      span() :: %{
        "end" => position(),
        "start" => position()
      }
      
  """
  @type span() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      finding_source() :: %{
        "detail" => finding_source_detail(),
        "type" => String.t()
      }
      
  """
  @type finding_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_analyzed_resources_response() :: %{
        "analyzedResources" => list(analyzed_resource_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_analyzed_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_preview_finding() :: %{
        "action" => list([String.t()]()),
        "changeType" => String.t(),
        "condition" => map(),
        "createdAt" => non_neg_integer(),
        "error" => [String.t()],
        "existingFindingId" => String.t(),
        "existingFindingStatus" => String.t(),
        "id" => String.t(),
        "isPublic" => [boolean()],
        "principal" => map(),
        "resource" => [String.t()],
        "resourceOwnerAccount" => [String.t()],
        "resourceType" => String.t(),
        "sources" => list(finding_source()()),
        "status" => String.t()
      }
      
  """
  @type access_preview_finding() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      archive_rule_summary() :: %{
        "createdAt" => non_neg_integer(),
        "filter" => map(),
        "ruleName" => String.t(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type archive_rule_summary() :: %{String.t() => any()}

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
      
      create_access_preview_request() :: %{
        optional("clientToken") => [String.t()],
        required("analyzerArn") => String.t(),
        required("configurations") => map()
      }
      
  """
  @type create_access_preview_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_generation_details() :: %{
        "principalArn" => String.t()
      }
      
  """
  @type policy_generation_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ecr_repository_configuration() :: %{
        "repositoryPolicy" => String.t()
      }
      
  """
  @type ecr_repository_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_generated_policy_response() :: %{
        required("generatedPolicyResult") => generated_policy_result(),
        required("jobDetails") => job_details()
      }
      
  """
  @type get_generated_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      check_no_public_access_request() :: %{
        required("policyDocument") => String.t(),
        required("resourceType") => String.t()
      }
      
  """
  @type check_no_public_access_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validate_policy_finding() :: %{
        "findingDetails" => [String.t()],
        "findingType" => String.t(),
        "issueCode" => String.t(),
        "learnMoreLink" => String.t(),
        "locations" => list(location()())
      }
      
  """
  @type validate_policy_finding() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_archive_rules_response() :: %{
        "archiveRules" => list(archive_rule_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_archive_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_generated_policy_request() :: %{
        optional("includeResourcePlaceholders") => [boolean()],
        optional("includeServiceLevelTemplate") => [boolean()]
      }
      
  """
  @type get_generated_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      analyzed_resource_summary() :: %{
        "resourceArn" => String.t(),
        "resourceOwnerAccount" => [String.t()],
        "resourceType" => String.t()
      }
      
  """
  @type analyzed_resource_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      finding() :: %{
        "action" => list([String.t()]()),
        "analyzedAt" => non_neg_integer(),
        "condition" => map(),
        "createdAt" => non_neg_integer(),
        "error" => [String.t()],
        "id" => String.t(),
        "isPublic" => [boolean()],
        "principal" => map(),
        "resource" => [String.t()],
        "resourceOwnerAccount" => [String.t()],
        "resourceType" => String.t(),
        "sources" => list(finding_source()()),
        "status" => String.t(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type finding() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_grant_configuration() :: %{
        "constraints" => kms_grant_constraints(),
        "granteePrincipal" => String.t(),
        "issuingAccount" => String.t(),
        "operations" => list(String.t()()),
        "retiringPrincipal" => String.t()
      }
      
  """
  @type kms_grant_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      check_no_new_access_response() :: %{
        "message" => [String.t()],
        "reasons" => list(reason_summary()()),
        "result" => String.t()
      }
      
  """
  @type check_no_new_access_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_findings_request() :: %{
        "analyzerArn" => String.t(),
        "filter" => map(),
        "maxResults" => [integer()],
        "nextToken" => String.t(),
        "sort" => sort_criteria()
      }
      
  """
  @type list_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policy_generations_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("principalArn") => String.t()
      }
      
  """
  @type list_policy_generations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generated_policy_result() :: %{
        "generatedPolicies" => list(generated_policy()()),
        "properties" => generated_policy_properties()
      }
      
  """
  @type generated_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      iam_role_configuration() :: %{
        "trustPolicy" => String.t()
      }
      
  """
  @type iam_role_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => [String.t()],
        "name" => [String.t()]
      }
      
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_error() :: %{
        "code" => [String.t()],
        "message" => [String.t()]
      }
      
  """
  @type recommendation_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      location() :: %{
        "path" => list(list()()),
        "span" => span()
      }
      
  """
  @type location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_generation() :: %{
        "completedOn" => non_neg_integer(),
        "jobId" => String.t(),
        "principalArn" => String.t(),
        "startedOn" => non_neg_integer(),
        "status" => String.t()
      }
      
  """
  @type policy_generation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      apply_archive_rule_request() :: %{
        "analyzerArn" => String.t(),
        "clientToken" => [String.t()],
        "ruleName" => String.t()
      }
      
  """
  @type apply_archive_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policy_generations_response() :: %{
        optional("nextToken") => String.t(),
        required("policyGenerations") => list(policy_generation()())
      }
      
  """
  @type list_policy_generations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_finding_recommendation_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        required("analyzerArn") => String.t()
      }
      
  """
  @type get_finding_recommendation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_finding_recommendation_request() :: %{
        required("analyzerArn") => String.t()
      }
      
  """
  @type generate_finding_recommendation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_key_configuration() :: %{
        "grants" => list(kms_grant_configuration()()),
        "keyPolicies" => map()
      }
      
  """
  @type kms_key_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_details() :: %{
        "completedOn" => non_neg_integer(),
        "jobError" => job_error(),
        "jobId" => String.t(),
        "startedOn" => non_neg_integer(),
        "status" => String.t()
      }
      
  """
  @type job_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inline_archive_rule() :: %{
        "filter" => map(),
        "ruleName" => String.t()
      }
      
  """
  @type inline_archive_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ebs_snapshot_configuration() :: %{
        "groups" => list(String.t()()),
        "kmsKeyId" => String.t(),
        "userIds" => list(String.t()())
      }
      
  """
  @type ebs_snapshot_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dynamodb_table_configuration() :: %{
        "tablePolicy" => String.t()
      }
      
  """
  @type dynamodb_table_configuration() :: %{String.t() => any()}

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
      
      efs_file_system_configuration() :: %{
        "fileSystemPolicy" => String.t()
      }
      
  """
  @type efs_file_system_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_finding_request() :: %{
        "analyzerArn" => String.t()
      }
      
  """
  @type get_finding_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validate_policy_response() :: %{
        optional("nextToken") => String.t(),
        required("findings") => list(validate_policy_finding()())
      }
      
  """
  @type validate_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_express_directory_bucket_configuration() :: %{
        "bucketPolicy" => String.t()
      }
      
  """
  @type s3_express_directory_bucket_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_access_preview_response() :: %{
        required("id") => String.t()
      }
      
  """
  @type create_access_preview_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_policy_generation_request() :: %{
        optional("clientToken") => [String.t()],
        optional("cloudTrailDetails") => cloud_trail_details(),
        required("policyGenerationDetails") => policy_generation_details()
      }
      
  """
  @type start_policy_generation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      external_access_details() :: %{
        "action" => list([String.t()]()),
        "condition" => map(),
        "isPublic" => [boolean()],
        "principal" => map(),
        "sources" => list(finding_source()())
      }
      
  """
  @type external_access_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_finding_response() :: %{
        "finding" => finding()
      }
      
  """
  @type get_finding_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sort_criteria() :: %{
        "attributeName" => [String.t()],
        "orderBy" => String.t()
      }
      
  """
  @type sort_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_trail_properties() :: %{
        "endTime" => non_neg_integer(),
        "startTime" => non_neg_integer(),
        "trailProperties" => list(trail_properties()())
      }
      
  """
  @type cloud_trail_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_access_preview_findings_request() :: %{
        optional("filter") => map(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        required("analyzerArn") => String.t()
      }
      
  """
  @type list_access_preview_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unprocessable_entity_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type unprocessable_entity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      substring() :: %{
        "length" => [integer()],
        "start" => [integer()]
      }
      
  """
  @type substring() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_analyzer_response() :: %{
        "arn" => String.t()
      }
      
  """
  @type create_analyzer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unused_permissions_recommended_step() :: %{
        "existingPolicyId" => [String.t()],
        "policyUpdatedAt" => non_neg_integer(),
        "recommendedAction" => String.t(),
        "recommendedPolicy" => [String.t()]
      }
      
  """
  @type unused_permissions_recommended_step() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "message" => [String.t()]
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
      
      validate_policy_request() :: %{
        optional("locale") => String.t(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("validatePolicyResourceType") => String.t(),
        required("policyDocument") => String.t(),
        required("policyType") => String.t()
      }
      
  """
  @type validate_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_analyzer_request() :: %{}
      
  """
  @type get_analyzer_request() :: %{}

  @typedoc """

  ## Example:
      
      get_analyzed_resource_request() :: %{
        "analyzerArn" => String.t(),
        "resourceArn" => String.t()
      }
      
  """
  @type get_analyzed_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_bucket_configuration() :: %{
        "accessPoints" => map(),
        "bucketAclGrants" => list(s3_bucket_acl_grant_configuration()()),
        "bucketPolicy" => String.t(),
        "bucketPublicAccessBlock" => s3_public_access_block_configuration()
      }
      
  """
  @type s3_bucket_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => [String.t()],
        "reason" => String.t()
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
      
      update_findings_request() :: %{
        "analyzerArn" => String.t(),
        "clientToken" => [String.t()],
        "ids" => list(String.t()()),
        "resourceArn" => String.t(),
        "status" => String.t()
      }
      
  """
  @type update_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_access_preview_request() :: %{
        required("analyzerArn") => String.t()
      }
      
  """
  @type get_access_preview_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => [integer()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      finding_source_detail() :: %{
        "accessPointAccount" => [String.t()],
        "accessPointArn" => [String.t()]
      }
      
  """
  @type finding_source_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access() :: %{
        "actions" => list(String.t()()),
        "resources" => list(String.t()())
      }
      
  """
  @type access() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_db_snapshot_configuration() :: %{
        "attributes" => map(),
        "kmsKeyId" => String.t()
      }
      
  """
  @type rds_db_snapshot_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_finding_v2_response() :: %{
        "analyzedAt" => non_neg_integer(),
        "createdAt" => non_neg_integer(),
        "error" => [String.t()],
        "findingDetails" => list(list()()),
        "findingType" => String.t(),
        "id" => String.t(),
        "nextToken" => String.t(),
        "resource" => [String.t()],
        "resourceOwnerAccount" => [String.t()],
        "resourceType" => String.t(),
        "status" => String.t(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type get_finding_v2_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      finding_summary_v2() :: %{
        "analyzedAt" => non_neg_integer(),
        "createdAt" => non_neg_integer(),
        "error" => [String.t()],
        "findingType" => String.t(),
        "id" => String.t(),
        "resource" => [String.t()],
        "resourceOwnerAccount" => [String.t()],
        "resourceType" => String.t(),
        "status" => String.t(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type finding_summary_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_policy_generation_request() :: %{}
      
  """
  @type cancel_policy_generation_request() :: %{}

  @typedoc """

  ## Example:
      
      get_archive_rule_request() :: %{}
      
  """
  @type get_archive_rule_request() :: %{}

  @typedoc """

  ## Example:
      
      analyzer_summary() :: %{
        "arn" => String.t(),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "lastResourceAnalyzed" => [String.t()],
        "lastResourceAnalyzedAt" => non_neg_integer(),
        "name" => String.t(),
        "status" => String.t(),
        "statusReason" => status_reason(),
        "tags" => map(),
        "type" => String.t()
      }
      
  """
  @type analyzer_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trail() :: %{
        "allRegions" => [boolean()],
        "cloudTrailArn" => String.t(),
        "regions" => list([String.t()]())
      }
      
  """
  @type trail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generated_policy() :: %{
        "policy" => [String.t()]
      }
      
  """
  @type generated_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      check_access_not_granted_request() :: %{
        required("access") => list(access()()),
        required("policyDocument") => String.t(),
        required("policyType") => String.t()
      }
      
  """
  @type check_access_not_granted_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_db_cluster_snapshot_configuration() :: %{
        "attributes" => map(),
        "kmsKeyId" => String.t()
      }
      
  """
  @type rds_db_cluster_snapshot_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_preview_summary() :: %{
        "analyzerArn" => String.t(),
        "createdAt" => non_neg_integer(),
        "id" => String.t(),
        "status" => String.t(),
        "statusReason" => access_preview_status_reason()
      }
      
  """
  @type access_preview_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_analyzers_request() :: %{
        "maxResults" => [integer()],
        "nextToken" => String.t(),
        "type" => String.t()
      }
      
  """
  @type list_analyzers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_findings_v2_response() :: %{
        "findings" => list(finding_summary_v2()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_findings_v2_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_policy_generation_response() :: %{
        required("jobId") => String.t()
      }
      
  """
  @type start_policy_generation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_access_preview_response() :: %{
        required("accessPreview") => access_preview()
      }
      
  """
  @type get_access_preview_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internet_configuration() :: %{}
      
  """
  @type internet_configuration() :: %{}

  @typedoc """

  ## Example:
      
      criterion() :: %{
        "contains" => list([String.t()]()),
        "eq" => list([String.t()]()),
        "exists" => [boolean()],
        "neq" => list([String.t()]())
      }
      
  """
  @type criterion() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_archive_rule_request() :: %{
        "clientToken" => [String.t()],
        "filter" => map(),
        "ruleName" => String.t()
      }
      
  """
  @type create_archive_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_resource_scan_request() :: %{
        "analyzerArn" => String.t(),
        "resourceArn" => String.t(),
        "resourceOwnerAccount" => [String.t()]
      }
      
  """
  @type start_resource_scan_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      secrets_manager_secret_configuration() :: %{
        "kmsKeyId" => String.t(),
        "secretPolicy" => String.t()
      }
      
  """
  @type secrets_manager_secret_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_error() :: %{
        "code" => String.t(),
        "message" => [String.t()]
      }
      
  """
  @type job_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_public_access_block_configuration() :: %{
        "ignorePublicAcls" => [boolean()],
        "restrictPublicBuckets" => [boolean()]
      }
      
  """
  @type s3_public_access_block_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_preview() :: %{
        "analyzerArn" => String.t(),
        "configurations" => map(),
        "createdAt" => non_neg_integer(),
        "id" => String.t(),
        "status" => String.t(),
        "statusReason" => access_preview_status_reason()
      }
      
  """
  @type access_preview() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_archive_rule_response() :: %{
        "archiveRule" => archive_rule_summary()
      }
      
  """
  @type get_archive_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sqs_queue_configuration() :: %{
        "queuePolicy" => String.t()
      }
      
  """
  @type sqs_queue_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_access_point_configuration() :: %{
        "accessPointPolicy" => String.t(),
        "networkOrigin" => list(),
        "publicAccessBlock" => s3_public_access_block_configuration()
      }
      
  """
  @type s3_access_point_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_archive_rule_request() :: %{
        "clientToken" => [String.t()],
        "filter" => map()
      }
      
  """
  @type update_archive_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_access_preview_findings_response() :: %{
        optional("nextToken") => String.t(),
        required("findings") => list(access_preview_finding()())
      }
      
  """
  @type list_access_preview_findings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dynamodb_stream_configuration() :: %{
        "streamPolicy" => String.t()
      }
      
  """
  @type dynamodb_stream_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unused_action() :: %{
        "action" => [String.t()],
        "lastAccessed" => non_neg_integer()
      }
      
  """
  @type unused_action() :: %{String.t() => any()}

  @type apply_archive_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type cancel_policy_generation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type check_access_not_granted_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | unprocessable_entity_exception()
          | internal_server_exception()

  @type check_no_new_access_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | unprocessable_entity_exception()
          | internal_server_exception()

  @type check_no_public_access_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | unprocessable_entity_exception()
          | internal_server_exception()

  @type create_access_preview_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_analyzer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_archive_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_analyzer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_archive_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type generate_finding_recommendation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_access_preview_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_analyzed_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_analyzer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_archive_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_finding_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_finding_recommendation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_finding_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_generated_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_access_preview_findings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_access_previews_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_analyzed_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_analyzers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_archive_rules_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_findings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_findings_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_policy_generations_errors() ::
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

  @type start_policy_generation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type start_resource_scan_errors() ::
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

  @type update_archive_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_findings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type validate_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  def metadata do
    %{
      api_version: "2019-11-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "access-analyzer",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "AccessAnalyzer",
      signature_version: "v4",
      signing_name: "access-analyzer",
      target_prefix: nil
    }
  end

  @doc """
  Retroactively applies the archive rule to existing findings that meet the
  archive rule criteria.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20ApplyArchiveRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec apply_archive_rule(AWS.Client.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, apply_archive_rule_errors()}
  def apply_archive_rule(%Client{} = client, options \\ []) do
    url_path = "/archive-rule"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

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
  Cancels the requested policy generation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20CancelPolicyGeneration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:job_id` (`t:string` required) The JobId that is returned by the
  StartPolicyGeneration operation. The JobId can be used with
  GetGeneratedPolicy to retrieve the generated policies or used with
  CancelPolicyGeneration to cancel the policy generation request.
  ## Keyword parameters:
  """
  @spec cancel_policy_generation(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, cancel_policy_generation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_policy_generation_errors()}
  def cancel_policy_generation(%Client{} = client, job_id, options \\ []) do
    url_path = "/policy/generation/#{AWS.Util.encode_uri(job_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

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
  Checks whether the specified access isn't allowed by a policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20CheckAccessNotGranted&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec check_access_not_granted(AWS.Client.t(), Keyword.t()) ::
          {:ok, check_access_not_granted_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, check_access_not_granted_errors()}
  def check_access_not_granted(%Client{} = client, options \\ []) do
    url_path = "/policy/check-access-not-granted"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

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
  Checks whether new access is allowed for an updated policy when compared to the
  existing policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20CheckNoNewAccess&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec check_no_new_access(AWS.Client.t(), Keyword.t()) ::
          {:ok, check_no_new_access_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, check_no_new_access_errors()}
  def check_no_new_access(%Client{} = client, options \\ []) do
    url_path = "/policy/check-no-new-access"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

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
  Checks whether a resource policy can grant public access to the specified
  resource type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20CheckNoPublicAccess&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec check_no_public_access(AWS.Client.t(), Keyword.t()) ::
          {:ok, check_no_public_access_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, check_no_public_access_errors()}
  def check_no_public_access(%Client{} = client, options \\ []) do
    url_path = "/policy/check-no-public-access"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

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
  Creates an access preview that allows you to preview IAM Access Analyzer
  findings for your resource before deploying resource permissions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20CreateAccessPreview&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_access_preview(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_access_preview_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_access_preview_errors()}
  def create_access_preview(%Client{} = client, options \\ []) do
    url_path = "/access-preview"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

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
  Creates an analyzer for your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20CreateAnalyzer&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_analyzer(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_analyzer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_analyzer_errors()}
  def create_analyzer(%Client{} = client, options \\ []) do
    url_path = "/analyzer"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

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
  Creates an archive rule for the specified analyzer. Archive rules automatically
  archive new findings that meet the criteria you define when you create the
  rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20CreateArchiveRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:analyzer_name` (`t:string` required) The name of the created analyzer.
  ## Keyword parameters:
  """
  @spec create_archive_rule(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_archive_rule_errors()}
  def create_archive_rule(%Client{} = client, analyzer_name, options \\ []) do
    url_path = "/analyzer/#{AWS.Util.encode_uri(analyzer_name)}/archive-rule"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

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
  Deletes the specified analyzer. When you delete an analyzer, IAM Access Analyzer
  is disabled for the account or organization in the current or specific Region.
  All findings that were generated by the analyzer are deleted. You cannot undo
  this action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20DeleteAnalyzer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:analyzer_name` (`t:string` required) The name of the analyzer to delete.
  ## Keyword parameters:
  * `:client_token` (`t:string`) A client token.
  """
  @spec delete_analyzer(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_analyzer_errors()}
  def delete_analyzer(%Client{} = client, analyzer_name, options \\ []) do
    url_path = "/analyzer/#{AWS.Util.encode_uri(analyzer_name)}"

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
  Deletes the specified archive rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20DeleteArchiveRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:analyzer_name` (`t:string` required) The name of the analyzer that
  associated with the archive rule to delete.
  * `:rule_name` (`t:string` required) The name of the rule to delete.
  ## Keyword parameters:
  * `:client_token` (`t:string`) A client token.
  """
  @spec delete_archive_rule(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_archive_rule_errors()}
  def delete_archive_rule(%Client{} = client, analyzer_name, rule_name, options \\ []) do
    url_path =
      "/analyzer/#{AWS.Util.encode_uri(analyzer_name)}/archive-rule/#{AWS.Util.encode_uri(rule_name)}"

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
  Creates a recommendation for an unused permissions finding.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20GenerateFindingRecommendation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string` required) The unique ID for the finding recommendation.
  * `:analyzer_arn` (`t:string` required) The ARN of the analyzer used to generate
  the finding recommendation.
  ## Keyword parameters:
  """
  @spec generate_finding_recommendation(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, generate_finding_recommendation_errors()}
  def generate_finding_recommendation(%Client{} = client, id, analyzer_arn, options \\ [])
      when is_binary(analyzer_arn) do
    url_path = "/recommendation/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"analyzerArn", analyzer_arn}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves information about an access preview for the specified analyzer.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20GetAccessPreview&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:access_preview_id` (`t:string` required) The unique ID for the access
  preview.
  * `:analyzer_arn` (`t:string` required) The ARN of the analyzer used to generate
  the access preview.
  ## Keyword parameters:
  """
  @spec get_access_preview(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_access_preview_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_access_preview_errors()}
  def get_access_preview(%Client{} = client, access_preview_id, analyzer_arn, options \\ [])
      when is_binary(analyzer_arn) do
    url_path = "/access-preview/#{AWS.Util.encode_uri(access_preview_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"analyzerArn", analyzer_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a resource that was analyzed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20GetAnalyzedResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:analyzer_arn` (`t:string` required) The ARN of the analyzer to retrieve
  information from.
  * `:resource_arn` (`t:string` required) The ARN of the resource to retrieve
  information about.
  ## Keyword parameters:
  """
  @spec get_analyzed_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_analyzed_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_analyzed_resource_errors()}
  def get_analyzed_resource(%Client{} = client, analyzer_arn, resource_arn, options \\ [])
      when is_binary(analyzer_arn) and is_binary(resource_arn) do
    url_path = "/analyzed-resource"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"analyzerArn", analyzer_arn}, {"resourceArn", resource_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the specified analyzer.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20GetAnalyzer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:analyzer_name` (`t:string` required) The name of the analyzer retrieved.
  ## Keyword parameters:
  """
  @spec get_analyzer(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_analyzer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_analyzer_errors()}
  def get_analyzer(%Client{} = client, analyzer_name, options \\ []) do
    url_path = "/analyzer/#{AWS.Util.encode_uri(analyzer_name)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Retrieves information about an archive rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20GetArchiveRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:analyzer_name` (`t:string` required) The name of the analyzer to retrieve
  rules from.
  * `:rule_name` (`t:string` required) The name of the rule to retrieve.
  ## Keyword parameters:
  """
  @spec get_archive_rule(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_archive_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_archive_rule_errors()}
  def get_archive_rule(%Client{} = client, analyzer_name, rule_name, options \\ []) do
    url_path =
      "/analyzer/#{AWS.Util.encode_uri(analyzer_name)}/archive-rule/#{AWS.Util.encode_uri(rule_name)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
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
  Retrieves information about the specified finding. GetFinding and GetFindingV2
  both use `access-analyzer:GetFinding` in the `Action` element of an IAM policy
  statement. You must have permission to perform the
  `access-analyzer:GetFinding` action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20GetFinding&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string` required) The ID of the finding to retrieve.
  * `:analyzer_arn` (`t:string` required) The ARN of the analyzer that generated
  the finding.
  ## Keyword parameters:
  """
  @spec get_finding(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_finding_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_finding_errors()}
  def get_finding(%Client{} = client, id, analyzer_arn, options \\ [])
      when is_binary(analyzer_arn) do
    url_path = "/finding/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"analyzerArn", analyzer_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a finding recommendation for the specified analyzer.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20GetFindingRecommendation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string` required) The unique ID for the finding recommendation.
  * `:analyzer_arn` (`t:string` required) The ARN of the analyzer used to generate
  the finding recommendation.
  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of results to return in the
  response.
  * `:next_token` (`t:string`) A token used for pagination of results returned.
  """
  @spec get_finding_recommendation(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_finding_recommendation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_finding_recommendation_errors()}
  def get_finding_recommendation(%Client{} = client, id, analyzer_arn, options \\ [])
      when is_binary(analyzer_arn) do
    url_path = "/recommendation/#{AWS.Util.encode_uri(id)}"

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
    query_params = [{"analyzerArn", analyzer_arn}]

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
  Retrieves information about the specified finding. GetFinding and GetFindingV2
  both use `access-analyzer:GetFinding` in the `Action` element of an IAM policy
  statement. You must have permission to perform the
  `access-analyzer:GetFinding` action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20GetFindingV2&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string` required) The ID of the finding to retrieve.
  * `:analyzer_arn` (`t:string` required) The ARN of the analyzer that generated
  the finding.
  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of results to return in the
  response.
  * `:next_token` (`t:string`) A token used for pagination of results returned.
  """
  @spec get_finding_v2(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_finding_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_finding_v2_errors()}
  def get_finding_v2(%Client{} = client, id, analyzer_arn, options \\ [])
      when is_binary(analyzer_arn) do
    url_path = "/findingv2/#{AWS.Util.encode_uri(id)}"

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
    query_params = [{"analyzerArn", analyzer_arn}]

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
  Retrieves the policy that was generated using `StartPolicyGeneration`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20GetGeneratedPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:job_id` (`t:string` required) The JobId that is returned by the
  StartPolicyGeneration operation. The JobId can be used with
  GetGeneratedPolicy to retrieve the generated policies or used with
  CancelPolicyGeneration to cancel the policy generation request.
  ## Keyword parameters:
  * `:include_resource_placeholders` (`t:string`) The level of detail that you
  want to generate. You can specify whether to generate policies with
  placeholders for resource ARNs for actions that support resource level
  granularity in policies.
  * `:include_service_level_template` (`t:string`) The level of detail that you
  want to generate. You can specify whether to generate service-level
  policies.
  """
  @spec get_generated_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_generated_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_generated_policy_errors()}
  def get_generated_policy(%Client{} = client, job_id, options \\ []) do
    url_path = "/policy/generation/#{AWS.Util.encode_uri(job_id)}"

    # Validate optional parameters
    optional_params = [include_resource_placeholders: nil, include_service_level_template: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :include_service_level_template) do
        [{"includeServiceLevelTemplate", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :include_resource_placeholders) do
        [{"includeResourcePlaceholders", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:include_resource_placeholders, :include_service_level_template])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of access preview findings generated by the specified access
  preview.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20ListAccessPreviewFindings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:access_preview_id` (`t:string` required) The unique ID for the access
  preview.
  ## Keyword parameters:
  """
  @spec list_access_preview_findings(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_access_preview_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_access_preview_findings_errors()}
  def list_access_preview_findings(%Client{} = client, access_preview_id, options \\ []) do
    url_path = "/access-preview/#{AWS.Util.encode_uri(access_preview_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

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
  Retrieves a list of access previews for the specified analyzer.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20ListAccessPreviews&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:analyzer_arn` (`t:string` required) The ARN of the analyzer used to generate
  the access preview.
  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of results to return in the
  response.
  * `:next_token` (`t:string`) A token used for pagination of results returned.
  """
  @spec list_access_previews(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_access_previews_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_access_previews_errors()}
  def list_access_previews(%Client{} = client, analyzer_arn, options \\ [])
      when is_binary(analyzer_arn) do
    url_path = "/access-preview"

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
    query_params = [{"analyzerArn", analyzer_arn}]

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
  Retrieves a list of resources of the specified type that have been analyzed by
  the specified external access analyzer. This action is not supported for
  unused access analyzers.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20ListAnalyzedResources&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_analyzed_resources(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_analyzed_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_analyzed_resources_errors()}
  def list_analyzed_resources(%Client{} = client, options \\ []) do
    url_path = "/analyzed-resource"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

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
  Retrieves a list of analyzers.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20ListAnalyzers&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of results to return in the
  response.
  * `:next_token` (`t:string`) A token used for pagination of results returned.
  * `:type` (`t:string`) The type of analyzer.
  """
  @spec list_analyzers(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_analyzers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_analyzers_errors()}
  def list_analyzers(%Client{} = client, options \\ []) do
    url_path = "/analyzer"

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
  Retrieves a list of archive rules created for the specified analyzer.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20ListArchiveRules&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:analyzer_name` (`t:string` required) The name of the analyzer to retrieve
  rules from.
  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of results to return in the
  request.
  * `:next_token` (`t:string`) A token used for pagination of results returned.
  """
  @spec list_archive_rules(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_archive_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_archive_rules_errors()}
  def list_archive_rules(%Client{} = client, analyzer_name, options \\ []) do
    url_path = "/analyzer/#{AWS.Util.encode_uri(analyzer_name)}/archive-rule"

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
  Retrieves a list of findings generated by the specified analyzer. ListFindings
  and ListFindingsV2 both use `access-analyzer:ListFindings` in the `Action`
  element of an IAM policy statement. You must have permission to perform the
  `access-analyzer:ListFindings` action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20ListFindings&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_findings(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_findings_errors()}
  def list_findings(%Client{} = client, options \\ []) do
    url_path = "/finding"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

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
  Retrieves a list of findings generated by the specified analyzer. ListFindings
  and ListFindingsV2 both use `access-analyzer:ListFindings` in the `Action`
  element of an IAM policy statement. You must have permission to perform the
  `access-analyzer:ListFindings` action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20ListFindingsV2&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_findings_v2(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_findings_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_findings_v2_errors()}
  def list_findings_v2(%Client{} = client, options \\ []) do
    url_path = "/findingv2"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

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
  Lists all of the policy generations requested in the last seven days.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20ListPolicyGenerations&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of results to return in the
  response.
  * `:next_token` (`t:string`) A token used for pagination of results returned.
  * `:principal_arn` (`t:string`) The ARN of the IAM entity (user or role) for
  which you are generating a policy. Use this with ListGeneratedPolicies to
  filter the results to only include results for a specific principal.
  """
  @spec list_policy_generations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_policy_generations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_policy_generations_errors()}
  def list_policy_generations(%Client{} = client, options \\ []) do
    url_path = "/policy/generation"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, principal_arn: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :principal_arn) do
        [{"principalArn", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :principal_arn])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of tags applied to the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource to retrieve tags
  from.
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
  Starts the policy generation request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20StartPolicyGeneration&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec start_policy_generation(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_policy_generation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_policy_generation_errors()}
  def start_policy_generation(%Client{} = client, options \\ []) do
    url_path = "/policy/generation"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

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
  Immediately starts a scan of the policies applied to the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20StartResourceScan&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec start_resource_scan(AWS.Client.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_resource_scan_errors()}
  def start_resource_scan(%Client{} = client, options \\ []) do
    url_path = "/resource/scan"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

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
  Adds a tag to the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource to add the tag
  to.
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
  Removes a tag from the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the resource to remove the
  tag from.
  * `:tag_keys` (`t:list[smithy.api#String]` required) The key for the tag to add.
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
  Updates the criteria and values for the specified archive rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20UpdateArchiveRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:analyzer_name` (`t:string` required) The name of the analyzer to update the
  archive rules for.
  * `:rule_name` (`t:string` required) The name of the rule to update.
  ## Keyword parameters:
  """
  @spec update_archive_rule(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_archive_rule_errors()}
  def update_archive_rule(%Client{} = client, analyzer_name, rule_name, options \\ []) do
    url_path =
      "/analyzer/#{AWS.Util.encode_uri(analyzer_name)}/archive-rule/#{AWS.Util.encode_uri(rule_name)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

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
  Updates the status for the specified findings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20UpdateFindings&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec update_findings(AWS.Client.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_findings_errors()}
  def update_findings(%Client{} = client, options \\ []) do
    url_path = "/finding"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

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
  Requests the validation of a policy and returns a list of findings. The findings
  help you identify issues and provide actionable recommendations to resolve the
  issue and enable you to author functional policies that meet security best
  practices.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=accessanalyzer%20ValidatePolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:max_results` (`t:string`) The maximum number of results to return in the
  response.
  * `:next_token` (`t:string`) A token used for pagination of results returned.
  """
  @spec validate_policy(AWS.Client.t(), Keyword.t()) ::
          {:ok, validate_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, validate_policy_errors()}
  def validate_policy(%Client{} = client, options \\ []) do
    url_path = "/policy/validation"

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
end
