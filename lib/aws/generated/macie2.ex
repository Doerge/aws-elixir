# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Macie2 do
  @moduledoc """
  Amazon Macie
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_resource_profile_artifacts_response() :: %{
        "artifacts" => list(resource_profile_artifact()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_resource_profile_artifacts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_from_master_account_request() :: %{}
      
  """
  @type disassociate_from_master_account_request() :: %{}

  @typedoc """

  ## Example:
      
      tag_value_pair() :: %{
        "key" => String.t(),
        "value" => String.t()
      }
      
  """
  @type tag_value_pair() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_resources_request() :: %{
        optional("bucketCriteria") => search_resources_bucket_criteria(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortCriteria") => search_resources_sort_criteria()
      }
      
  """
  @type search_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_findings_filter_response() :: %{
        "action" => list(any()),
        "arn" => String.t(),
        "description" => String.t(),
        "findingCriteria" => finding_criteria(),
        "id" => String.t(),
        "name" => String.t(),
        "position" => integer(),
        "tags" => map()
      }
      
  """
  @type get_findings_filter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_buckets_request() :: %{
        optional("criteria") => map(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortCriteria") => bucket_sort_criteria()
      }
      
  """
  @type describe_buckets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      object_count_by_encryption_type() :: %{
        "customerManaged" => float(),
        "kmsManaged" => float(),
        "s3Managed" => float(),
        "unencrypted" => float(),
        "unknown" => float()
      }
      
  """
  @type object_count_by_encryption_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      session_context() :: %{
        "attributes" => session_context_attributes(),
        "sessionIssuer" => session_issuer()
      }
      
  """
  @type session_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bucket_statistics_by_sensitivity() :: %{
        "classificationError" => sensitivity_aggregations(),
        "notClassified" => sensitivity_aggregations(),
        "notSensitive" => sensitivity_aggregations(),
        "sensitive" => sensitivity_aggregations()
      }
      
  """
  @type bucket_statistics_by_sensitivity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ip_country() :: %{
        "code" => String.t(),
        "name" => String.t()
      }
      
  """
  @type ip_country() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_member_response() :: %{
        "arn" => String.t()
      }
      
  """
  @type create_member_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_resource_profile_response() :: %{}
      
  """
  @type update_resource_profile_response() :: %{}

  @typedoc """

  ## Example:
      
      get_usage_statistics_request() :: %{
        optional("filterBy") => list(usage_statistics_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => usage_statistics_sort_by(),
        optional("timeRange") => list(any())
      }
      
  """
  @type get_usage_statistics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      record() :: %{
        "jsonPath" => String.t(),
        "recordIndex" => float()
      }
      
  """
  @type record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_classification_job_response() :: %{
        "allowListIds" => list(String.t()()),
        "clientToken" => String.t(),
        "createdAt" => non_neg_integer(),
        "customDataIdentifierIds" => list(String.t()()),
        "description" => String.t(),
        "initialRun" => boolean(),
        "jobArn" => String.t(),
        "jobId" => String.t(),
        "jobStatus" => list(any()),
        "jobType" => list(any()),
        "lastRunErrorStatus" => last_run_error_status(),
        "lastRunTime" => non_neg_integer(),
        "managedDataIdentifierIds" => list(String.t()()),
        "managedDataIdentifierSelector" => list(any()),
        "name" => String.t(),
        "s3JobDefinition" => s3_job_definition(),
        "samplingPercentage" => integer(),
        "scheduleFrequency" => job_schedule_frequency(),
        "statistics" => statistics(),
        "tags" => map(),
        "userPausedDetails" => user_paused_details()
      }
      
  """
  @type describe_classification_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_statistics_filter() :: %{
        "comparator" => list(any()),
        "key" => list(any()),
        "values" => list(String.t()())
      }
      
  """
  @type usage_statistics_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_findings_filter_response() :: %{}
      
  """
  @type delete_findings_filter_response() :: %{}

  @typedoc """

  ## Example:
      
      ip_city() :: %{
        "name" => String.t()
      }
      
  """
  @type ip_city() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_member_request() :: %{
        optional("tags") => map(),
        required("account") => account_detail()
      }
      
  """
  @type create_member_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      range() :: %{
        "end" => float(),
        "start" => float(),
        "startColumn" => float()
      }
      
  """
  @type range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bucket_count_policy_allows_unencrypted_object_uploads() :: %{
        "allowsUnencryptedObjectUploads" => float(),
        "deniesUnencryptedObjectUploads" => float(),
        "unknown" => float()
      }
      
  """
  @type bucket_count_policy_allows_unencrypted_object_uploads() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      decline_invitations_response() :: %{
        "unprocessedAccounts" => list(unprocessed_account()())
      }
      
  """
  @type decline_invitations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retrieval_configuration() :: %{
        "externalId" => String.t(),
        "retrievalMode" => list(any()),
        "roleName" => String.t()
      }
      
  """
  @type retrieval_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_bucket_definition_for_job() :: %{
        "accountId" => String.t(),
        "buckets" => list(String.t()())
      }
      
  """
  @type s3_bucket_definition_for_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_classification_scope_response() :: %{}
      
  """
  @type update_classification_scope_response() :: %{}

  @typedoc """

  ## Example:
      
      disable_organization_admin_account_response() :: %{}
      
  """
  @type disable_organization_admin_account_response() :: %{}

  @typedoc """

  ## Example:
      
      list_jobs_filter_term() :: %{
        "comparator" => list(any()),
        "key" => list(any()),
        "values" => list(String.t()())
      }
      
  """
  @type list_jobs_filter_term() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organization_configuration_request() :: %{}
      
  """
  @type describe_organization_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      aws_account() :: %{
        "accountId" => String.t(),
        "principalId" => String.t()
      }
      
  """
  @type aws_account() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_reveal_configuration_response() :: %{
        "configuration" => reveal_configuration(),
        "retrievalConfiguration" => retrieval_configuration()
      }
      
  """
  @type get_reveal_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_allow_list_request() :: %{
        optional("ignoreJobChecks") => String.t()
      }
      
  """
  @type delete_allow_list_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resources_affected() :: %{
        "s3Bucket" => s3_bucket(),
        "s3Object" => s3_object()
      }
      
  """
  @type resources_affected() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_total() :: %{
        "currency" => list(any()),
        "estimatedCost" => String.t(),
        "type" => list(any())
      }
      
  """
  @type usage_total() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_sensitivity_inspection_templates_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_sensitivity_inspection_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      admin_account() :: %{
        "accountId" => String.t(),
        "status" => list(any())
      }
      
  """
  @type admin_account() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_classification_scope_exclusion() :: %{
        "bucketNames" => list(String.t()())
      }
      
  """
  @type s3_classification_scope_exclusion() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_sensitivity_inspection_template_response() :: %{
        "description" => String.t(),
        "excludes" => sensitivity_inspection_template_excludes(),
        "includes" => sensitivity_inspection_template_includes(),
        "name" => String.t(),
        "sensitivityInspectionTemplateId" => String.t()
      }
      
  """
  @type get_sensitivity_inspection_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sensitivity_aggregations() :: %{
        "classifiableSizeInBytes" => float(),
        "publiclyAccessibleCount" => float(),
        "totalCount" => float(),
        "totalSizeInBytes" => float()
      }
      
  """
  @type sensitivity_aggregations() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      classification_result() :: %{
        "additionalOccurrences" => boolean(),
        "customDataIdentifiers" => custom_data_identifiers(),
        "mimeType" => String.t(),
        "sensitiveData" => list(sensitive_data_item()()),
        "sizeClassified" => float(),
        "status" => classification_result_status()
      }
      
  """
  @type classification_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      classification_result_status() :: %{
        "code" => String.t(),
        "reason" => String.t()
      }
      
  """
  @type classification_result_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_custom_data_identifier_request() :: %{}
      
  """
  @type delete_custom_data_identifier_request() :: %{}

  @typedoc """

  ## Example:
      
      bucket_count_by_shared_access_type() :: %{
        "external" => float(),
        "internal" => float(),
        "notShared" => float(),
        "unknown" => float()
      }
      
  """
  @type bucket_count_by_shared_access_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_administrator_account_request() :: %{}
      
  """
  @type get_administrator_account_request() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      managed_data_identifier_summary() :: %{
        "category" => list(any()),
        "id" => String.t()
      }
      
  """
  @type managed_data_identifier_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bucket_sort_criteria() :: %{
        "attributeName" => String.t(),
        "orderBy" => list(any())
      }
      
  """
  @type bucket_sort_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_member_session_request() :: %{
        required("status") => list(any())
      }
      
  """
  @type update_member_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bucket_criteria_additional_properties() :: %{
        "eq" => list(String.t()()),
        "gt" => float(),
        "gte" => float(),
        "lt" => float(),
        "lte" => float(),
        "neq" => list(String.t()()),
        "prefix" => String.t()
      }
      
  """
  @type bucket_criteria_additional_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_level_permissions() :: %{
        "blockPublicAccess" => block_public_access()
      }
      
  """
  @type account_level_permissions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_macie_session_response() :: %{}
      
  """
  @type update_macie_session_response() :: %{}

  @typedoc """

  ## Example:
      
      get_findings_publication_configuration_request() :: %{}
      
  """
  @type get_findings_publication_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      bucket_metadata() :: %{
        "accountId" => String.t(),
        "allowsUnencryptedObjectUploads" => list(any()),
        "automatedDiscoveryMonitoringStatus" => list(any()),
        "bucketArn" => String.t(),
        "bucketCreatedAt" => non_neg_integer(),
        "bucketName" => String.t(),
        "classifiableObjectCount" => float(),
        "classifiableSizeInBytes" => float(),
        "errorCode" => list(any()),
        "errorMessage" => String.t(),
        "jobDetails" => job_details(),
        "lastAutomatedDiscoveryTime" => non_neg_integer(),
        "lastUpdated" => non_neg_integer(),
        "objectCount" => float(),
        "objectCountByEncryptionType" => object_count_by_encryption_type(),
        "publicAccess" => bucket_public_access(),
        "region" => String.t(),
        "replicationDetails" => replication_details(),
        "sensitivityScore" => integer(),
        "serverSideEncryption" => bucket_server_side_encryption(),
        "sharedAccess" => list(any()),
        "sizeInBytes" => float(),
        "sizeInBytesCompressed" => float(),
        "tags" => list(key_value_pair()()),
        "unclassifiableObjectCount" => object_level_statistics(),
        "unclassifiableObjectSizeInBytes" => object_level_statistics(),
        "versioning" => boolean()
      }
      
  """
  @type bucket_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_custom_data_identifiers_request() :: %{
        optional("ids") => list(String.t()())
      }
      
  """
  @type batch_get_custom_data_identifiers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_scope_term() :: %{
        "comparator" => list(any()),
        "key" => String.t(),
        "tagValues" => list(tag_value_pair()()),
        "target" => list(any())
      }
      
  """
  @type tag_scope_term() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_sensitivity_inspection_template_request() :: %{}
      
  """
  @type get_sensitivity_inspection_template_request() :: %{}

  @typedoc """

  ## Example:
      
      suppress_data_identifier() :: %{
        "id" => String.t(),
        "type" => list(any())
      }
      
  """
  @type suppress_data_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_statistics_request() :: %{
        optional("accountId") => String.t()
      }
      
  """
  @type get_bucket_statistics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invitation() :: %{
        "accountId" => String.t(),
        "invitationId" => String.t(),
        "invitedAt" => non_neg_integer(),
        "relationshipStatus" => list(any())
      }
      
  """
  @type invitation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_from_master_account_response() :: %{}
      
  """
  @type disassociate_from_master_account_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_member_request() :: %{}
      
  """
  @type delete_member_request() :: %{}

  @typedoc """

  ## Example:
      
      update_allow_list_response() :: %{
        "arn" => String.t(),
        "id" => String.t()
      }
      
  """
  @type update_allow_list_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_by_account() :: %{
        "currency" => list(any()),
        "estimatedCost" => String.t(),
        "serviceLimit" => service_limit(),
        "type" => list(any())
      }
      
  """
  @type usage_by_account() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_custom_data_identifiers_response() :: %{
        "items" => list(custom_data_identifier_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_custom_data_identifiers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      server_side_encryption() :: %{
        "encryptionType" => list(any()),
        "kmsMasterKeyId" => String.t()
      }
      
  """
  @type server_side_encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_automated_discovery_accounts_request() :: %{
        optional("accounts") => list(automated_discovery_account_update()())
      }
      
  """
  @type batch_update_automated_discovery_accounts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sensitivity_inspection_template_excludes() :: %{
        "managedDataIdentifierIds" => list(String.t()())
      }
      
  """
  @type sensitivity_inspection_template_excludes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_object() :: %{
        "bucketArn" => String.t(),
        "eTag" => String.t(),
        "extension" => String.t(),
        "key" => String.t(),
        "lastModified" => non_neg_integer(),
        "path" => String.t(),
        "publicAccess" => boolean(),
        "serverSideEncryption" => server_side_encryption(),
        "size" => float(),
        "storageClass" => list(any()),
        "tags" => list(key_value_pair()()),
        "versionId" => String.t()
      }
      
  """
  @type s3_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_findings_response() :: %{
        "findingIds" => list(String.t()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_findings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      security_hub_configuration() :: %{
        "publishClassificationFindings" => boolean(),
        "publishPolicyFindings" => boolean()
      }
      
  """
  @type security_hub_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_statistics_sort_by() :: %{
        "key" => list(any()),
        "orderBy" => list(any())
      }
      
  """
  @type usage_statistics_sort_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cell() :: %{
        "cellReference" => String.t(),
        "column" => float(),
        "columnName" => String.t(),
        "row" => float()
      }
      
  """
  @type cell() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_identity() :: %{
        "assumedRole" => assumed_role(),
        "awsAccount" => aws_account(),
        "awsService" => aws_service(),
        "federatedUser" => federated_user(),
        "iamUser" => iam_user(),
        "root" => user_identity_root(),
        "type" => list(any())
      }
      
  """
  @type user_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_jobs_sort_criteria() :: %{
        "attributeName" => list(any()),
        "orderBy" => list(any())
      }
      
  """
  @type list_jobs_sort_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      automated_discovery_account_update() :: %{
        "accountId" => String.t(),
        "status" => list(any())
      }
      
  """
  @type automated_discovery_account_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_findings_request() :: %{
        optional("sortCriteria") => sort_criteria(),
        required("findingIds") => list(String.t()())
      }
      
  """
  @type get_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monthly_schedule() :: %{
        "dayOfMonth" => integer()
      }
      
  """
  @type monthly_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      criteria_block_for_job() :: %{
        "and" => list(criteria_for_job()())
      }
      
  """
  @type criteria_block_for_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_detail() :: %{
        "accountId" => String.t(),
        "email" => String.t()
      }
      
  """
  @type account_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_classification_jobs_request() :: %{
        optional("filterCriteria") => list_jobs_filter_criteria(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortCriteria") => list_jobs_sort_criteria()
      }
      
  """
  @type list_classification_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_automated_discovery_configuration_response() :: %{
        "autoEnableOrganizationMembers" => list(any()),
        "classificationScopeId" => String.t(),
        "disabledAt" => non_neg_integer(),
        "firstEnabledAt" => non_neg_integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "sensitivityInspectionTemplateId" => String.t(),
        "status" => list(any())
      }
      
  """
  @type get_automated_discovery_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_profile_detections_response() :: %{
        "detections" => list(detection()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_resource_profile_detections_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_bucket_criteria_for_job() :: %{
        "excludes" => criteria_block_for_job(),
        "includes" => criteria_block_for_job()
      }
      
  """
  @type s3_bucket_criteria_for_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bucket_public_access() :: %{
        "effectivePermission" => list(any()),
        "permissionConfiguration" => bucket_permission_configuration()
      }
      
  """
  @type bucket_public_access() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_classification_scope_request() :: %{}
      
  """
  @type get_classification_scope_request() :: %{}

  @typedoc """

  ## Example:
      
      disable_organization_admin_account_request() :: %{
        required("adminAccountId") => String.t()
      }
      
  """
  @type disable_organization_admin_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_resources_sort_criteria() :: %{
        "attributeName" => list(any()),
        "orderBy" => list(any())
      }
      
  """
  @type search_resources_sort_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_detection() :: %{
        "arn" => String.t(),
        "count" => float(),
        "name" => String.t(),
        "occurrences" => occurrences()
      }
      
  """
  @type custom_detection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scoping() :: %{
        "excludes" => job_scoping_block(),
        "includes" => job_scoping_block()
      }
      
  """
  @type scoping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      allow_list_status() :: %{
        "code" => list(any()),
        "description" => String.t()
      }
      
  """
  @type allow_list_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      iam_user() :: %{
        "accountId" => String.t(),
        "arn" => String.t(),
        "principalId" => String.t(),
        "userName" => String.t()
      }
      
  """
  @type iam_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_data_identifier_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t()
      }
      
  """
  @type custom_data_identifier_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      finding_statistics_sort_criteria() :: %{
        "attributeName" => list(any()),
        "orderBy" => list(any())
      }
      
  """
  @type finding_statistics_sort_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      finding_actor() :: %{
        "domainDetails" => domain_details(),
        "ipAddressDetails" => ip_address_details(),
        "userIdentity" => user_identity()
      }
      
  """
  @type finding_actor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      session_context_attributes() :: %{
        "creationDate" => non_neg_integer(),
        "mfaAuthenticated" => boolean()
      }
      
  """
  @type session_context_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_custom_data_identifier_response() :: %{
        "customDataIdentifierId" => String.t()
      }
      
  """
  @type create_custom_data_identifier_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      severity() :: %{
        "description" => list(any()),
        "score" => float()
      }
      
  """
  @type severity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_macie_request() :: %{
        optional("clientToken") => String.t(),
        optional("findingPublishingFrequency") => list(any()),
        optional("status") => list(any())
      }
      
  """
  @type enable_macie_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_findings_filter_request() :: %{}
      
  """
  @type delete_findings_filter_request() :: %{}

  @typedoc """

  ## Example:
      
      create_allow_list_response() :: %{
        "arn" => String.t(),
        "id" => String.t()
      }
      
  """
  @type create_allow_list_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      classification_export_configuration() :: %{
        "s3Destination" => s3_destination()
      }
      
  """
  @type classification_export_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bucket_count_by_encryption_type() :: %{
        "kmsManaged" => float(),
        "s3Managed" => float(),
        "unencrypted" => float(),
        "unknown" => float()
      }
      
  """
  @type bucket_count_by_encryption_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_resources_response() :: %{
        "matchingResources" => list(matching_resource()()),
        "nextToken" => String.t()
      }
      
  """
  @type search_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_classification_scope_request() :: %{
        optional("s3") => s3_classification_scope_update()
      }
      
  """
  @type update_classification_scope_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_classification_job_response() :: %{}
      
  """
  @type update_classification_job_response() :: %{}

  @typedoc """

  ## Example:
      
      api_call_details() :: %{
        "api" => String.t(),
        "apiServiceName" => String.t(),
        "firstSeen" => non_neg_integer(),
        "lastSeen" => non_neg_integer()
      }
      
  """
  @type api_call_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_profile_response() :: %{
        "profileUpdatedAt" => non_neg_integer(),
        "sensitivityScore" => integer(),
        "sensitivityScoreOverridden" => boolean(),
        "statistics" => resource_statistics()
      }
      
  """
  @type get_resource_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      simple_scope_term() :: %{
        "comparator" => list(any()),
        "key" => list(any()),
        "values" => list(String.t()())
      }
      
  """
  @type simple_scope_term() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_custom_data_identifier_request() :: %{
        optional("ignoreWords") => list(String.t()()),
        optional("keywords") => list(String.t()()),
        optional("maximumMatchDistance") => integer(),
        required("regex") => String.t(),
        required("sampleText") => String.t()
      }
      
  """
  @type test_custom_data_identifier_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_automated_discovery_accounts_response() :: %{
        "items" => list(automated_discovery_account()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_automated_discovery_accounts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_from_administrator_account_response() :: %{}
      
  """
  @type disassociate_from_administrator_account_response() :: %{}

  @typedoc """

  ## Example:
      
      get_custom_data_identifier_request() :: %{}
      
  """
  @type get_custom_data_identifier_request() :: %{}

  @typedoc """

  ## Example:
      
      job_summary() :: %{
        "bucketCriteria" => s3_bucket_criteria_for_job(),
        "bucketDefinitions" => list(s3_bucket_definition_for_job()()),
        "createdAt" => non_neg_integer(),
        "jobId" => String.t(),
        "jobStatus" => list(any()),
        "jobType" => list(any()),
        "lastRunErrorStatus" => last_run_error_status(),
        "name" => String.t(),
        "userPausedDetails" => user_paused_details()
      }
      
  """
  @type job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_automated_discovery_accounts_request() :: %{
        optional("accountIds") => list(String.t()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_automated_discovery_accounts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_sensitivity_inspection_template_response() :: %{}
      
  """
  @type update_sensitivity_inspection_template_response() :: %{}

  @typedoc """

  ## Example:
      
      create_custom_data_identifier_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("ignoreWords") => list(String.t()()),
        optional("keywords") => list(String.t()()),
        optional("maximumMatchDistance") => integer(),
        optional("severityLevels") => list(severity_level()()),
        optional("tags") => map(),
        required("name") => String.t(),
        required("regex") => String.t()
      }
      
  """
  @type create_custom_data_identifier_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      occurrences() :: %{
        "cells" => list(cell()()),
        "lineRanges" => list(range()()),
        "offsetRanges" => list(range()()),
        "pages" => list(page()()),
        "records" => list(record()())
      }
      
  """
  @type occurrences() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_allow_list_request() :: %{}
      
  """
  @type get_allow_list_request() :: %{}

  @typedoc """

  ## Example:
      
      job_scope_term() :: %{
        "simpleScopeTerm" => simple_scope_term(),
        "tagScopeTerm" => tag_scope_term()
      }
      
  """
  @type job_scope_term() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organization_configuration_response() :: %{
        "autoEnable" => boolean(),
        "maxAccountLimitReached" => boolean()
      }
      
  """
  @type describe_organization_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_sensitive_data_occurrences_request() :: %{}
      
  """
  @type get_sensitive_data_occurrences_request() :: %{}

  @typedoc """

  ## Example:
      
      s3_classification_scope() :: %{
        "excludes" => s3_classification_scope_exclusion()
      }
      
  """
  @type s3_classification_scope() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_findings_filters_response() :: %{
        "findingsFilterListItems" => list(findings_filter_list_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_findings_filters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_classification_export_configuration_response() :: %{
        "configuration" => classification_export_configuration()
      }
      
  """
  @type get_classification_export_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_classification_scopes_request() :: %{
        optional("name") => String.t(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_classification_scopes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_managed_data_identifiers_request() :: %{
        optional("nextToken") => String.t()
      }
      
  """
  @type list_managed_data_identifiers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_findings_filter_request() :: %{
        optional("action") => list(any()),
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("findingCriteria") => finding_criteria(),
        optional("name") => String.t(),
        optional("position") => integer()
      }
      
  """
  @type update_findings_filter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_macie_request() :: %{}
      
  """
  @type disable_macie_request() :: %{}

  @typedoc """

  ## Example:
      
      get_macie_session_request() :: %{}
      
  """
  @type get_macie_session_request() :: %{}

  @typedoc """

  ## Example:
      
      create_findings_filter_response() :: %{
        "arn" => String.t(),
        "id" => String.t()
      }
      
  """
  @type create_findings_filter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_resources_tag_criterion() :: %{
        "comparator" => list(any()),
        "tagValues" => list(search_resources_tag_criterion_pair()())
      }
      
  """
  @type search_resources_tag_criterion() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_allow_list_response() :: %{}
      
  """
  @type delete_allow_list_response() :: %{}

  @typedoc """

  ## Example:
      
      s3_bucket() :: %{
        "allowsUnencryptedObjectUploads" => list(any()),
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "defaultServerSideEncryption" => server_side_encryption(),
        "name" => String.t(),
        "owner" => s3_bucket_owner(),
        "publicAccess" => bucket_public_access(),
        "tags" => list(key_value_pair()())
      }
      
  """
  @type s3_bucket() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      object_level_statistics() :: %{
        "fileType" => float(),
        "storageClass" => float(),
        "total" => float()
      }
      
  """
  @type object_level_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bucket_server_side_encryption() :: %{
        "kmsMasterKeyId" => String.t(),
        "type" => list(any())
      }
      
  """
  @type bucket_server_side_encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_macie_session_response() :: %{
        "createdAt" => non_neg_integer(),
        "findingPublishingFrequency" => list(any()),
        "serviceRole" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type get_macie_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aws_service() :: %{
        "invokedBy" => String.t()
      }
      
  """
  @type aws_service() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sensitivity_inspection_templates_entry() :: %{
        "id" => String.t(),
        "name" => String.t()
      }
      
  """
  @type sensitivity_inspection_templates_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_custom_data_identifier_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "deleted" => boolean(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t()
      }
      
  """
  @type batch_get_custom_data_identifier_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_resources_bucket_criteria() :: %{
        "excludes" => search_resources_criteria_block(),
        "includes" => search_resources_criteria_block()
      }
      
  """
  @type search_resources_bucket_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      federated_user() :: %{
        "accessKeyId" => String.t(),
        "accountId" => String.t(),
        "arn" => String.t(),
        "principalId" => String.t(),
        "sessionContext" => session_context()
      }
      
  """
  @type federated_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_resource_profile_detections_request() :: %{
        optional("suppressDataIdentifiers") => list(suppress_data_identifier()()),
        required("resourceArn") => String.t()
      }
      
  """
  @type update_resource_profile_detections_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_findings_response() :: %{
        "findings" => list(finding()())
      }
      
  """
  @type get_findings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_findings_publication_configuration_request() :: %{
        optional("clientToken") => String.t(),
        optional("securityHubConfiguration") => security_hub_configuration()
      }
      
  """
  @type put_findings_publication_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bucket_policy() :: %{
        "allowsPublicReadAccess" => boolean(),
        "allowsPublicWriteAccess" => boolean()
      }
      
  """
  @type bucket_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      findings_filter_list_item() :: %{
        "action" => list(any()),
        "arn" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "tags" => map()
      }
      
  """
  @type findings_filter_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_allow_lists_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_allow_lists_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_identity_root() :: %{
        "accountId" => String.t(),
        "arn" => String.t(),
        "principalId" => String.t()
      }
      
  """
  @type user_identity_root() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_jobs_filter_criteria() :: %{
        "excludes" => list(list_jobs_filter_term()()),
        "includes" => list(list_jobs_filter_term()())
      }
      
  """
  @type list_jobs_filter_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_findings_filter_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("position") => integer(),
        optional("tags") => map(),
        required("action") => list(any()),
        required("findingCriteria") => finding_criteria(),
        required("name") => String.t()
      }
      
  """
  @type create_findings_filter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_sensitive_data_occurrences_response() :: %{
        "error" => String.t(),
        "sensitiveDataOccurrences" => map(),
        "status" => list(any())
      }
      
  """
  @type get_sensitive_data_occurrences_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_findings_filter_response() :: %{
        "arn" => String.t(),
        "id" => String.t()
      }
      
  """
  @type update_findings_filter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_resources_tag_criterion_pair() :: %{
        "key" => String.t(),
        "value" => String.t()
      }
      
  """
  @type search_resources_tag_criterion_pair() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      automated_discovery_account_update_error() :: %{
        "accountId" => String.t(),
        "errorCode" => list(any())
      }
      
  """
  @type automated_discovery_account_update_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_managed_data_identifiers_response() :: %{
        "items" => list(managed_data_identifier_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_managed_data_identifiers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      allow_list_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type allow_list_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      classification_details() :: %{
        "detailedResultsLocation" => String.t(),
        "jobArn" => String.t(),
        "jobId" => String.t(),
        "originType" => list(any()),
        "result" => classification_result()
      }
      
  """
  @type classification_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      finding() :: %{
        "accountId" => String.t(),
        "archived" => boolean(),
        "category" => list(any()),
        "classificationDetails" => classification_details(),
        "count" => float(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "partition" => String.t(),
        "policyDetails" => policy_details(),
        "region" => String.t(),
        "resourcesAffected" => resources_affected(),
        "sample" => boolean(),
        "schemaVersion" => String.t(),
        "severity" => severity(),
        "title" => String.t(),
        "type" => list(any()),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type finding() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_classification_job_request() :: %{}
      
  """
  @type describe_classification_job_request() :: %{}

  @typedoc """

  ## Example:
      
      update_automated_discovery_configuration_response() :: %{}
      
  """
  @type update_automated_discovery_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      update_macie_session_request() :: %{
        optional("findingPublishingFrequency") => list(any()),
        optional("status") => list(any())
      }
      
  """
  @type update_macie_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ip_geo_location() :: %{
        "lat" => float(),
        "lon" => float()
      }
      
  """
  @type ip_geo_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_profile_artifact() :: %{
        "arn" => String.t(),
        "classificationResultStatus" => String.t(),
        "sensitive" => boolean()
      }
      
  """
  @type resource_profile_artifact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_member_session_response() :: %{}
      
  """
  @type update_member_session_response() :: %{}

  @typedoc """

  ## Example:
      
      get_finding_statistics_request() :: %{
        optional("findingCriteria") => finding_criteria(),
        optional("size") => integer(),
        optional("sortCriteria") => finding_statistics_sort_criteria(),
        required("groupBy") => list(any())
      }
      
  """
  @type get_finding_statistics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_profile_artifacts_request() :: %{
        optional("nextToken") => String.t(),
        required("resourceArn") => String.t()
      }
      
  """
  @type list_resource_profile_artifacts_request() :: %{String.t() => any()}

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
        optional("findingCriteria") => finding_criteria(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortCriteria") => sort_criteria()
      }
      
  """
  @type list_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_buckets_response() :: %{
        "buckets" => list(bucket_metadata()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_buckets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_custom_data_identifiers_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_custom_data_identifiers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_retrieval_configuration() :: %{
        "retrievalMode" => list(any()),
        "roleName" => String.t()
      }
      
  """
  @type update_retrieval_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_custom_data_identifier_response() :: %{
        "matchCount" => integer()
      }
      
  """
  @type test_custom_data_identifier_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_findings_filter_request() :: %{}
      
  """
  @type get_findings_filter_request() :: %{}

  @typedoc """

  ## Example:
      
      get_member_request() :: %{}
      
  """
  @type get_member_request() :: %{}

  @typedoc """

  ## Example:
      
      s3_bucket_owner() :: %{
        "displayName" => String.t(),
        "id" => String.t()
      }
      
  """
  @type s3_bucket_owner() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_organization_configuration_response() :: %{}
      
  """
  @type update_organization_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      get_finding_statistics_response() :: %{
        "countsByGroup" => list(group_count()())
      }
      
  """
  @type get_finding_statistics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_usage_totals_request() :: %{
        optional("timeRange") => String.t()
      }
      
  """
  @type get_usage_totals_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detection() :: %{
        "arn" => String.t(),
        "count" => float(),
        "id" => String.t(),
        "name" => String.t(),
        "suppressed" => boolean(),
        "type" => list(any())
      }
      
  """
  @type detection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_classification_scope_exclusion_update() :: %{
        "bucketNames" => list(String.t()()),
        "operation" => list(any())
      }
      
  """
  @type s3_classification_scope_exclusion_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_destination() :: %{
        "bucketName" => String.t(),
        "keyPrefix" => String.t(),
        "kmsKeyArn" => String.t()
      }
      
  """
  @type s3_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_invitation_response() :: %{}
      
  """
  @type accept_invitation_response() :: %{}

  @typedoc """

  ## Example:
      
      resource_statistics() :: %{
        "totalBytesClassified" => float(),
        "totalDetections" => float(),
        "totalDetectionsSuppressed" => float(),
        "totalItemsClassified" => float(),
        "totalItemsSensitive" => float(),
        "totalItemsSkipped" => float(),
        "totalItemsSkippedInvalidEncryption" => float(),
        "totalItemsSkippedInvalidKms" => float(),
        "totalItemsSkippedPermissionDenied" => float()
      }
      
  """
  @type resource_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_sample_findings_request() :: %{
        optional("findingTypes") => list(list(any())())
      }
      
  """
  @type create_sample_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      decline_invitations_request() :: %{
        required("accountIds") => list(String.t()())
      }
      
  """
  @type decline_invitations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sensitive_data_item() :: %{
        "category" => list(any()),
        "detections" => list(default_detection()()),
        "totalCount" => float()
      }
      
  """
  @type sensitive_data_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bucket_statistics_response() :: %{
        "bucketCount" => float(),
        "bucketCountByEffectivePermission" => bucket_count_by_effective_permission(),
        "bucketCountByEncryptionType" => bucket_count_by_encryption_type(),
        "bucketCountByObjectEncryptionRequirement" => bucket_count_policy_allows_unencrypted_object_uploads(),
        "bucketCountBySharedAccessType" => bucket_count_by_shared_access_type(),
        "bucketStatisticsBySensitivity" => bucket_statistics_by_sensitivity(),
        "classifiableObjectCount" => float(),
        "classifiableSizeInBytes" => float(),
        "lastUpdated" => non_neg_integer(),
        "objectCount" => float(),
        "sizeInBytes" => float(),
        "sizeInBytesCompressed" => float(),
        "unclassifiableObjectCount" => object_level_statistics(),
        "unclassifiableObjectSizeInBytes" => object_level_statistics()
      }
      
  """
  @type get_bucket_statistics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_automated_discovery_configuration_request() :: %{
        optional("autoEnableOrganizationMembers") => list(any()),
        required("status") => list(any())
      }
      
  """
  @type update_automated_discovery_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_master_account_response() :: %{
        "master" => invitation()
      }
      
  """
  @type get_master_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_schedule_frequency() :: %{
        "dailySchedule" => daily_schedule(),
        "monthlySchedule" => monthly_schedule(),
        "weeklySchedule" => weekly_schedule()
      }
      
  """
  @type job_schedule_frequency() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_details() :: %{
        "isDefinedInJob" => list(any()),
        "isMonitoredByJob" => list(any()),
        "lastJobId" => String.t(),
        "lastJobRunTime" => non_neg_integer()
      }
      
  """
  @type job_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_classification_export_configuration_response() :: %{
        "configuration" => classification_export_configuration()
      }
      
  """
  @type put_classification_export_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_classification_job_response() :: %{
        "jobArn" => String.t(),
        "jobId" => String.t()
      }
      
  """
  @type create_classification_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      allow_list_criteria() :: %{
        "regex" => String.t(),
        "s3WordsList" => s3_words_list()
      }
      
  """
  @type allow_list_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_invitations_request() :: %{
        required("accountIds") => list(String.t()())
      }
      
  """
  @type delete_invitations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      classification_scope_summary() :: %{
        "id" => String.t(),
        "name" => String.t()
      }
      
  """
  @type classification_scope_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_member_response() :: %{
        "accountId" => String.t(),
        "administratorAccountId" => String.t(),
        "arn" => String.t(),
        "email" => String.t(),
        "invitedAt" => non_neg_integer(),
        "masterAccountId" => String.t(),
        "relationshipStatus" => list(any()),
        "tags" => map(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type get_member_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_reveal_configuration_request() :: %{
        optional("retrievalConfiguration") => update_retrieval_configuration(),
        required("configuration") => reveal_configuration()
      }
      
  """
  @type update_reveal_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_organization_configuration_request() :: %{
        required("autoEnable") => boolean()
      }
      
  """
  @type update_organization_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_organization_admin_account_request() :: %{
        optional("clientToken") => String.t(),
        required("adminAccountId") => String.t()
      }
      
  """
  @type enable_organization_admin_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sensitivity_inspection_template_includes() :: %{
        "allowListIds" => list(String.t()()),
        "customDataIdentifierIds" => list(String.t()()),
        "managedDataIdentifierIds" => list(String.t()())
      }
      
  """
  @type sensitivity_inspection_template_includes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_member_response() :: %{}
      
  """
  @type delete_member_response() :: %{}

  @typedoc """

  ## Example:
      
      s3_classification_scope_update() :: %{
        "excludes" => s3_classification_scope_exclusion_update()
      }
      
  """
  @type s3_classification_scope_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_resources_criteria() :: %{
        "simpleCriterion" => search_resources_simple_criterion(),
        "tagCriterion" => search_resources_tag_criterion()
      }
      
  """
  @type search_resources_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_invitations_response() :: %{
        "unprocessedAccounts" => list(unprocessed_account()())
      }
      
  """
  @type delete_invitations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_reveal_configuration_response() :: %{
        "configuration" => reveal_configuration(),
        "retrievalConfiguration" => retrieval_configuration()
      }
      
  """
  @type update_reveal_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_organization_admin_accounts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_organization_admin_accounts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_custom_data_identifiers_response() :: %{
        "customDataIdentifiers" => list(batch_get_custom_data_identifier_summary()()),
        "notFoundIdentifierIds" => list(String.t()())
      }
      
  """
  @type batch_get_custom_data_identifiers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sort_criteria() :: %{
        "attributeName" => String.t(),
        "orderBy" => list(any())
      }
      
  """
  @type sort_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ip_owner() :: %{
        "asn" => String.t(),
        "asnOrg" => String.t(),
        "isp" => String.t(),
        "org" => String.t()
      }
      
  """
  @type ip_owner() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      criteria_for_job() :: %{
        "simpleCriterion" => simple_criterion_for_job(),
        "tagCriterion" => tag_criterion_for_job()
      }
      
  """
  @type criteria_for_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_sensitive_data_occurrences_availability_request() :: %{}
      
  """
  @type get_sensitive_data_occurrences_availability_request() :: %{}

  @typedoc """

  ## Example:
      
      weekly_schedule() :: %{
        "dayOfWeek" => list(any())
      }
      
  """
  @type weekly_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unprocessable_entity_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unprocessable_entity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_classification_export_configuration_request() :: %{}
      
  """
  @type get_classification_export_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_invitations_count_request() :: %{}
      
  """
  @type get_invitations_count_request() :: %{}

  @typedoc """

  ## Example:
      
      default_detection() :: %{
        "count" => float(),
        "occurrences" => occurrences(),
        "type" => String.t()
      }
      
  """
  @type default_detection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_words_list() :: %{
        "bucketName" => String.t(),
        "objectKey" => String.t()
      }
      
  """
  @type s3_words_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_invitation_request() :: %{
        optional("administratorAccountId") => String.t(),
        optional("masterAccount") => String.t(),
        required("invitationId") => String.t()
      }
      
  """
  @type accept_invitation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_members_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("onlyAssociated") => String.t()
      }
      
  """
  @type list_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_members_response() :: %{
        "members" => list(member()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      block_public_access() :: %{
        "blockPublicAcls" => boolean(),
        "blockPublicPolicy" => boolean(),
        "ignorePublicAcls" => boolean(),
        "restrictPublicBuckets" => boolean()
      }
      
  """
  @type block_public_access() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      last_run_error_status() :: %{
        "code" => list(any())
      }
      
  """
  @type last_run_error_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      statistics() :: %{
        "approximateNumberOfObjectsToProcess" => float(),
        "numberOfRuns" => float()
      }
      
  """
  @type statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_findings_filters_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_findings_filters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_sensitivity_inspection_template_request() :: %{
        optional("description") => String.t(),
        optional("excludes") => sensitivity_inspection_template_excludes(),
        optional("includes") => sensitivity_inspection_template_includes()
      }
      
  """
  @type update_sensitivity_inspection_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_resources_criteria_block() :: %{
        "and" => list(search_resources_criteria()())
      }
      
  """
  @type search_resources_criteria_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      key_value_pair() :: %{
        "key" => String.t(),
        "value" => String.t()
      }
      
  """
  @type key_value_pair() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_profile_detections_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("resourceArn") => String.t()
      }
      
  """
  @type list_resource_profile_detections_request() :: %{String.t() => any()}

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
      
      get_master_account_request() :: %{}
      
  """
  @type get_master_account_request() :: %{}

  @typedoc """

  ## Example:
      
      s3_job_definition() :: %{
        "bucketCriteria" => s3_bucket_criteria_for_job(),
        "bucketDefinitions" => list(s3_bucket_definition_for_job()()),
        "scoping" => scoping()
      }
      
  """
  @type s3_job_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_limit() :: %{
        "isServiceLimited" => boolean(),
        "unit" => list(any()),
        "value" => float()
      }
      
  """
  @type service_limit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      daily_schedule() :: %{}
      
  """
  @type daily_schedule() :: %{}

  @typedoc """

  ## Example:
      
      get_invitations_count_response() :: %{
        "invitationsCount" => float()
      }
      
  """
  @type get_invitations_count_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_sensitive_data_occurrences_availability_response() :: %{
        "code" => list(any()),
        "reasons" => list(list(any())())
      }
      
  """
  @type get_sensitive_data_occurrences_availability_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_resource_profile_detections_response() :: %{}
      
  """
  @type update_resource_profile_detections_response() :: %{}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_findings_publication_configuration_response() :: %{
        "securityHubConfiguration" => security_hub_configuration()
      }
      
  """
  @type get_findings_publication_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      severity_level() :: %{
        "occurrencesThreshold" => float(),
        "severity" => list(any())
      }
      
  """
  @type severity_level() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_invitations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_invitations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_classification_scope_response() :: %{
        "id" => String.t(),
        "name" => String.t(),
        "s3" => s3_classification_scope()
      }
      
  """
  @type get_classification_scope_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      finding_criteria() :: %{
        "criterion" => map()
      }
      
  """
  @type finding_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_details() :: %{
        "replicated" => boolean(),
        "replicatedExternally" => boolean(),
        "replicationAccounts" => list(String.t()())
      }
      
  """
  @type replication_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_sample_findings_response() :: %{}
      
  """
  @type create_sample_findings_response() :: %{}

  @typedoc """

  ## Example:
      
      update_resource_profile_request() :: %{
        optional("sensitivityScoreOverride") => integer(),
        required("resourceArn") => String.t()
      }
      
  """
  @type update_resource_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_usage_totals_response() :: %{
        "timeRange" => list(any()),
        "usageTotals" => list(usage_total()())
      }
      
  """
  @type get_usage_totals_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      member() :: %{
        "accountId" => String.t(),
        "administratorAccountId" => String.t(),
        "arn" => String.t(),
        "email" => String.t(),
        "invitedAt" => non_neg_integer(),
        "masterAccountId" => String.t(),
        "relationshipStatus" => list(any()),
        "tags" => map(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_organization_admin_account_response() :: %{}
      
  """
  @type enable_organization_admin_account_response() :: %{}

  @typedoc """

  ## Example:
      
      update_allow_list_request() :: %{
        optional("description") => String.t(),
        required("criteria") => allow_list_criteria(),
        required("name") => String.t()
      }
      
  """
  @type update_allow_list_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      finding_action() :: %{
        "actionType" => list(any()),
        "apiCallDetails" => api_call_details()
      }
      
  """
  @type finding_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ip_address_details() :: %{
        "ipAddressV4" => String.t(),
        "ipCity" => ip_city(),
        "ipCountry" => ip_country(),
        "ipGeoLocation" => ip_geo_location(),
        "ipOwner" => ip_owner()
      }
      
  """
  @type ip_address_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_classification_export_configuration_request() :: %{
        required("configuration") => classification_export_configuration()
      }
      
  """
  @type put_classification_export_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_resources_simple_criterion() :: %{
        "comparator" => list(any()),
        "key" => list(any()),
        "values" => list(String.t()())
      }
      
  """
  @type search_resources_simple_criterion() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_criterion_for_job() :: %{
        "comparator" => list(any()),
        "tagValues" => list(tag_criterion_pair_for_job()())
      }
      
  """
  @type tag_criterion_for_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_details() :: %{
        "domainName" => String.t()
      }
      
  """
  @type domain_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      criterion_additional_properties() :: %{
        "eq" => list(String.t()()),
        "eqExactMatch" => list(String.t()()),
        "gt" => float(),
        "gte" => float(),
        "lt" => float(),
        "lte" => float(),
        "neq" => list(String.t()())
      }
      
  """
  @type criterion_additional_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      session_issuer() :: %{
        "accountId" => String.t(),
        "arn" => String.t(),
        "principalId" => String.t(),
        "type" => String.t(),
        "userName" => String.t()
      }
      
  """
  @type session_issuer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_reveal_configuration_request() :: %{}
      
  """
  @type get_reveal_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      assumed_role() :: %{
        "accessKeyId" => String.t(),
        "accountId" => String.t(),
        "arn" => String.t(),
        "principalId" => String.t(),
        "sessionContext" => session_context()
      }
      
  """
  @type assumed_role() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unprocessed_account() :: %{
        "accountId" => String.t(),
        "errorCode" => list(any()),
        "errorMessage" => String.t()
      }
      
  """
  @type unprocessed_account() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_automated_discovery_accounts_response() :: %{
        "errors" => list(automated_discovery_account_update_error()())
      }
      
  """
  @type batch_update_automated_discovery_accounts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_classification_scopes_response() :: %{
        "classificationScopes" => list(classification_scope_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_classification_scopes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bucket_permission_configuration() :: %{
        "accountLevelPermissions" => account_level_permissions(),
        "bucketLevelPermissions" => bucket_level_permissions()
      }
      
  """
  @type bucket_permission_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_paused_details() :: %{
        "jobExpiresAt" => non_neg_integer(),
        "jobImminentExpirationHealthEventArn" => String.t(),
        "jobPausedAt" => non_neg_integer()
      }
      
  """
  @type user_paused_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_invitations_response() :: %{
        "unprocessedAccounts" => list(unprocessed_account()())
      }
      
  """
  @type create_invitations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_allow_list_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "criteria" => allow_list_criteria(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "status" => allow_list_status(),
        "tags" => map(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type get_allow_list_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reveal_configuration() :: %{
        "kmsKeyId" => String.t(),
        "status" => list(any())
      }
      
  """
  @type reveal_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_profile_request() :: %{
        required("resourceArn") => String.t()
      }
      
  """
  @type get_resource_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_member_response() :: %{}
      
  """
  @type disassociate_member_response() :: %{}

  @typedoc """

  ## Example:
      
      bucket_level_permissions() :: %{
        "accessControlList" => access_control_list(),
        "blockPublicAccess" => block_public_access(),
        "bucketPolicy" => bucket_policy()
      }
      
  """
  @type bucket_level_permissions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_organization_admin_accounts_response() :: %{
        "adminAccounts" => list(admin_account()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_organization_admin_accounts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_allow_lists_response() :: %{
        "allowLists" => list(allow_list_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_allow_lists_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      matching_bucket() :: %{
        "accountId" => String.t(),
        "automatedDiscoveryMonitoringStatus" => list(any()),
        "bucketName" => String.t(),
        "classifiableObjectCount" => float(),
        "classifiableSizeInBytes" => float(),
        "errorCode" => list(any()),
        "errorMessage" => String.t(),
        "jobDetails" => job_details(),
        "lastAutomatedDiscoveryTime" => non_neg_integer(),
        "objectCount" => float(),
        "objectCountByEncryptionType" => object_count_by_encryption_type(),
        "sensitivityScore" => integer(),
        "sizeInBytes" => float(),
        "sizeInBytesCompressed" => float(),
        "unclassifiableObjectCount" => object_level_statistics(),
        "unclassifiableObjectSizeInBytes" => object_level_statistics()
      }
      
  """
  @type matching_bucket() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_automated_discovery_configuration_request() :: %{}
      
  """
  @type get_automated_discovery_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      get_custom_data_identifier_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "deleted" => boolean(),
        "description" => String.t(),
        "id" => String.t(),
        "ignoreWords" => list(String.t()()),
        "keywords" => list(String.t()()),
        "maximumMatchDistance" => integer(),
        "name" => String.t(),
        "regex" => String.t(),
        "severityLevels" => list(severity_level()()),
        "tags" => map()
      }
      
  """
  @type get_custom_data_identifier_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_sensitivity_inspection_templates_response() :: %{
        "nextToken" => String.t(),
        "sensitivityInspectionTemplates" => list(sensitivity_inspection_templates_entry()())
      }
      
  """
  @type list_sensitivity_inspection_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_data_identifiers() :: %{
        "detections" => list(custom_detection()()),
        "totalCount" => float()
      }
      
  """
  @type custom_data_identifiers() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_from_administrator_account_request() :: %{}
      
  """
  @type disassociate_from_administrator_account_request() :: %{}

  @typedoc """

  ## Example:
      
      access_control_list() :: %{
        "allowsPublicReadAccess" => boolean(),
        "allowsPublicWriteAccess" => boolean()
      }
      
  """
  @type access_control_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_record() :: %{
        "accountId" => String.t(),
        "automatedDiscoveryFreeTrialStartDate" => non_neg_integer(),
        "freeTrialStartDate" => non_neg_integer(),
        "usage" => list(usage_by_account()())
      }
      
  """
  @type usage_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_administrator_account_response() :: %{
        "administrator" => invitation()
      }
      
  """
  @type get_administrator_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_custom_data_identifier_response() :: %{}
      
  """
  @type delete_custom_data_identifier_response() :: %{}

  @typedoc """

  ## Example:
      
      job_scoping_block() :: %{
        "and" => list(job_scope_term()())
      }
      
  """
  @type job_scoping_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_macie_response() :: %{}
      
  """
  @type enable_macie_response() :: %{}

  @typedoc """

  ## Example:
      
      tag_criterion_pair_for_job() :: %{
        "key" => String.t(),
        "value" => String.t()
      }
      
  """
  @type tag_criterion_pair_for_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      group_count() :: %{
        "count" => float(),
        "groupKey" => String.t()
      }
      
  """
  @type group_count() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      matching_resource() :: %{
        "matchingBucket" => matching_bucket()
      }
      
  """
  @type matching_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      page() :: %{
        "lineRange" => range(),
        "offsetRange" => range(),
        "pageNumber" => float()
      }
      
  """
  @type page() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_details() :: %{
        "action" => finding_action(),
        "actor" => finding_actor()
      }
      
  """
  @type policy_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_classification_job_request() :: %{
        optional("allowListIds") => list(String.t()()),
        optional("customDataIdentifierIds") => list(String.t()()),
        optional("description") => String.t(),
        optional("initialRun") => boolean(),
        optional("managedDataIdentifierIds") => list(String.t()()),
        optional("managedDataIdentifierSelector") => list(any()),
        optional("samplingPercentage") => integer(),
        optional("scheduleFrequency") => job_schedule_frequency(),
        optional("tags") => map(),
        required("clientToken") => String.t(),
        required("jobType") => list(any()),
        required("name") => String.t(),
        required("s3JobDefinition") => s3_job_definition()
      }
      
  """
  @type create_classification_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bucket_count_by_effective_permission() :: %{
        "publiclyAccessible" => float(),
        "publiclyReadable" => float(),
        "publiclyWritable" => float(),
        "unknown" => float()
      }
      
  """
  @type bucket_count_by_effective_permission() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      simple_criterion_for_job() :: %{
        "comparator" => list(any()),
        "key" => list(any()),
        "values" => list(String.t()())
      }
      
  """
  @type simple_criterion_for_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detected_data_details() :: %{
        "value" => String.t()
      }
      
  """
  @type detected_data_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      automated_discovery_account() :: %{
        "accountId" => String.t(),
        "status" => list(any())
      }
      
  """
  @type automated_discovery_account() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_classification_job_request() :: %{
        required("jobStatus") => list(any())
      }
      
  """
  @type update_classification_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_usage_statistics_response() :: %{
        "nextToken" => String.t(),
        "records" => list(usage_record()()),
        "timeRange" => list(any())
      }
      
  """
  @type get_usage_statistics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_invitations_request() :: %{
        optional("disableEmailNotification") => boolean(),
        optional("message") => String.t(),
        required("accountIds") => list(String.t()())
      }
      
  """
  @type create_invitations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_allow_list_request() :: %{
        optional("description") => String.t(),
        optional("tags") => map(),
        required("clientToken") => String.t(),
        required("criteria") => allow_list_criteria(),
        required("name") => String.t()
      }
      
  """
  @type create_allow_list_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_findings_publication_configuration_response() :: %{}
      
  """
  @type put_findings_publication_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      list_classification_jobs_response() :: %{
        "items" => list(job_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_classification_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_invitations_response() :: %{
        "invitations" => list(invitation()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_invitations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_member_request() :: %{}
      
  """
  @type disassociate_member_request() :: %{}

  @typedoc """

  ## Example:
      
      disable_macie_response() :: %{}
      
  """
  @type disable_macie_response() :: %{}

  @type accept_invitation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_get_custom_data_identifiers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_update_automated_discovery_accounts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_allow_list_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_classification_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_custom_data_identifier_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_findings_filter_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_invitations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_member_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_sample_findings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type decline_invitations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_allow_list_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_custom_data_identifier_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_findings_filter_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_invitations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_member_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_buckets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_classification_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_organization_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disable_macie_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disable_organization_admin_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_from_administrator_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_from_master_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_member_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type enable_macie_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type enable_organization_admin_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_administrator_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_allow_list_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_automated_discovery_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_bucket_statistics_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_classification_export_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_classification_scope_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_custom_data_identifier_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_finding_statistics_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_findings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_findings_filter_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_findings_publication_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_invitations_count_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_macie_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_master_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_member_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_resource_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_reveal_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_sensitive_data_occurrences_errors() ::
          throttling_exception()
          | access_denied_exception()
          | unprocessable_entity_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_sensitive_data_occurrences_availability_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_sensitivity_inspection_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_usage_statistics_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_usage_totals_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_allow_lists_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_automated_discovery_accounts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_classification_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_classification_scopes_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_custom_data_identifiers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_findings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_findings_filters_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_invitations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_members_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_organization_admin_accounts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_resource_profile_artifacts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_resource_profile_detections_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type list_sensitivity_inspection_templates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type put_classification_export_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_findings_publication_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type search_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type test_custom_data_identifier_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_allow_list_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_automated_discovery_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type update_classification_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_classification_scope_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_findings_filter_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_macie_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_member_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_organization_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_resource_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_resource_profile_detections_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_reveal_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type update_sensitivity_inspection_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2020-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "macie2",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Macie2",
      signature_version: "v4",
      signing_name: "macie2",
      target_prefix: nil
    }
  end

  @doc """
  Accepts an Amazon Macie membership invitation that was received from a specific
  account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20AcceptInvitation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:invitation_id` (`t:string`) The unique identifier for the invitation to
  accept.
    * `:administrator_account_id` (`t:string`) The Amazon Web Services account ID
  for the account that sent the invitation.
    * `:master_account` (`t:string`) (Deprecated) The Amazon Web Services account ID
  for the account that sent the invitation. This property has been replaced by
  the administratorAccountId property and is retained only for backward
  compatibility.

  ## Optional parameters:
  """

  @spec accept_invitation(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, accept_invitation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_invitation_errors()}

  def accept_invitation(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/invitations/accept"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves information about one or more custom data identifiers.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20BatchGetCustomDataIdentifiers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map | nil`):
    * `:ids` (`t:list[com.amazonaws.macie2#__string]`) An array of custom data
  identifier IDs, one for each custom data identifier to retrieve information
  about.

  ## Optional parameters:
  """

  @spec batch_get_custom_data_identifiers(AWS.Client.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, batch_get_custom_data_identifiers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_custom_data_identifiers_errors()}

  def batch_get_custom_data_identifiers(%Client{} = client, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/custom-data-identifiers/get"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Changes the status of automated sensitive data discovery for one or more
  accounts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20BatchUpdateAutomatedDiscoveryAccounts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map | nil`):
    * `:accounts` (`t:list[com.amazonaws.macie2#AutomatedDiscoveryAccountUpdate]`)
  An array of objects, one for each account to change the status of automated
  sensitive data discovery for. Each object specifies the Amazon Web Services
  account ID for an account and a new status for that account.

  ## Optional parameters:
  """

  @spec batch_update_automated_discovery_accounts(
          AWS.Client.t(),
          input :: map() | nil,
          Keyword.t()
        ) ::
          {:ok, batch_update_automated_discovery_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_update_automated_discovery_accounts_errors()}

  def batch_update_automated_discovery_accounts(%Client{} = client, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/automated-discovery/accounts"

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

    body = input

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Creates and defines the settings for an allow list.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20CreateAllowList&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:client_token` (`t:string`) A unique, case-sensitive token that you provide
  to ensure the idempotency of the request.
    * `:criteria` (`t:structure`) The criteria that specify the text or text pattern
  to ignore. The criteria can be the location and name of an S3 object that
  lists specific text to ignore (s3WordsList), or a regular expression (regex)
  that defines a text pattern to ignore.
    * `:name` (`t:string`) A custom name for the allow list. The name can contain as
  many as 128 characters.
    * `:description` (`t:string`) A custom description of the allow list. The
  description can contain as many as 512 characters.
    * `:tags` (`t:map`) A map of key-value pairs that specifies the tags to
  associate with the allow list.

  ## Optional parameters:
  """

  @spec create_allow_list(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_allow_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_allow_list_errors()}

  def create_allow_list(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/allow-lists"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates and defines the settings for a classification job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20CreateClassificationJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:client_token` (`t:string`) A unique, case-sensitive token that you provide
  to ensure the idempotency of the request.
    * `:job_type` (`t:enum["ONE_TIME|SCHEDULED"]`) The schedule for running the job.
  Valid values are:
    * `:name` (`t:string`) A custom name for the job. The name can contain as many
  as 500 characters.
    * `:s3_job_definition` (`t:structure`) The S3 buckets that contain the objects
  to analyze, and the scope of that analysis.
    * `:allow_list_ids` (`t:list[com.amazonaws.macie2#__string]`) An array of unique
  identifiers, one for each allow list for the job to use when it analyzes
  data.
    * `:custom_data_identifier_ids` (`t:list[com.amazonaws.macie2#__string]`) An
  array of unique identifiers, one for each custom data identifier for the job
  to use when it analyzes data. To use only managed data identifiers, don't
  specify a value for this property and specify a value other than NONE for
  the managedDataIdentifierSelector property.
    * `:description` (`t:string`) A custom description of the job. The description
  can contain as many as 200 characters.
    * `:initial_run` (`t:boolean`) For a recurring job, specifies whether to analyze
  all existing, eligible objects immediately after the job is created (true).
  To analyze only those objects that are created or changed after you create
  the job and before the job's first scheduled run, set this value to false.
    * `:managed_data_identifier_ids` (`t:list[com.amazonaws.macie2#__string]`) An
  array of unique identifiers, one for each managed data identifier for the
  job to include (use) or exclude (not use) when it analyzes data. Inclusion
  or exclusion depends on the managed data identifier selection type that you
  specify for the job (managedDataIdentifierSelector).
    * `:managed_data_identifier_selector`
  (`t:enum["ALL|EXCLUDE|INCLUDE|NONE|RECOMMENDED"]`) The selection type to
  apply when determining which managed data identifiers the job uses to
  analyze data. Valid values are:
    * `:sampling_percentage` (`t:integer`) The sampling depth, as a percentage, for
  the job to apply when processing objects. This value determines the
  percentage of eligible objects that the job analyzes. If this value is less
  than 100, Amazon Macie selects the objects to analyze at random, up to the
  specified percentage, and analyzes all the data in those objects.
    * `:schedule_frequency` (`t:structure`) The recurrence pattern for running the
  job. To run the job only once, don't specify a value for this property and
  set the value for the jobType property to ONE_TIME.
    * `:tags` (`t:map`) A map of key-value pairs that specifies the tags to
  associate with the job.

  ## Optional parameters:
  """

  @spec create_classification_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_classification_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_classification_job_errors()}

  def create_classification_job(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/jobs"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates and defines the criteria and other settings for a custom data
  identifier.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20CreateCustomDataIdentifier&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:name` (`t:string`) A custom name for the custom data identifier. The name
  can contain as many as 128 characters.
    * `:regex` (`t:string`) The regular expression (regex) that defines the pattern
  to match. The expression can contain as many as 512 characters.
    * `:client_token` (`t:string`) A unique, case-sensitive token that you provide
  to ensure the idempotency of the request.
    * `:description` (`t:string`) A custom description of the custom data
  identifier. The description can contain as many as 512 characters.
    * `:ignore_words` (`t:list[com.amazonaws.macie2#__string]`) An array that lists
  specific character sequences (ignore words) to exclude from the results. If
  the text matched by the regular expression contains any string in this
  array, Amazon Macie ignores it. The array can contain as many as 10 ignore
  words. Each ignore word can contain 4-90 UTF-8 characters. Ignore words are
  case sensitive.
    * `:keywords` (`t:list[com.amazonaws.macie2#__string]`) An array that lists
  specific character sequences (keywords), one of which must precede and be
  within proximity (maximumMatchDistance) of the regular expression to match.
  The array can contain as many as 50 keywords. Each keyword can contain 3-90
  UTF-8 characters. Keywords aren't case sensitive.
    * `:maximum_match_distance` (`t:integer`) The maximum number of characters that
  can exist between the end of at least one complete character sequence
  specified by the keywords array and the end of the text that matches the
  regex pattern. If a complete keyword precedes all the text that matches the
  pattern and the keyword is within the specified distance, Amazon Macie
  includes the result. The distance can be 1-300 characters. The default value
  is 50.
    * `:severity_levels` (`t:list[com.amazonaws.macie2#SeverityLevel]`) The severity
  to assign to findings that the custom data identifier produces, based on the
  number of occurrences of text that match the custom data identifier's
  detection criteria. You can specify as many as three SeverityLevel objects
  in this array, one for each severity: LOW, MEDIUM, or HIGH. If you specify
  more than one, the occurrences thresholds must be in ascending order by
  severity, moving from LOW to HIGH. For example, 1 for LOW, 50 for MEDIUM,
  and 100 for HIGH. If an S3 object contains fewer occurrences than the lowest
  specified threshold, Amazon Macie doesn't create a finding.
    * `:tags` (`t:map`) A map of key-value pairs that specifies the tags to
  associate with the custom data identifier.

  ## Optional parameters:
  """

  @spec create_custom_data_identifier(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_custom_data_identifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_custom_data_identifier_errors()}

  def create_custom_data_identifier(%Client{} = client, input, options \\ [])
      when is_map(input) do
    url_path = "/custom-data-identifiers"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates and defines the criteria and other settings for a findings filter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20CreateFindingsFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:action` (`t:enum["ARCHIVE|NOOP"]`) The action to perform on findings that
  match the filter criteria (findingCriteria). Valid values are: ARCHIVE,
  suppress (automatically archive) the findings; and, NOOP, don't perform any
  action on the findings.
    * `:finding_criteria` (`t:structure`) The criteria to use to filter findings.
    * `:name` (`t:string`) A custom name for the filter. The name must contain at
  least 3 characters and can contain as many as 64 characters.
    * `:client_token` (`t:string`) A unique, case-sensitive token that you provide
  to ensure the idempotency of the request.
    * `:description` (`t:string`) A custom description of the filter. The
  description can contain as many as 512 characters.
    * `:position` (`t:integer`) The position of the filter in the list of saved
  filters on the Amazon Macie console. This value also determines the order in
  which the filter is applied to findings, relative to other filters that are
  also applied to the findings.
    * `:tags` (`t:map`) A map of key-value pairs that specifies the tags to
  associate with the filter.

  ## Optional parameters:
  """

  @spec create_findings_filter(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_findings_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_findings_filter_errors()}

  def create_findings_filter(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/findingsfilters"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Sends an Amazon Macie membership invitation to one or more accounts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20CreateInvitations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:account_ids` (`t:list[com.amazonaws.macie2#__string]`) An array that lists
  Amazon Web Services account IDs, one for each account to send the invitation
  to.
    * `:disable_email_notification` (`t:boolean`) Specifies whether to send the
  invitation as an email message. If this value is false, Amazon Macie sends
  the invitation (as an email message) to the email address that you specified
  for the recipient's account when you associated the account with your
  account. The default value is false.
    * `:message` (`t:string`) Custom text to include in the email message that
  contains the invitation. The text can contain as many as 80 alphanumeric
  characters.

  ## Optional parameters:
  """

  @spec create_invitations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_invitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_invitations_errors()}

  def create_invitations(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/invitations"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Associates an account with an Amazon Macie administrator account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20CreateMember&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:account` (`t:structure`) The details of the account to associate with the
  administrator account.
    * `:tags` (`t:map`) A map of key-value pairs that specifies the tags to
  associate with the account in Amazon Macie.

  ## Optional parameters:
  """

  @spec create_member(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_member_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_member_errors()}

  def create_member(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/members"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates sample findings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20CreateSampleFindings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map | nil`):
    * `:finding_types` (`t:list[com.amazonaws.macie2#FindingType]`) An array of
  finding types, one for each type of sample finding to create. To create a
  sample of every type of finding that Amazon Macie supports, don't include
  this array in your request.

  ## Optional parameters:
  """

  @spec create_sample_findings(AWS.Client.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, create_sample_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_sample_findings_errors()}

  def create_sample_findings(%Client{} = client, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/findings/sample"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Declines Amazon Macie membership invitations that were received from specific
  accounts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20DeclineInvitations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:account_ids` (`t:list[com.amazonaws.macie2#__string]`) An array that lists
  Amazon Web Services account IDs, one for each account that sent an
  invitation to decline.

  ## Optional parameters:
  """

  @spec decline_invitations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, decline_invitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, decline_invitations_errors()}

  def decline_invitations(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/invitations/decline"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Deletes an allow list.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20DeleteAllowList&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The unique identifier for the Amazon Macie resource that
  the request applies to.

  ## Optional parameters:
  * `:ignore_job_checks` (`t:string`) Specifies whether to force deletion of the
  allow list, even if active classification jobs are configured to use the
  list.
  """

  @spec delete_allow_list(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_allow_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_allow_list_errors()}

  def delete_allow_list(%Client{} = client, id, options \\ []) do
    url_path = "/allow-lists/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = [ignore_job_checks: nil]

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
      if opt_val = Keyword.get(options, :ignore_job_checks) do
        [{"ignoreJobChecks", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:ignore_job_checks])

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
  Soft deletes a custom data identifier.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20DeleteCustomDataIdentifier&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The unique identifier for the Amazon Macie resource that
  the request applies to.

  ## Optional parameters:
  """

  @spec delete_custom_data_identifier(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_custom_data_identifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_custom_data_identifier_errors()}

  def delete_custom_data_identifier(%Client{} = client, id, options \\ []) do
    url_path = "/custom-data-identifiers/#{AWS.Util.encode_uri(id)}"

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
  Deletes a findings filter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20DeleteFindingsFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The unique identifier for the Amazon Macie resource that
  the request applies to.

  ## Optional parameters:
  """

  @spec delete_findings_filter(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_findings_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_findings_filter_errors()}

  def delete_findings_filter(%Client{} = client, id, options \\ []) do
    url_path = "/findingsfilters/#{AWS.Util.encode_uri(id)}"

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
  Deletes Amazon Macie membership invitations that were received from specific
  accounts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20DeleteInvitations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:account_ids` (`t:list[com.amazonaws.macie2#__string]`) An array that lists
  Amazon Web Services account IDs, one for each account that sent an
  invitation to delete.

  ## Optional parameters:
  """

  @spec delete_invitations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_invitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_invitations_errors()}

  def delete_invitations(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/invitations/delete"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Deletes the association between an Amazon Macie administrator account and an
  account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20DeleteMember&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The unique identifier for the Amazon Macie resource that
  the request applies to.

  ## Optional parameters:
  """

  @spec delete_member(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_member_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_member_errors()}

  def delete_member(%Client{} = client, id, options \\ []) do
    url_path = "/members/#{AWS.Util.encode_uri(id)}"

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
  Retrieves (queries) statistical data and other information about one or more S3
  buckets that Amazon Macie monitors and analyzes for an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20DescribeBuckets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map | nil`):
    * `:criteria` (`t:map`) The criteria to use to filter the query results.
    * `:max_results` (`t:integer`) The maximum number of items to include in each
  page of the response. The default value is 50.
    * `:next_token` (`t:string`) The nextToken string that specifies which page of
  results to return in a paginated response.
    * `:sort_criteria` (`t:structure`) The criteria to use to sort the query
  results.

  ## Optional parameters:
  """

  @spec describe_buckets(AWS.Client.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, describe_buckets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_buckets_errors()}

  def describe_buckets(%Client{} = client, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/datasources/s3"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves the status and settings for a classification job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20DescribeClassificationJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:job_id` (`t:string`) The unique identifier for the classification job.

  ## Optional parameters:
  """

  @spec describe_classification_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_classification_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_classification_job_errors()}

  def describe_classification_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}"

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
  Retrieves the Amazon Macie configuration settings for an organization in
  Organizations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20DescribeOrganizationConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec describe_organization_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, describe_organization_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_organization_configuration_errors()}

  def describe_organization_configuration(%Client{} = client, options \\ []) do
    url_path = "/admin/configuration"

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
  Disables Amazon Macie and deletes all settings and resources for a Macie
  account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20DisableMacie&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec disable_macie(AWS.Client.t(), Keyword.t()) ::
          {:ok, disable_macie_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_macie_errors()}

  def disable_macie(%Client{} = client, options \\ []) do
    url_path = "/macie"

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
  Disables an account as the delegated Amazon Macie administrator account for an
  organization in Organizations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20DisableOrganizationAdminAccount&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:admin_account_id` (`t:string`) The Amazon Web Services account ID of the
  delegated Amazon Macie administrator account.

  ## Optional parameters:
  """

  @spec disable_organization_admin_account(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, disable_organization_admin_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_organization_admin_account_errors()}

  def disable_organization_admin_account(%Client{} = client, admin_account_id, options \\ [])
      when is_binary(admin_account_id) do
    url_path = "/admin"

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
    query_params = [{"adminAccountId", admin_account_id}]

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
  Disassociates a member account from its Amazon Macie administrator account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20DisassociateFromAdministratorAccount&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec disassociate_from_administrator_account(AWS.Client.t(), Keyword.t()) ::
          {:ok, disassociate_from_administrator_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_from_administrator_account_errors()}

  def disassociate_from_administrator_account(%Client{} = client, options \\ []) do
    url_path = "/administrator/disassociate"

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
  (Deprecated) Disassociates a member account from its Amazon Macie administrator
  account. This operation has been replaced by the
  DisassociateFromAdministratorAccount operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20DisassociateFromMasterAccount&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec disassociate_from_master_account(AWS.Client.t(), Keyword.t()) ::
          {:ok, disassociate_from_master_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_from_master_account_errors()}

  def disassociate_from_master_account(%Client{} = client, options \\ []) do
    url_path = "/master/disassociate"

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
  Disassociates an Amazon Macie administrator account from a member account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20DisassociateMember&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The unique identifier for the Amazon Macie resource that
  the request applies to.

  ## Optional parameters:
  """

  @spec disassociate_member(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, disassociate_member_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_member_errors()}

  def disassociate_member(%Client{} = client, id, options \\ []) do
    url_path = "/members/disassociate/#{AWS.Util.encode_uri(id)}"

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
  Enables Amazon Macie and specifies the configuration settings for a Macie
  account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20EnableMacie&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map | nil`):
    * `:client_token` (`t:string`) A unique, case-sensitive token that you provide
  to ensure the idempotency of the request.
    * `:finding_publishing_frequency`
  (`t:enum["FIFTEEN_MINUTES|ONE_HOUR|SIX_HOURS"]`) Specifies how often to
  publish updates to policy findings for the account. This includes publishing
  updates to Security Hub and Amazon EventBridge (formerly Amazon CloudWatch
  Events).
    * `:status` (`t:enum["ENABLED|PAUSED"]`) Specifies the new status for the
  account. To enable Amazon Macie and start all Macie activities for the
  account, set this value to ENABLED.

  ## Optional parameters:
  """

  @spec enable_macie(AWS.Client.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, enable_macie_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_macie_errors()}

  def enable_macie(%Client{} = client, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/macie"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Designates an account as the delegated Amazon Macie administrator account for an
  organization in Organizations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20EnableOrganizationAdminAccount&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:admin_account_id` (`t:string`) The Amazon Web Services account ID for the
  account to designate as the delegated Amazon Macie administrator account for
  the organization.
    * `:client_token` (`t:string`) A unique, case-sensitive token that you provide
  to ensure the idempotency of the request.

  ## Optional parameters:
  """

  @spec enable_organization_admin_account(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, enable_organization_admin_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_organization_admin_account_errors()}

  def enable_organization_admin_account(%Client{} = client, input, options \\ [])
      when is_map(input) do
    url_path = "/admin"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves information about the Amazon Macie administrator account for an
  account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20GetAdministratorAccount&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_administrator_account(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_administrator_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_administrator_account_errors()}

  def get_administrator_account(%Client{} = client, options \\ []) do
    url_path = "/administrator"

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
  Retrieves the settings and status of an allow list.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20GetAllowList&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The unique identifier for the Amazon Macie resource that
  the request applies to.

  ## Optional parameters:
  """

  @spec get_allow_list(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_allow_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_allow_list_errors()}

  def get_allow_list(%Client{} = client, id, options \\ []) do
    url_path = "/allow-lists/#{AWS.Util.encode_uri(id)}"

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
  Retrieves the configuration settings and status of automated sensitive data
  discovery for an organization or standalone account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20GetAutomatedDiscoveryConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_automated_discovery_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_automated_discovery_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_automated_discovery_configuration_errors()}

  def get_automated_discovery_configuration(%Client{} = client, options \\ []) do
    url_path = "/automated-discovery/configuration"

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
  Retrieves (queries) aggregated statistical data about all the S3 buckets that
  Amazon Macie monitors and analyzes for an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20GetBucketStatistics&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map | nil`):
    * `:account_id` (`t:string`) The unique identifier for the Amazon Web Services
  account.

  ## Optional parameters:
  """

  @spec get_bucket_statistics(AWS.Client.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, get_bucket_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_bucket_statistics_errors()}

  def get_bucket_statistics(%Client{} = client, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/datasources/s3/statistics"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves the configuration settings for storing data classification results.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20GetClassificationExportConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_classification_export_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_classification_export_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_classification_export_configuration_errors()}

  def get_classification_export_configuration(%Client{} = client, options \\ []) do
    url_path = "/classification-export-configuration"

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
  Retrieves the classification scope settings for an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20GetClassificationScope&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The unique identifier for the Amazon Macie resource that
  the request applies to.

  ## Optional parameters:
  """

  @spec get_classification_scope(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_classification_scope_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_classification_scope_errors()}

  def get_classification_scope(%Client{} = client, id, options \\ []) do
    url_path = "/classification-scopes/#{AWS.Util.encode_uri(id)}"

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
  Retrieves the criteria and other settings for a custom data identifier.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20GetCustomDataIdentifier&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The unique identifier for the Amazon Macie resource that
  the request applies to.

  ## Optional parameters:
  """

  @spec get_custom_data_identifier(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_custom_data_identifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_custom_data_identifier_errors()}

  def get_custom_data_identifier(%Client{} = client, id, options \\ []) do
    url_path = "/custom-data-identifiers/#{AWS.Util.encode_uri(id)}"

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
  Retrieves (queries) aggregated statistical data about findings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20GetFindingStatistics&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:group_by`
  (`t:enum["classificationDetails_jobId|resourcesAffected_s3Bucket_name|severity_description|type"]`)
  The finding property to use to group the query results. Valid values are:
    * `:finding_criteria` (`t:structure`) The criteria to use to filter the query
  results.
    * `:size` (`t:integer`) The maximum number of items to include in each page of
  the response.
    * `:sort_criteria` (`t:structure`) The criteria to use to sort the query
  results.

  ## Optional parameters:
  """

  @spec get_finding_statistics(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_finding_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_finding_statistics_errors()}

  def get_finding_statistics(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/findings/statistics"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves the details of one or more findings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20GetFindings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:finding_ids` (`t:list[com.amazonaws.macie2#__string]`) An array of strings
  that lists the unique identifiers for the findings to retrieve. You can
  specify as many as 50 unique identifiers in this array.
    * `:sort_criteria` (`t:structure`) The criteria for sorting the results of the
  request.

  ## Optional parameters:
  """

  @spec get_findings(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_findings_errors()}

  def get_findings(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/findings/describe"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves the criteria and other settings for a findings filter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20GetFindingsFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The unique identifier for the Amazon Macie resource that
  the request applies to.

  ## Optional parameters:
  """

  @spec get_findings_filter(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_findings_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_findings_filter_errors()}

  def get_findings_filter(%Client{} = client, id, options \\ []) do
    url_path = "/findingsfilters/#{AWS.Util.encode_uri(id)}"

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
  Retrieves the configuration settings for publishing findings to Security Hub.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20GetFindingsPublicationConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_findings_publication_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_findings_publication_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_findings_publication_configuration_errors()}

  def get_findings_publication_configuration(%Client{} = client, options \\ []) do
    url_path = "/findings-publication-configuration"

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
  Retrieves the count of Amazon Macie membership invitations that were received by
  an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20GetInvitationsCount&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_invitations_count(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_invitations_count_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_invitations_count_errors()}

  def get_invitations_count(%Client{} = client, options \\ []) do
    url_path = "/invitations/count"

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
  Retrieves the status and configuration settings for an Amazon Macie account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20GetMacieSession&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_macie_session(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_macie_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_macie_session_errors()}

  def get_macie_session(%Client{} = client, options \\ []) do
    url_path = "/macie"

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
  (Deprecated) Retrieves information about the Amazon Macie administrator account
  for an account. This operation has been replaced by the
  GetAdministratorAccount operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20GetMasterAccount&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_master_account(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_master_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_master_account_errors()}

  def get_master_account(%Client{} = client, options \\ []) do
    url_path = "/master"

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
  Retrieves information about an account that's associated with an Amazon Macie
  administrator account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20GetMember&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The unique identifier for the Amazon Macie resource that
  the request applies to.

  ## Optional parameters:
  """

  @spec get_member(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_member_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_member_errors()}

  def get_member(%Client{} = client, id, options \\ []) do
    url_path = "/members/#{AWS.Util.encode_uri(id)}"

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
  Retrieves (queries) sensitive data discovery statistics and the sensitivity
  score for an S3 bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20GetResourceProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the S3 bucket
  that the request applies to.

  ## Optional parameters:
  """

  @spec get_resource_profile(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_resource_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_profile_errors()}

  def get_resource_profile(%Client{} = client, resource_arn, options \\ [])
      when is_binary(resource_arn) do
    url_path = "/resource-profiles"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the status and configuration settings for retrieving occurrences of
  sensitive data reported by findings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20GetRevealConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_reveal_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_reveal_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_reveal_configuration_errors()}

  def get_reveal_configuration(%Client{} = client, options \\ []) do
    url_path = "/reveal-configuration"

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
  Retrieves occurrences of sensitive data reported by a finding.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20GetSensitiveDataOccurrences&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:finding_id` (`t:string`) The unique identifier for the finding.

  ## Optional parameters:
  """

  @spec get_sensitive_data_occurrences(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_sensitive_data_occurrences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sensitive_data_occurrences_errors()}

  def get_sensitive_data_occurrences(%Client{} = client, finding_id, options \\ []) do
    url_path = "/findings/#{AWS.Util.encode_uri(finding_id)}/reveal"

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
  Checks whether occurrences of sensitive data can be retrieved for a finding.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20GetSensitiveDataOccurrencesAvailability&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:finding_id` (`t:string`) The unique identifier for the finding.

  ## Optional parameters:
  """

  @spec get_sensitive_data_occurrences_availability(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_sensitive_data_occurrences_availability_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sensitive_data_occurrences_availability_errors()}

  def get_sensitive_data_occurrences_availability(%Client{} = client, finding_id, options \\ []) do
    url_path = "/findings/#{AWS.Util.encode_uri(finding_id)}/reveal/availability"

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
  Retrieves the settings for the sensitivity inspection template for an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20GetSensitivityInspectionTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The unique identifier for the Amazon Macie resource that
  the request applies to.

  ## Optional parameters:
  """

  @spec get_sensitivity_inspection_template(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_sensitivity_inspection_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sensitivity_inspection_template_errors()}

  def get_sensitivity_inspection_template(%Client{} = client, id, options \\ []) do
    url_path = "/templates/sensitivity-inspections/#{AWS.Util.encode_uri(id)}"

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
  Retrieves (queries) quotas and aggregated usage data for one or more accounts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20GetUsageStatistics&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map | nil`):
    * `:filter_by` (`t:list[com.amazonaws.macie2#UsageStatisticsFilter]`) An array
  of objects, one for each condition to use to filter the query results. If
  you specify more than one condition, Amazon Macie uses an AND operator to
  join the conditions.
    * `:max_results` (`t:integer`) The maximum number of items to include in each
  page of the response.
    * `:next_token` (`t:string`) The nextToken string that specifies which page of
  results to return in a paginated response.
    * `:sort_by` (`t:structure`) The criteria to use to sort the query results.
    * `:time_range` (`t:enum["MONTH_TO_DATE|PAST_30_DAYS"]`) The inclusive time
  period to query usage data for. Valid values are: MONTH_TO_DATE, for the
  current calendar month to date; and, PAST_30_DAYS, for the preceding 30
  days. If you don't specify a value, Amazon Macie provides usage data for the
  preceding 30 days.

  ## Optional parameters:
  """

  @spec get_usage_statistics(AWS.Client.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, get_usage_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_usage_statistics_errors()}

  def get_usage_statistics(%Client{} = client, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/usage/statistics"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves (queries) aggregated usage data for an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20GetUsageTotals&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:time_range` (`t:string`) The inclusive time period to retrieve the data for.
  Valid values are: MONTH_TO_DATE, for the current calendar month to date;
  and, PAST_30_DAYS, for the preceding 30 days. If you don't specify a value
  for this parameter, Amazon Macie provides aggregated usage data for the
  preceding 30 days.
  """

  @spec get_usage_totals(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_usage_totals_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_usage_totals_errors()}

  def get_usage_totals(%Client{} = client, options \\ []) do
    url_path = "/usage"

    # Validate optional parameters
    optional_params = [time_range: nil]

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
      if opt_val = Keyword.get(options, :time_range) do
        [{"timeRange", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:time_range])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a subset of information about all the allow lists for an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20ListAllowLists&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of items to include in each
  page of a paginated response.
  * `:next_token` (`t:string`) The nextToken string that specifies which page of
  results to return in a paginated response.
  """

  @spec list_allow_lists(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_allow_lists_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_allow_lists_errors()}

  def list_allow_lists(%Client{} = client, options \\ []) do
    url_path = "/allow-lists"

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
  Retrieves the status of automated sensitive data discovery for one or more
  accounts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20ListAutomatedDiscoveryAccounts&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:account_ids` (`t:list[com.amazonaws.macie2#__string]`) The Amazon Web
  Services account ID for each account, for as many as 50 accounts. To
  retrieve the status for multiple accounts, append the accountIds parameter
  and argument for each account, separated by an ampersand (&). To retrieve
  the status for all the accounts in an organization, omit this parameter.
  * `:max_results` (`t:integer`) The maximum number of items to include in each
  page of a paginated response.
  * `:next_token` (`t:string`) The nextToken string that specifies which page of
  results to return in a paginated response.
  """

  @spec list_automated_discovery_accounts(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_automated_discovery_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_automated_discovery_accounts_errors()}

  def list_automated_discovery_accounts(%Client{} = client, options \\ []) do
    url_path = "/automated-discovery/accounts"

    # Validate optional parameters
    optional_params = [account_ids: nil, max_results: nil, next_token: nil]

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

    query_params =
      if opt_val = Keyword.get(options, :account_ids) do
        [{"accountIds", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:account_ids, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a subset of information about one or more classification jobs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20ListClassificationJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map | nil`):
    * `:filter_criteria` (`t:structure`) The criteria to use to filter the results.
    * `:max_results` (`t:integer`) The maximum number of items to include in each
  page of the response.
    * `:next_token` (`t:string`) The nextToken string that specifies which page of
  results to return in a paginated response.
    * `:sort_criteria` (`t:structure`) The criteria to use to sort the results.

  ## Optional parameters:
  """

  @spec list_classification_jobs(AWS.Client.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, list_classification_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_classification_jobs_errors()}

  def list_classification_jobs(%Client{} = client, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/jobs/list"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves a subset of information about the classification scope for an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20ListClassificationScopes&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:name` (`t:string`) The name of the classification scope to retrieve the
  unique identifier for.
  * `:next_token` (`t:string`) The nextToken string that specifies which page of
  results to return in a paginated response.
  """

  @spec list_classification_scopes(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_classification_scopes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_classification_scopes_errors()}

  def list_classification_scopes(%Client{} = client, options \\ []) do
    url_path = "/classification-scopes"

    # Validate optional parameters
    optional_params = [name: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :name) do
        [{"name", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:name, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a subset of information about all the custom data identifiers for an
  account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20ListCustomDataIdentifiers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map | nil`):
    * `:max_results` (`t:integer`) The maximum number of items to include in each
  page of the response.
    * `:next_token` (`t:string`) The nextToken string that specifies which page of
  results to return in a paginated response.

  ## Optional parameters:
  """

  @spec list_custom_data_identifiers(AWS.Client.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, list_custom_data_identifiers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_custom_data_identifiers_errors()}

  def list_custom_data_identifiers(%Client{} = client, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/custom-data-identifiers/list"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves a subset of information about one or more findings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20ListFindings&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map | nil`):
    * `:finding_criteria` (`t:structure`) The criteria to use to filter the results.
    * `:max_results` (`t:integer`) The maximum number of items to include in each
  page of the response.
    * `:next_token` (`t:string`) The nextToken string that specifies which page of
  results to return in a paginated response.
    * `:sort_criteria` (`t:structure`) The criteria to use to sort the results.

  ## Optional parameters:
  """

  @spec list_findings(AWS.Client.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, list_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_findings_errors()}

  def list_findings(%Client{} = client, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/findings"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves a subset of information about all the findings filters for an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20ListFindingsFilters&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of items to include in each
  page of a paginated response.
  * `:next_token` (`t:string`) The nextToken string that specifies which page of
  results to return in a paginated response.
  """

  @spec list_findings_filters(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_findings_filters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_findings_filters_errors()}

  def list_findings_filters(%Client{} = client, options \\ []) do
    url_path = "/findingsfilters"

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
  Retrieves information about Amazon Macie membership invitations that were
  received by an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20ListInvitations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of items to include in each
  page of a paginated response.
  * `:next_token` (`t:string`) The nextToken string that specifies which page of
  results to return in a paginated response.
  """

  @spec list_invitations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_invitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_invitations_errors()}

  def list_invitations(%Client{} = client, options \\ []) do
    url_path = "/invitations"

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
  Retrieves information about all the managed data identifiers that Amazon Macie
  currently provides.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20ListManagedDataIdentifiers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map | nil`):
    * `:next_token` (`t:string`) The nextToken string that specifies which page of
  results to return in a paginated response.

  ## Optional parameters:
  """

  @spec list_managed_data_identifiers(AWS.Client.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, list_managed_data_identifiers_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def list_managed_data_identifiers(%Client{} = client, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/managed-data-identifiers/list"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves information about the accounts that are associated with an Amazon
  Macie administrator account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20ListMembers&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of items to include in each
  page of a paginated response.
  * `:next_token` (`t:string`) The nextToken string that specifies which page of
  results to return in a paginated response.
  * `:only_associated` (`t:string`) Specifies which accounts to include in the
  response, based on the status of an account's relationship with the
  administrator account. By default, the response includes only current member
  accounts. To include all accounts, set this value to false.
  """

  @spec list_members(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_members_errors()}

  def list_members(%Client{} = client, options \\ []) do
    url_path = "/members"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, only_associated: nil]

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
      if opt_val = Keyword.get(options, :only_associated) do
        [{"onlyAssociated", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :next_token, :only_associated])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the delegated Amazon Macie administrator account for
  an organization in Organizations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20ListOrganizationAdminAccounts&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of items to include in each
  page of a paginated response.
  * `:next_token` (`t:string`) The nextToken string that specifies which page of
  results to return in a paginated response.
  """

  @spec list_organization_admin_accounts(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_organization_admin_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_organization_admin_accounts_errors()}

  def list_organization_admin_accounts(%Client{} = client, options \\ []) do
    url_path = "/admin"

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
  Retrieves information about objects that Amazon Macie selected from an S3 bucket
  for automated sensitive data discovery.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20ListResourceProfileArtifacts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the S3 bucket
  that the request applies to.

  ## Optional parameters:
  * `:next_token` (`t:string`) The nextToken string that specifies which page of
  results to return in a paginated response.
  """

  @spec list_resource_profile_artifacts(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_resource_profile_artifacts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resource_profile_artifacts_errors()}

  def list_resource_profile_artifacts(%Client{} = client, resource_arn, options \\ [])
      when is_binary(resource_arn) do
    url_path = "/resource-profiles/artifacts"

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
    query_params = [{"resourceArn", resource_arn}]

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
  Retrieves information about the types and amount of sensitive data that Amazon
  Macie found in an S3 bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20ListResourceProfileDetections&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the S3 bucket
  that the request applies to.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of items to include in each
  page of a paginated response.
  * `:next_token` (`t:string`) The nextToken string that specifies which page of
  results to return in a paginated response.
  """

  @spec list_resource_profile_detections(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_resource_profile_detections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resource_profile_detections_errors()}

  def list_resource_profile_detections(%Client{} = client, resource_arn, options \\ [])
      when is_binary(resource_arn) do
    url_path = "/resource-profiles/detections"

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
    query_params = [{"resourceArn", resource_arn}]

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
  Retrieves a subset of information about the sensitivity inspection template for
  an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20ListSensitivityInspectionTemplates&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of items to include in each
  page of a paginated response.
  * `:next_token` (`t:string`) The nextToken string that specifies which page of
  results to return in a paginated response.
  """

  @spec list_sensitivity_inspection_templates(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_sensitivity_inspection_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_sensitivity_inspection_templates_errors()}

  def list_sensitivity_inspection_templates(%Client{} = client, options \\ []) do
    url_path = "/templates/sensitivity-inspections"

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
  Retrieves the tags (keys and values) that are associated with an Amazon Macie
  resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource.

  ## Optional parameters:
  """

  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}

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
  Adds or updates the configuration settings for storing data classification
  results.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20PutClassificationExportConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:configuration` (`t:structure`) The location to store data classification
  results in, and the encryption settings to use when storing results in that
  location.

  ## Optional parameters:
  """

  @spec put_classification_export_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_classification_export_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_classification_export_configuration_errors()}

  def put_classification_export_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    url_path = "/classification-export-configuration"

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

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the configuration settings for publishing findings to Security Hub.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20PutFindingsPublicationConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map | nil`):
    * `:client_token` (`t:string`) A unique, case-sensitive token that you provide
  to ensure the idempotency of the request.
    * `:security_hub_configuration` (`t:structure`) The configuration settings that
  determine which findings to publish to Security Hub.

  ## Optional parameters:
  """

  @spec put_findings_publication_configuration(AWS.Client.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, put_findings_publication_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_findings_publication_configuration_errors()}

  def put_findings_publication_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/findings-publication-configuration"

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

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves (queries) statistical data and other information about Amazon Web
  Services resources that Amazon Macie monitors and analyzes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20SearchResources&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map | nil`):
    * `:bucket_criteria` (`t:structure`) The filter conditions that determine which
  S3 buckets to include or exclude from the query results.
    * `:max_results` (`t:integer`) The maximum number of items to include in each
  page of the response. The default value is 50.
    * `:next_token` (`t:string`) The nextToken string that specifies which page of
  results to return in a paginated response.
    * `:sort_criteria` (`t:structure`) The criteria to use to sort the results.

  ## Optional parameters:
  """

  @spec search_resources(AWS.Client.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, search_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_resources_errors()}

  def search_resources(%Client{} = client, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/datasources/search-resources"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Adds or updates one or more tags (keys and values) that are associated with an
  Amazon Macie resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource.
  * `:input` (`t:map`):
    * `:tags` (`t:map`) A map of key-value pairs that specifies the tags to
  associate with the resource.

  ## Optional parameters:
  """

  @spec tag_resource(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}

  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) when is_map(input) do
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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Tests criteria for a custom data identifier.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20TestCustomDataIdentifier&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:regex` (`t:string`) The regular expression (regex) that defines the pattern
  to match. The expression can contain as many as 512 characters.
    * `:sample_text` (`t:string`) The sample text to inspect by using the custom
  data identifier. The text can contain as many as 1,000 characters.
    * `:ignore_words` (`t:list[com.amazonaws.macie2#__string]`) An array that lists
  specific character sequences (ignore words) to exclude from the results. If
  the text matched by the regular expression contains any string in this
  array, Amazon Macie ignores it. The array can contain as many as 10 ignore
  words. Each ignore word can contain 4-90 UTF-8 characters. Ignore words are
  case sensitive.
    * `:keywords` (`t:list[com.amazonaws.macie2#__string]`) An array that lists
  specific character sequences (keywords), one of which must precede and be
  within proximity (maximumMatchDistance) of the regular expression to match.
  The array can contain as many as 50 keywords. Each keyword can contain 3-90
  UTF-8 characters. Keywords aren't case sensitive.
    * `:maximum_match_distance` (`t:integer`) The maximum number of characters that
  can exist between the end of at least one complete character sequence
  specified by the keywords array and the end of the text that matches the
  regex pattern. If a complete keyword precedes all the text that matches the
  pattern and the keyword is within the specified distance, Amazon Macie
  includes the result. The distance can be 1-300 characters. The default value
  is 50.

  ## Optional parameters:
  """

  @spec test_custom_data_identifier(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, test_custom_data_identifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, test_custom_data_identifier_errors()}

  def test_custom_data_identifier(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/custom-data-identifiers/test"

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

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Removes one or more tags (keys and values) from an Amazon Macie resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the resource.
  * `:tag_keys` (`t:list[com.amazonaws.macie2#__string]`) One or more tags (keys)
  to remove from the resource. In an HTTP request to remove multiple tags,
  append the tagKeys parameter and argument for each tag to remove, separated
  by an ampersand (&).

  ## Optional parameters:
  """

  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}

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
  Updates the settings for an allow list.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20UpdateAllowList&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The unique identifier for the Amazon Macie resource that
  the request applies to.
  * `:input` (`t:map`):
    * `:criteria` (`t:structure`) The criteria that specify the text or text pattern
  to ignore. The criteria can be the location and name of an S3 object that
  lists specific text to ignore (s3WordsList), or a regular expression that
  defines a text pattern to ignore (regex).
    * `:name` (`t:string`) A custom name for the allow list. The name can contain as
  many as 128 characters.
    * `:description` (`t:string`) A custom description of the allow list. The
  description can contain as many as 512 characters.

  ## Optional parameters:
  """

  @spec update_allow_list(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, update_allow_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_allow_list_errors()}

  def update_allow_list(%Client{} = client, id, input, options \\ []) when is_map(input) do
    url_path = "/allow-lists/#{AWS.Util.encode_uri(id)}"

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

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Changes the configuration settings and status of automated sensitive data
  discovery for an organization or standalone account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20UpdateAutomatedDiscoveryConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:status` (`t:enum["DISABLED|ENABLED"]`) The new status of automated sensitive
  data discovery for the organization or account. Valid values are: ENABLED,
  start or resume all automated sensitive data discovery activities; and,
  DISABLED, stop performing all automated sensitive data discovery activities.
    * `:auto_enable_organization_members` (`t:enum["ALL|NEW|NONE"]`) Specifies
  whether to automatically enable automated sensitive data discovery for
  accounts in the organization. Valid values are: ALL (default), enable it for
  all existing accounts and new member accounts; NEW, enable it only for new
  member accounts; and, NONE, don't enable it for any accounts.

  ## Optional parameters:
  """

  @spec update_automated_discovery_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_automated_discovery_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_automated_discovery_configuration_errors()}

  def update_automated_discovery_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    url_path = "/automated-discovery/configuration"

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

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Changes the status of a classification job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20UpdateClassificationJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:job_id` (`t:string`) The unique identifier for the classification job.
  * `:input` (`t:map`):
    * `:job_status` (`t:enum["CANCELLED|COMPLETE|IDLE|PAUSED|RUNNING|USER_PAUSED"]`)
  The new status for the job. Valid values are:

  ## Optional parameters:
  """

  @spec update_classification_job(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, update_classification_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_classification_job_errors()}

  def update_classification_job(%Client{} = client, job_id, input, options \\ [])
      when is_map(input) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}"

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

    body = input

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Updates the classification scope settings for an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20UpdateClassificationScope&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The unique identifier for the Amazon Macie resource that
  the request applies to.
  * `:input` (`t:map | nil`):
    * `:s3` (`t:structure`) The S3 buckets to add or remove from the exclusion list
  defined by the classification scope.

  ## Optional parameters:
  """

  @spec update_classification_scope(AWS.Client.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, update_classification_scope_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_classification_scope_errors()}

  def update_classification_scope(%Client{} = client, id, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/classification-scopes/#{AWS.Util.encode_uri(id)}"

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

    body = input

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Updates the criteria and other settings for a findings filter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20UpdateFindingsFilter&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The unique identifier for the Amazon Macie resource that
  the request applies to.
  * `:input` (`t:map | nil`):
    * `:action` (`t:enum["ARCHIVE|NOOP"]`) The action to perform on findings that
  match the filter criteria (findingCriteria). Valid values are: ARCHIVE,
  suppress (automatically archive) the findings; and, NOOP, don't perform any
  action on the findings.
    * `:client_token` (`t:string`) A unique, case-sensitive token that you provide
  to ensure the idempotency of the request.
    * `:description` (`t:string`) A custom description of the filter. The
  description can contain as many as 512 characters.
    * `:finding_criteria` (`t:structure`) The criteria to use to filter findings.
    * `:name` (`t:string`) A custom name for the filter. The name must contain at
  least 3 characters and can contain as many as 64 characters.
    * `:position` (`t:integer`) The position of the filter in the list of saved
  filters on the Amazon Macie console. This value also determines the order in
  which the filter is applied to findings, relative to other filters that are
  also applied to the findings.

  ## Optional parameters:
  """

  @spec update_findings_filter(AWS.Client.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, update_findings_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_findings_filter_errors()}

  def update_findings_filter(%Client{} = client, id, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/findingsfilters/#{AWS.Util.encode_uri(id)}"

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

    body = input

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Suspends or re-enables Amazon Macie, or updates the configuration settings for a
  Macie account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20UpdateMacieSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map | nil`):
    * `:finding_publishing_frequency`
  (`t:enum["FIFTEEN_MINUTES|ONE_HOUR|SIX_HOURS"]`) Specifies how often to
  publish updates to policy findings for the account. This includes publishing
  updates to Security Hub and Amazon EventBridge (formerly Amazon CloudWatch
  Events).
    * `:status` (`t:enum["ENABLED|PAUSED"]`) Specifies a new status for the account.
  Valid values are: ENABLED, resume all Amazon Macie activities for the
  account; and, PAUSED, suspend all Macie activities for the account.

  ## Optional parameters:
  """

  @spec update_macie_session(AWS.Client.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, update_macie_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_macie_session_errors()}

  def update_macie_session(%Client{} = client, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/macie"

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

    body = input

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Enables an Amazon Macie administrator to suspend or re-enable Macie for a member
  account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20UpdateMemberSession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The unique identifier for the Amazon Macie resource that
  the request applies to.
  * `:input` (`t:map`):
    * `:status` (`t:enum["ENABLED|PAUSED"]`) Specifies the new status for the
  account. Valid values are: ENABLED, resume all Amazon Macie activities for
  the account; and, PAUSED, suspend all Macie activities for the account.

  ## Optional parameters:
  """

  @spec update_member_session(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, update_member_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_member_session_errors()}

  def update_member_session(%Client{} = client, id, input, options \\ []) when is_map(input) do
    url_path = "/macie/members/#{AWS.Util.encode_uri(id)}"

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

    body = input

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Updates the Amazon Macie configuration settings for an organization in
  Organizations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20UpdateOrganizationConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:auto_enable` (`t:boolean`) Specifies whether to enable Amazon Macie
  automatically for accounts that are added to the organization in
  Organizations.

  ## Optional parameters:
  """

  @spec update_organization_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_organization_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_organization_configuration_errors()}

  def update_organization_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    url_path = "/admin/configuration"

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

    body = input

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Updates the sensitivity score for an S3 bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20UpdateResourceProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the S3 bucket
  that the request applies to.
  * `:input` (`t:map | nil`):
    * `:sensitivity_score_override` (`t:integer`) The new sensitivity score for the
  bucket. Valid values are: 100, assign the maximum score and apply the
  Sensitive label to the bucket; and, null (empty), assign a score that Amazon
  Macie calculates automatically after you submit the request.

  ## Optional parameters:
  """

  @spec update_resource_profile(AWS.Client.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, update_resource_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_resource_profile_errors()}

  def update_resource_profile(%Client{} = client, resource_arn, input, options \\ [])
      when (is_map(input) or is_nil(input)) and is_binary(resource_arn) do
    url_path = "/resource-profiles"

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

    body = input

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Updates the sensitivity scoring settings for an S3 bucket.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20UpdateResourceProfileDetections&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the S3 bucket
  that the request applies to.
  * `:input` (`t:map | nil`):
    * `:suppress_data_identifiers`
  (`t:list[com.amazonaws.macie2#SuppressDataIdentifier]`) An array of objects,
  one for each custom data identifier or managed data identifier that detected
  the type of sensitive data to start excluding or including in the bucket's
  score. To start including all sensitive data types in the score, don't
  specify any values for this array.

  ## Optional parameters:
  """

  @spec update_resource_profile_detections(
          AWS.Client.t(),
          String.t(),
          input :: map() | nil,
          Keyword.t()
        ) ::
          {:ok, update_resource_profile_detections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_resource_profile_detections_errors()}

  def update_resource_profile_detections(%Client{} = client, resource_arn, input, options \\ [])
      when (is_map(input) or is_nil(input)) and is_binary(resource_arn) do
    url_path = "/resource-profiles/detections"

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

    body = input

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end

  @doc """
  Updates the status and configuration settings for retrieving occurrences of
  sensitive data reported by findings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20UpdateRevealConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map`):
    * `:configuration` (`t:structure`) The KMS key to use to encrypt the sensitive
  data, and the status of the configuration for the Amazon Macie account.
    * `:retrieval_configuration` (`t:structure`) The access method and settings to
  use when retrieving the sensitive data.

  ## Optional parameters:
  """

  @spec update_reveal_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_reveal_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_reveal_configuration_errors()}

  def update_reveal_configuration(%Client{} = client, input, options \\ []) when is_map(input) do
    url_path = "/reveal-configuration"

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

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the settings for the sensitivity inspection template for an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=macie2%20UpdateSensitivityInspectionTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The unique identifier for the Amazon Macie resource that
  the request applies to.
  * `:input` (`t:map | nil`):
    * `:description` (`t:string`) A custom description of the template. The
  description can contain as many as 200 characters.
    * `:excludes` (`t:structure`) The managed data identifiers to explicitly exclude
  (not use) when performing automated sensitive data discovery.
    * `:includes` (`t:structure`) The allow lists, custom data identifiers, and
  managed data identifiers to explicitly include (use) when performing
  automated sensitive data discovery.

  ## Optional parameters:
  """

  @spec update_sensitivity_inspection_template(
          AWS.Client.t(),
          String.t(),
          input :: map() | nil,
          Keyword.t()
        ) ::
          {:ok, update_sensitivity_inspection_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_sensitivity_inspection_template_errors()}

  def update_sensitivity_inspection_template(%Client{} = client, id, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/templates/sensitivity-inspections/#{AWS.Util.encode_uri(id)}"

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

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end
end
