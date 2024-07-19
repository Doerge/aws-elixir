# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Omics do
  @moduledoc """
  This is the *AWS HealthOmics API Reference*. For an introduction to the service,
  see [What is AWS HealthOmics?](https://docs.aws.amazon.com/omics/latest/dev/)
  in the *AWS HealthOmics User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      run_log_location() :: %{
        "engineLogStream" => String.t(),
        "runLogStream" => String.t()
      }
      
  """
  @type run_log_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_multipart_read_set_uploads_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }
      
  """
  @type list_multipart_read_set_uploads_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      abort_multipart_read_set_upload_request() :: %{}
      
  """
  @type abort_multipart_read_set_upload_request() :: %{}

  @typedoc """

  ## Example:
      
      annotation_store_item() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => [String.t()],
        "reference" => list(),
        "sseConfig" => sse_config(),
        "status" => String.t(),
        "statusMessage" => String.t(),
        "storeArn" => String.t(),
        "storeFormat" => String.t(),
        "storeSizeBytes" => [float()],
        "updateTime" => non_neg_integer()
      }
      
  """
  @type annotation_store_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workflow_request() :: %{
        optional("accelerators") => String.t(),
        optional("definitionUri") => String.t(),
        optional("definitionZip") => [binary()],
        optional("description") => String.t(),
        optional("engine") => String.t(),
        optional("main") => String.t(),
        optional("name") => String.t(),
        optional("parameterTemplate") => map(),
        optional("storageCapacity") => [integer()],
        optional("tags") => map(),
        required("requestId") => String.t()
      }
      
  """
  @type create_workflow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_annotation_import_request() :: %{}
      
  """
  @type cancel_annotation_import_request() :: %{}

  @typedoc """

  ## Example:
      
      update_variant_store_response() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => [String.t()],
        "reference" => list(),
        "status" => String.t(),
        "updateTime" => non_neg_integer()
      }
      
  """
  @type update_variant_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_read_set_job_item() :: %{
        "completionTime" => [non_neg_integer()],
        "creationTime" => [non_neg_integer()],
        "id" => String.t(),
        "roleArn" => String.t(),
        "sequenceStoreId" => String.t(),
        "status" => String.t()
      }
      
  """
  @type import_read_set_job_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activate_read_set_filter() :: %{
        "createdAfter" => [non_neg_integer()],
        "createdBefore" => [non_neg_integer()],
        "status" => String.t()
      }
      
  """
  @type activate_read_set_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_variant_store_request() :: %{
        optional("description") => String.t()
      }
      
  """
  @type update_variant_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_annotation_store_version_response() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "status" => String.t(),
        "storeId" => String.t(),
        "updateTime" => non_neg_integer(),
        "versionName" => String.t()
      }
      
  """
  @type update_annotation_store_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_shares_request() :: %{
        optional("filter") => filter(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        required("resourceOwner") => String.t()
      }
      
  """
  @type list_shares_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_annotation_store_request() :: %{
        optional("description") => String.t()
      }
      
  """
  @type update_annotation_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_run_request() :: %{
        optional("export") => list(String.t()())
      }
      
  """
  @type get_run_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_reference_stores_response() :: %{
        "nextToken" => String.t(),
        "referenceStores" => list(reference_store_detail()())
      }
      
  """
  @type list_reference_stores_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      read_set_upload_part_list_filter() :: %{
        "createdAfter" => [non_neg_integer()],
        "createdBefore" => [non_neg_integer()]
      }
      
  """
  @type read_set_upload_part_list_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_read_set_export_jobs_request() :: %{
        optional("filter") => export_read_set_filter(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }
      
  """
  @type list_read_set_export_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_runs_response() :: %{
        "items" => list(run_list_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_runs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_read_set_filter() :: %{
        "createdAfter" => [non_neg_integer()],
        "createdBefore" => [non_neg_integer()],
        "status" => String.t()
      }
      
  """
  @type import_read_set_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_reference_metadata_response() :: %{
        "arn" => String.t(),
        "creationTime" => [non_neg_integer()],
        "description" => String.t(),
        "files" => reference_files(),
        "id" => String.t(),
        "md5" => String.t(),
        "name" => String.t(),
        "referenceStoreId" => String.t(),
        "status" => String.t(),
        "updateTime" => [non_neg_integer()]
      }
      
  """
  @type get_reference_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_annotation_store_request() :: %{
        optional("description") => String.t(),
        optional("name") => String.t(),
        optional("reference") => list(),
        optional("sseConfig") => sse_config(),
        optional("storeOptions") => list(),
        optional("tags") => map(),
        optional("versionName") => String.t(),
        required("storeFormat") => String.t()
      }
      
  """
  @type create_annotation_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_read_set_part_request() :: %{
        required("partNumber") => [integer()],
        required("partSource") => String.t(),
        required("payload") => binary()
      }
      
  """
  @type upload_read_set_part_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_read_set_activation_jobs_response() :: %{
        "activationJobs" => list(activate_read_set_job_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_read_set_activation_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_variant_store_response() :: %{
        "status" => String.t()
      }
      
  """
  @type delete_variant_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_read_set_import_job_request() :: %{
        optional("clientToken") => String.t(),
        required("roleArn") => String.t(),
        required("sources") => list(start_read_set_import_job_source_item()())
      }
      
  """
  @type start_read_set_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      variant_import_job_item() :: %{
        "annotationFields" => map(),
        "completionTime" => non_neg_integer(),
        "creationTime" => non_neg_integer(),
        "destinationName" => [String.t()],
        "id" => [String.t()],
        "roleArn" => String.t(),
        "runLeftNormalization" => boolean(),
        "status" => String.t(),
        "updateTime" => non_neg_integer()
      }
      
  """
  @type variant_import_job_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_reference_job_item() :: %{
        "completionTime" => [non_neg_integer()],
        "creationTime" => [non_neg_integer()],
        "id" => String.t(),
        "referenceStoreId" => String.t(),
        "roleArn" => String.t(),
        "status" => String.t()
      }
      
  """
  @type import_reference_job_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      get_read_set_export_job_request() :: %{}
      
  """
  @type get_read_set_export_job_request() :: %{}

  @typedoc """

  ## Example:
      
      get_run_group_request() :: %{}
      
  """
  @type get_run_group_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_sequence_store_request() :: %{}
      
  """
  @type delete_sequence_store_request() :: %{}

  @typedoc """

  ## Example:
      
      start_reference_import_job_response() :: %{
        "creationTime" => [non_neg_integer()],
        "id" => String.t(),
        "referenceStoreId" => String.t(),
        "roleArn" => String.t(),
        "status" => String.t()
      }
      
  """
  @type start_reference_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workflow_request() :: %{}
      
  """
  @type delete_workflow_request() :: %{}

  @typedoc """

  ## Example:
      
      list_annotation_stores_request() :: %{
        optional("filter") => list_annotation_stores_filter(),
        optional("ids") => list(String.t()()),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_annotation_stores_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_annotation_store_response() :: %{
        "status" => String.t()
      }
      
  """
  @type delete_annotation_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_annotation_store_response() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => [String.t()],
        "reference" => list(),
        "status" => String.t(),
        "storeFormat" => String.t(),
        "storeOptions" => list(),
        "updateTime" => non_neg_integer()
      }
      
  """
  @type update_annotation_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      read_set_filter() :: %{
        "createdAfter" => [non_neg_integer()],
        "createdBefore" => [non_neg_integer()],
        "creationType" => String.t(),
        "generatedFrom" => String.t(),
        "name" => String.t(),
        "referenceArn" => String.t(),
        "sampleId" => String.t(),
        "status" => String.t(),
        "subjectId" => String.t()
      }
      
  """
  @type read_set_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_read_set_response() :: %{
        "errors" => list(read_set_batch_error()())
      }
      
  """
  @type batch_delete_read_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_read_set_activation_jobs_request() :: %{
        optional("filter") => activate_read_set_filter(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }
      
  """
  @type list_read_set_activation_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_annotation_store_request() :: %{}
      
  """
  @type get_annotation_store_request() :: %{}

  @typedoc """

  ## Example:
      
      list_variant_import_jobs_response() :: %{
        "nextToken" => [String.t()],
        "variantImportJobs" => list(variant_import_job_item()())
      }
      
  """
  @type list_variant_import_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_list_item() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "digest" => String.t(),
        "id" => String.t(),
        "metadata" => map(),
        "name" => String.t(),
        "status" => String.t(),
        "type" => String.t()
      }
      
  """
  @type workflow_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_read_set_job_detail() :: %{
        "completionTime" => [non_neg_integer()],
        "creationTime" => [non_neg_integer()],
        "destination" => String.t(),
        "id" => String.t(),
        "sequenceStoreId" => String.t(),
        "status" => String.t()
      }
      
  """
  @type export_read_set_job_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_annotation_store_versions_response() :: %{
        "errors" => list(version_delete_error()())
      }
      
  """
  @type delete_annotation_store_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_read_set_part_response() :: %{
        "checksum" => [String.t()]
      }
      
  """
  @type upload_read_set_part_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_reference_metadata_request() :: %{}
      
  """
  @type get_reference_metadata_request() :: %{}

  @typedoc """

  ## Example:
      
      accept_share_request() :: %{}
      
  """
  @type accept_share_request() :: %{}

  @typedoc """

  ## Example:
      
      share_details() :: %{
        "creationTime" => non_neg_integer(),
        "ownerId" => [String.t()],
        "principalSubscriber" => [String.t()],
        "resourceArn" => [String.t()],
        "resourceId" => [String.t()],
        "shareId" => [String.t()],
        "shareName" => String.t(),
        "status" => String.t(),
        "statusMessage" => String.t(),
        "updateTime" => non_neg_integer()
      }
      
  """
  @type share_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      annotation_store_version_item() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "status" => String.t(),
        "statusMessage" => String.t(),
        "storeId" => String.t(),
        "updateTime" => non_neg_integer(),
        "versionArn" => String.t(),
        "versionName" => String.t(),
        "versionSizeBytes" => [float()]
      }
      
  """
  @type annotation_store_version_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activate_read_set_job_item() :: %{
        "completionTime" => [non_neg_integer()],
        "creationTime" => [non_neg_integer()],
        "id" => String.t(),
        "sequenceStoreId" => String.t(),
        "status" => String.t()
      }
      
  """
  @type activate_read_set_job_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_run_group_request() :: %{}
      
  """
  @type delete_run_group_request() :: %{}

  @typedoc """

  ## Example:
      
      get_reference_response() :: %{
        "payload" => binary()
      }
      
  """
  @type get_reference_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_annotation_stores_response() :: %{
        "annotationStores" => list(annotation_store_item()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_annotation_stores_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_multipart_read_set_upload_response() :: %{
        "creationTime" => [non_neg_integer()],
        "description" => String.t(),
        "generatedFrom" => String.t(),
        "name" => String.t(),
        "referenceArn" => String.t(),
        "sampleId" => String.t(),
        "sequenceStoreId" => String.t(),
        "sourceFileType" => String.t(),
        "subjectId" => String.t(),
        "tags" => map(),
        "uploadId" => String.t()
      }
      
  """
  @type create_multipart_read_set_upload_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_reference_request() :: %{}
      
  """
  @type delete_reference_request() :: %{}

  @typedoc """

  ## Example:
      
      request_timeout_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type request_timeout_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_annotation_store_versions_response() :: %{
        "annotationStoreVersions" => list(annotation_store_version_item()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_annotation_store_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      complete_multipart_read_set_upload_response() :: %{
        "readSetId" => String.t()
      }
      
  """
  @type complete_multipart_read_set_upload_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_workflow_request() :: %{
        optional("description") => String.t(),
        optional("name") => String.t()
      }
      
  """
  @type update_workflow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reference_list_item() :: %{
        "arn" => String.t(),
        "creationTime" => [non_neg_integer()],
        "description" => String.t(),
        "id" => String.t(),
        "md5" => String.t(),
        "name" => String.t(),
        "referenceStoreId" => String.t(),
        "status" => String.t(),
        "updateTime" => [non_neg_integer()]
      }
      
  """
  @type reference_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tsv_options() :: %{
        "readOptions" => read_options()
      }
      
  """
  @type tsv_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      run_list_item() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "id" => String.t(),
        "name" => String.t(),
        "priority" => [integer()],
        "startTime" => non_neg_integer(),
        "status" => String.t(),
        "stopTime" => non_neg_integer(),
        "storageCapacity" => [integer()],
        "storageType" => String.t(),
        "workflowId" => String.t()
      }
      
  """
  @type run_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_reference_import_job_source_item() :: %{
        "description" => String.t(),
        "name" => String.t(),
        "sourceFile" => String.t(),
        "tags" => map()
      }
      
  """
  @type start_reference_import_job_source_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_variant_import_request() :: %{}
      
  """
  @type cancel_variant_import_request() :: %{}

  @typedoc """

  ## Example:
      
      get_annotation_store_version_request() :: %{}
      
  """
  @type get_annotation_store_version_request() :: %{}

  @typedoc """

  ## Example:
      
      list_variant_import_jobs_request() :: %{
        optional("filter") => list_variant_import_jobs_filter(),
        optional("ids") => list(String.t()()),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_variant_import_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_annotation_store_response() :: %{
        "creationTime" => non_neg_integer(),
        "id" => String.t(),
        "name" => [String.t()],
        "reference" => list(),
        "status" => String.t(),
        "storeFormat" => String.t(),
        "storeOptions" => list(),
        "versionName" => String.t()
      }
      
  """
  @type create_annotation_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_annotation_import_response() :: %{}
      
  """
  @type cancel_annotation_import_response() :: %{}

  @typedoc """

  ## Example:
      
      create_share_request() :: %{
        optional("shareName") => String.t(),
        required("principalSubscriber") => [String.t()],
        required("resourceArn") => [String.t()]
      }
      
  """
  @type create_share_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_read_set_import_jobs_response() :: %{
        "importJobs" => list(import_read_set_job_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_read_set_import_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_read_set_activation_job_request() :: %{
        optional("clientToken") => String.t(),
        required("sources") => list(start_read_set_activation_job_source_item()())
      }
      
  """
  @type start_read_set_activation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_annotation_store_version_response() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "status" => String.t(),
        "statusMessage" => String.t(),
        "storeId" => String.t(),
        "tags" => map(),
        "updateTime" => non_neg_integer(),
        "versionArn" => String.t(),
        "versionName" => String.t(),
        "versionOptions" => list(),
        "versionSizeBytes" => [float()]
      }
      
  """
  @type get_annotation_store_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_read_set_request() :: %{
        optional("file") => String.t(),
        required("partNumber") => [integer()]
      }
      
  """
  @type get_read_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      variant_store_item() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => [String.t()],
        "reference" => list(),
        "sseConfig" => sse_config(),
        "status" => String.t(),
        "statusMessage" => String.t(),
        "storeArn" => String.t(),
        "storeSizeBytes" => [float()],
        "updateTime" => non_neg_integer()
      }
      
  """
  @type variant_store_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_list_item() :: %{
        "cpus" => [integer()],
        "creationTime" => non_neg_integer(),
        "gpus" => [integer()],
        "instanceType" => String.t(),
        "memory" => [integer()],
        "name" => String.t(),
        "startTime" => non_neg_integer(),
        "status" => String.t(),
        "stopTime" => non_neg_integer(),
        "taskId" => String.t()
      }
      
  """
  @type task_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_workflow_request() :: %{
        optional("export") => list(String.t()()),
        optional("type") => String.t(),
        optional("workflowOwnerId") => String.t()
      }
      
  """
  @type get_workflow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_references_response() :: %{
        "nextToken" => String.t(),
        "references" => list(reference_list_item()())
      }
      
  """
  @type list_references_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_variant_stores_request() :: %{
        optional("filter") => list_variant_stores_filter(),
        optional("ids") => list(String.t()()),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_variant_stores_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_read_set_metadata_response() :: %{
        "arn" => String.t(),
        "creationTime" => [non_neg_integer()],
        "creationType" => String.t(),
        "description" => String.t(),
        "etag" => e_tag(),
        "fileType" => String.t(),
        "files" => read_set_files(),
        "id" => String.t(),
        "name" => String.t(),
        "referenceArn" => String.t(),
        "sampleId" => String.t(),
        "sequenceInformation" => sequence_information(),
        "sequenceStoreId" => String.t(),
        "status" => String.t(),
        "statusMessage" => String.t(),
        "subjectId" => String.t()
      }
      
  """
  @type get_read_set_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_sequence_store_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("eTagAlgorithmFamily") => String.t(),
        optional("fallbackLocation") => String.t(),
        optional("sseConfig") => sse_config(),
        optional("tags") => map(),
        required("name") => String.t()
      }
      
  """
  @type create_sequence_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_share_response() :: %{
        "status" => String.t()
      }
      
  """
  @type accept_share_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_annotation_store_response() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => [String.t()],
        "numVersions" => [integer()],
        "reference" => list(),
        "sseConfig" => sse_config(),
        "status" => String.t(),
        "statusMessage" => String.t(),
        "storeArn" => String.t(),
        "storeFormat" => String.t(),
        "storeOptions" => list(),
        "storeSizeBytes" => [float()],
        "tags" => map(),
        "updateTime" => non_neg_integer()
      }
      
  """
  @type get_annotation_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_parameter() :: %{
        "description" => String.t(),
        "optional" => [boolean()]
      }
      
  """
  @type workflow_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_shares_response() :: %{
        "nextToken" => [String.t()],
        "shares" => list(share_details()())
      }
      
  """
  @type list_shares_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vcf_options() :: %{
        "ignoreFilterField" => [boolean()],
        "ignoreQualField" => [boolean()]
      }
      
  """
  @type vcf_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_read_set_activation_job_response() :: %{
        "completionTime" => [non_neg_integer()],
        "creationTime" => [non_neg_integer()],
        "id" => String.t(),
        "sequenceStoreId" => String.t(),
        "sources" => list(activate_read_set_source_item()()),
        "status" => String.t(),
        "statusMessage" => String.t()
      }
      
  """
  @type get_read_set_activation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      complete_read_set_upload_part_list_item() :: %{
        "checksum" => [String.t()],
        "partNumber" => [integer()],
        "partSource" => String.t()
      }
      
  """
  @type complete_read_set_upload_part_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_run_group_response() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "id" => String.t(),
        "maxCpus" => [integer()],
        "maxDuration" => [integer()],
        "maxGpus" => [integer()],
        "maxRuns" => [integer()],
        "name" => String.t(),
        "tags" => map()
      }
      
  """
  @type get_run_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      variant_import_item_source() :: %{
        "source" => String.t()
      }
      
  """
  @type variant_import_item_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reference_store_detail() :: %{
        "arn" => String.t(),
        "creationTime" => [non_neg_integer()],
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "sseConfig" => sse_config()
      }
      
  """
  @type reference_store_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      version_delete_error() :: %{
        "message" => [String.t()],
        "versionName" => String.t()
      }
      
  """
  @type version_delete_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_supported_operation_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type not_supported_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_sequence_stores_response() :: %{
        "nextToken" => String.t(),
        "sequenceStores" => list(sequence_store_detail()())
      }
      
  """
  @type list_sequence_stores_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sequence_store_filter() :: %{
        "createdAfter" => [non_neg_integer()],
        "createdBefore" => [non_neg_integer()],
        "name" => String.t()
      }
      
  """
  @type sequence_store_filter() :: %{String.t() => any()}

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
        "message" => [String.t()]
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_reference_request() :: %{
        optional("file") => String.t(),
        optional("range") => String.t(),
        required("partNumber") => [integer()]
      }
      
  """
  @type get_reference_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      annotation_import_job_item() :: %{
        "annotationFields" => map(),
        "completionTime" => non_neg_integer(),
        "creationTime" => non_neg_integer(),
        "destinationName" => [String.t()],
        "id" => [String.t()],
        "roleArn" => String.t(),
        "runLeftNormalization" => boolean(),
        "status" => String.t(),
        "updateTime" => non_neg_integer(),
        "versionName" => String.t()
      }
      
  """
  @type annotation_import_job_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_sequence_store_response() :: %{
        "arn" => String.t(),
        "creationTime" => [non_neg_integer()],
        "description" => String.t(),
        "eTagAlgorithmFamily" => String.t(),
        "fallbackLocation" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "s3Access" => sequence_store_s3_access(),
        "sseConfig" => sse_config()
      }
      
  """
  @type get_sequence_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      run_group_list_item() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "id" => String.t(),
        "maxCpus" => [integer()],
        "maxDuration" => [integer()],
        "maxGpus" => [integer()],
        "maxRuns" => [integer()],
        "name" => String.t()
      }
      
  """
  @type run_group_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_annotation_store_version_response() :: %{
        "creationTime" => non_neg_integer(),
        "id" => String.t(),
        "name" => String.t(),
        "status" => String.t(),
        "storeId" => String.t(),
        "versionName" => String.t(),
        "versionOptions" => list()
      }
      
  """
  @type create_annotation_store_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_reference_import_job_request() :: %{
        optional("clientToken") => String.t(),
        required("roleArn") => String.t(),
        required("sources") => list(start_reference_import_job_source_item()())
      }
      
  """
  @type start_reference_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_run_tasks_response() :: %{
        "items" => list(task_list_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_run_tasks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_share_response() :: %{
        "shareId" => [String.t()],
        "shareName" => String.t(),
        "status" => String.t()
      }
      
  """
  @type create_share_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_read_set_source_item() :: %{
        "description" => String.t(),
        "generatedFrom" => String.t(),
        "name" => String.t(),
        "referenceArn" => String.t(),
        "sampleId" => String.t(),
        "sourceFileType" => String.t(),
        "sourceFiles" => source_files(),
        "status" => String.t(),
        "statusMessage" => String.t(),
        "subjectId" => String.t(),
        "tags" => map()
      }
      
  """
  @type import_read_set_source_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_variant_store_request() :: %{
        optional("force") => [boolean()]
      }
      
  """
  @type delete_variant_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_reference_store_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("sseConfig") => sse_config(),
        optional("tags") => map(),
        required("name") => String.t()
      }
      
  """
  @type create_reference_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      annotation_import_item_detail() :: %{
        "jobStatus" => String.t(),
        "source" => String.t()
      }
      
  """
  @type annotation_import_item_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      e_tag() :: %{
        "algorithm" => String.t(),
        "source1" => [String.t()],
        "source2" => [String.t()]
      }
      
  """
  @type e_tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_read_set_import_jobs_request() :: %{
        optional("filter") => import_read_set_filter(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }
      
  """
  @type list_read_set_import_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_read_set_metadata_request() :: %{}
      
  """
  @type get_read_set_metadata_request() :: %{}

  @typedoc """

  ## Example:
      
      reference_store_filter() :: %{
        "createdAfter" => [non_neg_integer()],
        "createdBefore" => [non_neg_integer()],
        "name" => String.t()
      }
      
  """
  @type reference_store_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_variant_stores_filter() :: %{
        "status" => String.t()
      }
      
  """
  @type list_variant_stores_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_read_sets_response() :: %{
        "nextToken" => String.t(),
        "readSets" => list(read_set_list_item()())
      }
      
  """
  @type list_read_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_annotation_store_request() :: %{
        optional("force") => [boolean()]
      }
      
  """
  @type delete_annotation_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workflows_request() :: %{
        optional("maxResults") => [integer()],
        optional("name") => String.t(),
        optional("startingToken") => String.t(),
        optional("type") => String.t()
      }
      
  """
  @type list_workflows_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_multipart_read_set_upload_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("generatedFrom") => String.t(),
        optional("referenceArn") => String.t(),
        optional("tags") => map(),
        required("name") => String.t(),
        required("sampleId") => String.t(),
        required("sourceFileType") => String.t(),
        required("subjectId") => String.t()
      }
      
  """
  @type create_multipart_read_set_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_read_set_import_job_response() :: %{
        "creationTime" => [non_neg_integer()],
        "id" => String.t(),
        "roleArn" => String.t(),
        "sequenceStoreId" => String.t(),
        "status" => String.t()
      }
      
  """
  @type start_read_set_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_reference_store_response() :: %{
        "arn" => String.t(),
        "creationTime" => [non_neg_integer()],
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "sseConfig" => sse_config()
      }
      
  """
  @type get_reference_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      read_set_upload_part_list_item() :: %{
        "checksum" => [String.t()],
        "creationTime" => [non_neg_integer()],
        "lastUpdatedTime" => [non_neg_integer()],
        "partNumber" => [integer()],
        "partSize" => [float()],
        "partSource" => String.t()
      }
      
  """
  @type read_set_upload_part_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      read_set_files() :: %{
        "index" => file_information(),
        "source1" => file_information(),
        "source2" => file_information()
      }
      
  """
  @type read_set_files() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_read_set_import_job_source_item() :: %{
        "description" => String.t(),
        "generatedFrom" => String.t(),
        "name" => String.t(),
        "referenceArn" => String.t(),
        "sampleId" => String.t(),
        "sourceFileType" => String.t(),
        "sourceFiles" => source_files(),
        "subjectId" => String.t(),
        "tags" => map()
      }
      
  """
  @type start_read_set_import_job_source_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activate_read_set_source_item() :: %{
        "readSetId" => String.t(),
        "status" => String.t(),
        "statusMessage" => String.t()
      }
      
  """
  @type activate_read_set_source_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_annotation_import_jobs_response() :: %{
        "annotationImportJobs" => list(annotation_import_job_item()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_annotation_import_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reference_files() :: %{
        "index" => file_information(),
        "source" => file_information()
      }
      
  """
  @type reference_files() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_annotation_import_request() :: %{
        optional("annotationFields") => map(),
        optional("formatOptions") => list(),
        optional("runLeftNormalization") => boolean(),
        optional("versionName") => String.t(),
        required("destinationName") => String.t(),
        required("items") => list(annotation_import_item_source()()),
        required("roleArn") => String.t()
      }
      
  """
  @type start_annotation_import_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_read_set_request() :: %{
        required("ids") => list(String.t()())
      }
      
  """
  @type batch_delete_read_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_variant_store_response() :: %{
        "creationTime" => non_neg_integer(),
        "id" => String.t(),
        "name" => [String.t()],
        "reference" => list(),
        "status" => String.t()
      }
      
  """
  @type create_variant_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_read_sets_request() :: %{
        optional("filter") => read_set_filter(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }
      
  """
  @type list_read_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_run_groups_response() :: %{
        "items" => list(run_group_list_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_run_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      annotation_import_item_source() :: %{
        "source" => String.t()
      }
      
  """
  @type annotation_import_item_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "resourceArns" => list([String.t()]()),
        "status" => list(String.t()()),
        "type" => list(String.t()())
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_sequence_store_response() :: %{
        "arn" => String.t(),
        "creationTime" => [non_neg_integer()],
        "description" => String.t(),
        "eTagAlgorithmFamily" => String.t(),
        "fallbackLocation" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "sseConfig" => sse_config()
      }
      
  """
  @type create_sequence_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_run_request() :: %{}
      
  """
  @type cancel_run_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_run_request() :: %{}
      
  """
  @type delete_run_request() :: %{}

  @typedoc """

  ## Example:
      
      create_run_group_response() :: %{
        "arn" => String.t(),
        "id" => String.t(),
        "tags" => map()
      }
      
  """
  @type create_run_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_sequence_store_response() :: %{}
      
  """
  @type delete_sequence_store_response() :: %{}

  @typedoc """

  ## Example:
      
      start_read_set_export_job_response() :: %{
        "creationTime" => [non_neg_integer()],
        "destination" => String.t(),
        "id" => String.t(),
        "sequenceStoreId" => String.t(),
        "status" => String.t()
      }
      
  """
  @type start_read_set_export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_reference_store_request() :: %{}
      
  """
  @type get_reference_store_request() :: %{}

  @typedoc """

  ## Example:
      
      update_annotation_store_version_request() :: %{
        optional("description") => String.t()
      }
      
  """
  @type update_annotation_store_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reference_filter() :: %{
        "createdAfter" => [non_neg_integer()],
        "createdBefore" => [non_neg_integer()],
        "md5" => String.t(),
        "name" => String.t()
      }
      
  """
  @type reference_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_read_set_response() :: %{
        "payload" => binary()
      }
      
  """
  @type get_read_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_run_tasks_request() :: %{
        optional("maxResults") => [integer()],
        optional("startingToken") => String.t(),
        optional("status") => String.t()
      }
      
  """
  @type list_run_tasks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_read_set_export_jobs_response() :: %{
        "exportJobs" => list(export_read_set_job_detail()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_read_set_export_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sequence_store_s3_access() :: %{
        "s3AccessPointArn" => String.t(),
        "s3Uri" => String.t()
      }
      
  """
  @type sequence_store_s3_access() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_variant_store_request() :: %{
        optional("description") => String.t(),
        optional("name") => String.t(),
        optional("sseConfig") => sse_config(),
        optional("tags") => map(),
        required("reference") => list()
      }
      
  """
  @type create_variant_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_read_set_export_job_response() :: %{
        "completionTime" => [non_neg_integer()],
        "creationTime" => [non_neg_integer()],
        "destination" => String.t(),
        "id" => String.t(),
        "readSets" => list(export_read_set_detail()()),
        "sequenceStoreId" => String.t(),
        "status" => String.t(),
        "statusMessage" => String.t()
      }
      
  """
  @type get_read_set_export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_sequence_stores_request() :: %{
        optional("filter") => sequence_store_filter(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }
      
  """
  @type list_sequence_stores_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_read_set_detail() :: %{
        "id" => String.t(),
        "status" => String.t(),
        "statusMessage" => String.t()
      }
      
  """
  @type export_read_set_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_annotation_store_versions_filter() :: %{
        "status" => String.t()
      }
      
  """
  @type list_annotation_store_versions_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_multipart_read_set_uploads_response() :: %{
        "nextToken" => String.t(),
        "uploads" => list(multipart_read_set_upload_list_item()())
      }
      
  """
  @type list_multipart_read_set_uploads_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      read_options() :: %{
        "comment" => String.t(),
        "encoding" => String.t(),
        "escape" => String.t(),
        "escapeQuotes" => boolean(),
        "header" => boolean(),
        "lineSep" => String.t(),
        "quote" => String.t(),
        "quoteAll" => boolean(),
        "sep" => String.t()
      }
      
  """
  @type read_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sse_config() :: %{
        "keyArn" => [String.t()],
        "type" => String.t()
      }
      
  """
  @type sse_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_variant_import_response() :: %{
        "annotationFields" => map(),
        "completionTime" => non_neg_integer(),
        "creationTime" => non_neg_integer(),
        "destinationName" => String.t(),
        "id" => String.t(),
        "items" => list(variant_import_item_detail()()),
        "roleArn" => String.t(),
        "runLeftNormalization" => boolean(),
        "status" => String.t(),
        "statusMessage" => String.t(),
        "updateTime" => non_neg_integer()
      }
      
  """
  @type get_variant_import_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_run_group_request() :: %{
        optional("maxCpus") => [integer()],
        optional("maxDuration") => [integer()],
        optional("maxGpus") => [integer()],
        optional("maxRuns") => [integer()],
        optional("name") => String.t()
      }
      
  """
  @type update_run_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workflow_response() :: %{
        "arn" => String.t(),
        "id" => String.t(),
        "status" => String.t(),
        "tags" => map()
      }
      
  """
  @type create_workflow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_variant_store_request() :: %{}
      
  """
  @type get_variant_store_request() :: %{}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_read_set_activation_job_request() :: %{}
      
  """
  @type get_read_set_activation_job_request() :: %{}

  @typedoc """

  ## Example:
      
      get_variant_import_request() :: %{}
      
  """
  @type get_variant_import_request() :: %{}

  @typedoc """

  ## Example:
      
      sequence_information() :: %{
        "alignment" => [String.t()],
        "generatedFrom" => String.t(),
        "totalBaseCount" => [float()],
        "totalReadCount" => [float()]
      }
      
  """
  @type sequence_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_reference_stores_request() :: %{
        optional("filter") => reference_store_filter(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }
      
  """
  @type list_reference_stores_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_reference_import_jobs_request() :: %{
        optional("filter") => import_reference_filter(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }
      
  """
  @type list_reference_import_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_sequence_store_request() :: %{}
      
  """
  @type get_sequence_store_request() :: %{}

  @typedoc """

  ## Example:
      
      get_reference_import_job_response() :: %{
        "completionTime" => [non_neg_integer()],
        "creationTime" => [non_neg_integer()],
        "id" => String.t(),
        "referenceStoreId" => String.t(),
        "roleArn" => String.t(),
        "sources" => list(import_reference_source_item()()),
        "status" => String.t(),
        "statusMessage" => String.t()
      }
      
  """
  @type get_reference_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_read_set_import_job_response() :: %{
        "completionTime" => [non_neg_integer()],
        "creationTime" => [non_neg_integer()],
        "id" => String.t(),
        "roleArn" => String.t(),
        "sequenceStoreId" => String.t(),
        "sources" => list(import_read_set_source_item()()),
        "status" => String.t(),
        "statusMessage" => String.t()
      }
      
  """
  @type get_read_set_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tsv_version_options() :: %{
        "annotationType" => String.t(),
        "formatToHeader" => map(),
        "schema" => list(map()())
      }
      
  """
  @type tsv_version_options() :: %{String.t() => any()}

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
      
      import_reference_filter() :: %{
        "createdAfter" => [non_neg_integer()],
        "createdBefore" => [non_neg_integer()],
        "status" => String.t()
      }
      
  """
  @type import_reference_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_annotation_import_jobs_request() :: %{
        optional("filter") => list_annotation_import_jobs_filter(),
        optional("ids") => list(String.t()()),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_annotation_import_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_variant_stores_response() :: %{
        "nextToken" => [String.t()],
        "variantStores" => list(variant_store_item()())
      }
      
  """
  @type list_variant_stores_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_annotation_import_response() :: %{
        "jobId" => String.t()
      }
      
  """
  @type start_annotation_import_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_read_set_import_job_request() :: %{}
      
  """
  @type get_read_set_import_job_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_reference_store_request() :: %{}
      
  """
  @type delete_reference_store_request() :: %{}

  @typedoc """

  ## Example:
      
      multipart_read_set_upload_list_item() :: %{
        "creationTime" => [non_neg_integer()],
        "description" => String.t(),
        "generatedFrom" => String.t(),
        "name" => String.t(),
        "referenceArn" => String.t(),
        "sampleId" => String.t(),
        "sequenceStoreId" => String.t(),
        "sourceFileType" => String.t(),
        "subjectId" => String.t(),
        "tags" => map(),
        "uploadId" => String.t()
      }
      
  """
  @type multipart_read_set_upload_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      variant_import_item_detail() :: %{
        "jobStatus" => String.t(),
        "source" => String.t(),
        "statusMessage" => String.t()
      }
      
  """
  @type variant_import_item_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_run_task_request() :: %{}
      
  """
  @type get_run_task_request() :: %{}

  @typedoc """

  ## Example:
      
      get_run_task_response() :: %{
        "cpus" => [integer()],
        "creationTime" => non_neg_integer(),
        "failureReason" => String.t(),
        "gpus" => [integer()],
        "instanceType" => String.t(),
        "logStream" => String.t(),
        "memory" => [integer()],
        "name" => String.t(),
        "startTime" => non_neg_integer(),
        "status" => String.t(),
        "statusMessage" => String.t(),
        "stopTime" => non_neg_integer(),
        "taskId" => String.t()
      }
      
  """
  @type get_run_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_reference_store_response() :: %{
        "arn" => String.t(),
        "creationTime" => [non_neg_integer()],
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "sseConfig" => sse_config()
      }
      
  """
  @type create_reference_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_reference_source_item() :: %{
        "description" => String.t(),
        "name" => String.t(),
        "sourceFile" => String.t(),
        "status" => String.t(),
        "statusMessage" => String.t(),
        "tags" => map()
      }
      
  """
  @type import_reference_source_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_read_set_upload_parts_request() :: %{
        optional("filter") => read_set_upload_part_list_filter(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        required("partSource") => String.t()
      }
      
  """
  @type list_read_set_upload_parts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_references_request() :: %{
        optional("filter") => reference_filter(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }
      
  """
  @type list_references_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      read_set_list_item() :: %{
        "arn" => String.t(),
        "creationTime" => [non_neg_integer()],
        "creationType" => String.t(),
        "description" => String.t(),
        "etag" => e_tag(),
        "fileType" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "referenceArn" => String.t(),
        "sampleId" => String.t(),
        "sequenceInformation" => sequence_information(),
        "sequenceStoreId" => String.t(),
        "status" => String.t(),
        "statusMessage" => String.t(),
        "subjectId" => String.t()
      }
      
  """
  @type read_set_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_annotation_import_request() :: %{}
      
  """
  @type get_annotation_import_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_reference_response() :: %{}
      
  """
  @type delete_reference_response() :: %{}

  @typedoc """

  ## Example:
      
      start_run_request() :: %{
        optional("logLevel") => String.t(),
        optional("name") => String.t(),
        optional("outputUri") => String.t(),
        optional("parameters") => any(),
        optional("priority") => [integer()],
        optional("retentionMode") => String.t(),
        optional("runGroupId") => String.t(),
        optional("runId") => String.t(),
        optional("storageCapacity") => [integer()],
        optional("storageType") => String.t(),
        optional("tags") => map(),
        optional("workflowId") => String.t(),
        optional("workflowOwnerId") => String.t(),
        optional("workflowType") => String.t(),
        required("requestId") => String.t(),
        required("roleArn") => String.t()
      }
      
  """
  @type start_run_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_annotation_store_versions_request() :: %{
        optional("force") => [boolean()],
        required("versions") => list(String.t()())
      }
      
  """
  @type delete_annotation_store_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_share_request() :: %{}
      
  """
  @type get_share_request() :: %{}

  @typedoc """

  ## Example:
      
      start_read_set_activation_job_response() :: %{
        "creationTime" => [non_neg_integer()],
        "id" => String.t(),
        "sequenceStoreId" => String.t(),
        "status" => String.t()
      }
      
  """
  @type start_read_set_activation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_annotation_store_version_request() :: %{
        optional("description") => String.t(),
        optional("tags") => map(),
        optional("versionOptions") => list(),
        required("versionName") => String.t()
      }
      
  """
  @type create_annotation_store_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_share_response() :: %{
        "share" => share_details()
      }
      
  """
  @type get_share_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_variant_import_response() :: %{}
      
  """
  @type cancel_variant_import_response() :: %{}

  @typedoc """

  ## Example:
      
      list_read_set_upload_parts_response() :: %{
        "nextToken" => String.t(),
        "parts" => list(read_set_upload_part_list_item()())
      }
      
  """
  @type list_read_set_upload_parts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_reference_store_response() :: %{}
      
  """
  @type delete_reference_store_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_share_response() :: %{
        "status" => String.t()
      }
      
  """
  @type delete_share_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_read_set_activation_job_source_item() :: %{
        "readSetId" => String.t()
      }
      
  """
  @type start_read_set_activation_job_source_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_variant_import_request() :: %{
        optional("annotationFields") => map(),
        optional("runLeftNormalization") => boolean(),
        required("destinationName") => String.t(),
        required("items") => list(variant_import_item_source()()),
        required("roleArn") => String.t()
      }
      
  """
  @type start_variant_import_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_files() :: %{
        "source1" => String.t(),
        "source2" => String.t()
      }
      
  """
  @type source_files() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_reference_import_job_request() :: %{}
      
  """
  @type get_reference_import_job_request() :: %{}

  @typedoc """

  ## Example:
      
      file_information() :: %{
        "contentLength" => [float()],
        "partSize" => [float()],
        "s3Access" => read_set_s3_access(),
        "totalParts" => [integer()]
      }
      
  """
  @type file_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_read_set_export_job_request() :: %{
        optional("clientToken") => String.t(),
        required("destination") => String.t(),
        required("roleArn") => String.t(),
        required("sources") => list(export_read_set()())
      }
      
  """
  @type start_read_set_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_variant_import_response() :: %{
        "jobId" => String.t()
      }
      
  """
  @type start_variant_import_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tsv_store_options() :: %{
        "annotationType" => String.t(),
        "formatToHeader" => map(),
        "schema" => list(map()())
      }
      
  """
  @type tsv_store_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_annotation_store_versions_request() :: %{
        optional("filter") => list_annotation_store_versions_filter(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_annotation_store_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_run_response() :: %{
        "accelerators" => String.t(),
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "definition" => String.t(),
        "digest" => String.t(),
        "failureReason" => String.t(),
        "id" => String.t(),
        "logLevel" => String.t(),
        "logLocation" => run_log_location(),
        "name" => String.t(),
        "outputUri" => String.t(),
        "parameters" => any(),
        "priority" => [integer()],
        "resourceDigests" => map(),
        "retentionMode" => String.t(),
        "roleArn" => String.t(),
        "runGroupId" => String.t(),
        "runId" => String.t(),
        "runOutputUri" => String.t(),
        "startTime" => non_neg_integer(),
        "startedBy" => String.t(),
        "status" => String.t(),
        "statusMessage" => String.t(),
        "stopTime" => non_neg_integer(),
        "storageCapacity" => [integer()],
        "storageType" => String.t(),
        "tags" => map(),
        "uuid" => String.t(),
        "workflowId" => String.t(),
        "workflowOwnerId" => String.t(),
        "workflowType" => String.t()
      }
      
  """
  @type get_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_run_groups_request() :: %{
        optional("maxResults") => [integer()],
        optional("name") => String.t(),
        optional("startingToken") => String.t()
      }
      
  """
  @type list_run_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workflows_response() :: %{
        "items" => list(workflow_list_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_workflows_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_annotation_stores_filter() :: %{
        "status" => String.t()
      }
      
  """
  @type list_annotation_stores_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      range_not_satisfiable_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type range_not_satisfiable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      complete_multipart_read_set_upload_request() :: %{
        required("parts") => list(complete_read_set_upload_part_list_item()())
      }
      
  """
  @type complete_multipart_read_set_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      read_set_batch_error() :: %{
        "code" => [String.t()],
        "id" => String.t(),
        "message" => [String.t()]
      }
      
  """
  @type read_set_batch_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_run_response() :: %{
        "arn" => String.t(),
        "id" => String.t(),
        "runOutputUri" => String.t(),
        "status" => String.t(),
        "tags" => map(),
        "uuid" => String.t()
      }
      
  """
  @type start_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_runs_request() :: %{
        optional("maxResults") => [integer()],
        optional("name") => String.t(),
        optional("runGroupId") => String.t(),
        optional("startingToken") => String.t(),
        optional("status") => String.t()
      }
      
  """
  @type list_runs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_variant_store_response() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => [String.t()],
        "reference" => list(),
        "sseConfig" => sse_config(),
        "status" => String.t(),
        "statusMessage" => String.t(),
        "storeArn" => String.t(),
        "storeSizeBytes" => [float()],
        "tags" => map(),
        "updateTime" => non_neg_integer()
      }
      
  """
  @type get_variant_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_share_request() :: %{}
      
  """
  @type delete_share_request() :: %{}

  @typedoc """

  ## Example:
      
      list_annotation_import_jobs_filter() :: %{
        "status" => String.t(),
        "storeName" => [String.t()]
      }
      
  """
  @type list_annotation_import_jobs_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_reference_import_jobs_response() :: %{
        "importJobs" => list(import_reference_job_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_reference_import_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_annotation_import_response() :: %{
        "annotationFields" => map(),
        "completionTime" => non_neg_integer(),
        "creationTime" => non_neg_integer(),
        "destinationName" => String.t(),
        "formatOptions" => list(),
        "id" => String.t(),
        "items" => list(annotation_import_item_detail()()),
        "roleArn" => String.t(),
        "runLeftNormalization" => boolean(),
        "status" => String.t(),
        "statusMessage" => String.t(),
        "updateTime" => non_neg_integer(),
        "versionName" => String.t()
      }
      
  """
  @type get_annotation_import_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      read_set_s3_access() :: %{
        "s3Uri" => String.t()
      }
      
  """
  @type read_set_s3_access() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_run_group_request() :: %{
        optional("maxCpus") => [integer()],
        optional("maxDuration") => [integer()],
        optional("maxGpus") => [integer()],
        optional("maxRuns") => [integer()],
        optional("name") => String.t(),
        optional("tags") => map(),
        required("requestId") => String.t()
      }
      
  """
  @type create_run_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      abort_multipart_read_set_upload_response() :: %{}
      
  """
  @type abort_multipart_read_set_upload_response() :: %{}

  @typedoc """

  ## Example:
      
      list_variant_import_jobs_filter() :: %{
        "status" => String.t(),
        "storeName" => [String.t()]
      }
      
  """
  @type list_variant_import_jobs_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_read_set_filter() :: %{
        "createdAfter" => [non_neg_integer()],
        "createdBefore" => [non_neg_integer()],
        "status" => String.t()
      }
      
  """
  @type export_read_set_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sequence_store_detail() :: %{
        "arn" => String.t(),
        "creationTime" => [non_neg_integer()],
        "description" => String.t(),
        "eTagAlgorithmFamily" => String.t(),
        "fallbackLocation" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "sseConfig" => sse_config()
      }
      
  """
  @type sequence_store_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_workflow_response() :: %{
        "accelerators" => String.t(),
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "definition" => String.t(),
        "description" => String.t(),
        "digest" => String.t(),
        "engine" => String.t(),
        "id" => String.t(),
        "main" => String.t(),
        "metadata" => map(),
        "name" => String.t(),
        "parameterTemplate" => map(),
        "status" => String.t(),
        "statusMessage" => String.t(),
        "storageCapacity" => [integer()],
        "tags" => map(),
        "type" => String.t()
      }
      
  """
  @type get_workflow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_read_set() :: %{
        "readSetId" => String.t()
      }
      
  """
  @type export_read_set() :: %{String.t() => any()}

  @type abort_multipart_read_set_upload_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | not_supported_operation_exception()
          | request_timeout_exception()

  @type accept_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_delete_read_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type cancel_annotation_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type cancel_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type cancel_variant_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type complete_multipart_read_set_upload_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | not_supported_operation_exception()
          | request_timeout_exception()

  @type create_annotation_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_annotation_store_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_multipart_read_set_upload_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | not_supported_operation_exception()
          | request_timeout_exception()

  @type create_reference_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | request_timeout_exception()

  @type create_run_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type create_sequence_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | request_timeout_exception()

  @type create_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_variant_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type delete_annotation_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_annotation_store_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_reference_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type delete_reference_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type delete_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type delete_run_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type delete_sequence_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type delete_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_variant_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type get_annotation_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_annotation_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_annotation_store_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_read_set_errors() ::
          range_not_satisfiable_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type get_read_set_activation_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type get_read_set_export_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type get_read_set_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type get_read_set_metadata_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type get_reference_errors() ::
          range_not_satisfiable_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type get_reference_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type get_reference_metadata_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type get_reference_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type get_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type get_run_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type get_run_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type get_sequence_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type get_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_variant_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_variant_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type list_annotation_import_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_annotation_store_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_annotation_stores_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_multipart_read_set_uploads_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | not_supported_operation_exception()
          | request_timeout_exception()

  @type list_read_set_activation_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type list_read_set_export_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type list_read_set_import_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type list_read_set_upload_parts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | not_supported_operation_exception()
          | request_timeout_exception()

  @type list_read_sets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type list_reference_import_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type list_reference_stores_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | request_timeout_exception()

  @type list_references_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type list_run_groups_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type list_run_tasks_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type list_runs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type list_sequence_stores_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | request_timeout_exception()

  @type list_shares_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type list_variant_import_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_variant_stores_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_workflows_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type start_annotation_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type start_read_set_activation_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type start_read_set_export_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type start_read_set_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type start_reference_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type start_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type start_variant_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type update_annotation_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_annotation_store_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_run_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type update_variant_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type upload_read_set_part_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | not_supported_operation_exception()
          | request_timeout_exception()

  def metadata do
    %{
      api_version: "2022-11-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "omics",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Omics",
      signature_version: "v4",
      signing_name: "omics",
      target_prefix: nil
    }
  end

  @doc """
  Stops a multipart upload.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20AbortMultipartReadSetUpload&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sequence_store_id` (`t:string`) The sequence store ID for the store involved
  in the multipart upload.
  * `:upload_id` (`t:string`) The ID for the multipart upload.

  ## Optional parameters:
  """

  @spec abort_multipart_read_set_upload(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, abort_multipart_read_set_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, abort_multipart_read_set_upload_errors()}

  def abort_multipart_read_set_upload(
        %Client{} = client,
        sequence_store_id,
        upload_id,
        options \\ []
      ) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/upload/#{AWS.Util.encode_uri(upload_id)}/abort"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Accept a resource share request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20AcceptShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:share_id` (`t:string`) The ID of the resource share.

  ## Optional parameters:
  """

  @spec accept_share(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, accept_share_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_share_errors()}

  def accept_share(%Client{} = client, share_id, options \\ []) do
    url_path = "/share/#{AWS.Util.encode_uri(share_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Deletes one or more read sets.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20BatchDeleteReadSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sequence_store_id` (`t:string`) The read sets' sequence store ID.

  ## Optional parameters:
  """

  @spec batch_delete_read_set(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, batch_delete_read_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_read_set_errors()}

  def batch_delete_read_set(%Client{} = client, sequence_store_id, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/readset/batch/delete"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Cancels an annotation import job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20CancelAnnotationImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:job_id` (`t:string`) The job's ID.

  ## Optional parameters:
  """

  @spec cancel_annotation_import_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, cancel_annotation_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_annotation_import_job_errors()}

  def cancel_annotation_import_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/import/annotation/#{AWS.Util.encode_uri(job_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Cancels a run.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20CancelRun&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The run's ID.

  ## Optional parameters:
  """

  @spec cancel_run(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_run_errors()}

  def cancel_run(%Client{} = client, id, options \\ []) do
    url_path = "/run/#{AWS.Util.encode_uri(id)}/cancel"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "workflows-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 202)
  end

  @doc """
  Cancels a variant import job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20CancelVariantImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:job_id` (`t:string`) The job's ID.

  ## Optional parameters:
  """

  @spec cancel_variant_import_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, cancel_variant_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_variant_import_job_errors()}

  def cancel_variant_import_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/import/variant/#{AWS.Util.encode_uri(job_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Concludes a multipart upload once you have uploaded all the components.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20CompleteMultipartReadSetUpload&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sequence_store_id` (`t:string`) The sequence store ID for the store involved
  in the multipart upload.
  * `:upload_id` (`t:string`) The ID for the multipart upload.

  ## Optional parameters:
  """

  @spec complete_multipart_read_set_upload(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, complete_multipart_read_set_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, complete_multipart_read_set_upload_errors()}

  def complete_multipart_read_set_upload(
        %Client{} = client,
        sequence_store_id,
        upload_id,
        options \\ []
      ) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/upload/#{AWS.Util.encode_uri(upload_id)}/complete"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "storage-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates an annotation store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20CreateAnnotationStore&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_annotation_store(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_annotation_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_annotation_store_errors()}

  def create_annotation_store(%Client{} = client, options \\ []) do
    url_path = "/annotationStore"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a new version of an annotation store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20CreateAnnotationStoreVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of an annotation store version from which
  versions are being created.

  ## Optional parameters:
  """

  @spec create_annotation_store_version(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_annotation_store_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_annotation_store_version_errors()}

  def create_annotation_store_version(%Client{} = client, name, options \\ []) do
    url_path = "/annotationStore/#{AWS.Util.encode_uri(name)}/version"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Begins a multipart read set upload.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20CreateMultipartReadSetUpload&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sequence_store_id` (`t:string`) The sequence store ID for the store that is
  the destination of the multipart uploads.

  ## Optional parameters:
  """

  @spec create_multipart_read_set_upload(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_multipart_read_set_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_multipart_read_set_upload_errors()}

  def create_multipart_read_set_upload(%Client{} = client, sequence_store_id, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/upload"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a reference store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20CreateReferenceStore&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_reference_store(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_reference_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_reference_store_errors()}

  def create_reference_store(%Client{} = client, options \\ []) do
    url_path = "/referencestore"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a run group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20CreateRunGroup&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_run_group(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_run_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_run_group_errors()}

  def create_run_group(%Client{} = client, options \\ []) do
    url_path = "/runGroup"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "workflows-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Creates a sequence store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20CreateSequenceStore&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_sequence_store(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_sequence_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_sequence_store_errors()}

  def create_sequence_store(%Client{} = client, options \\ []) do
    url_path = "/sequencestore"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a cross-account shared resource. The resource owner makes an offer to
  share the resource with the principal subscriber (an AWS user with a different
  account than the resource owner). The following resources support
  cross-account sharing:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20CreateShare&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_share(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_share_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_share_errors()}

  def create_share(%Client{} = client, options \\ []) do
    url_path = "/share"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a variant store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20CreateVariantStore&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_variant_store(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_variant_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_variant_store_errors()}

  def create_variant_store(%Client{} = client, options \\ []) do
    url_path = "/variantStore"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Creates a workflow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20CreateWorkflow&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_workflow(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_workflow_errors()}

  def create_workflow(%Client{} = client, options \\ []) do
    url_path = "/workflow"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "workflows-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Deletes an annotation store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20DeleteAnnotationStore&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The store's name.

  ## Optional parameters:
  * `:force` (`t:string`) Whether to force deletion.
  """

  @spec delete_annotation_store(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_annotation_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_annotation_store_errors()}

  def delete_annotation_store(%Client{} = client, name, options \\ []) do
    url_path = "/annotationStore/#{AWS.Util.encode_uri(name)}"

    # Validate optional parameters
    optional_params = [force: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :force) do
        [{"force", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:force])

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
  Deletes one or multiple versions of an annotation store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20DeleteAnnotationStoreVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of the annotation store from which versions are
  being deleted.

  ## Optional parameters:
  * `:force` (`t:string`) Forces the deletion of an annotation store version when
  imports are in-progress..
  """

  @spec delete_annotation_store_versions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_annotation_store_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_annotation_store_versions_errors()}

  def delete_annotation_store_versions(%Client{} = client, name, options \\ []) do
    url_path = "/annotationStore/#{AWS.Util.encode_uri(name)}/versions/delete"

    # Validate optional parameters
    optional_params = [force: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :force) do
        [{"force", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:force])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Deletes a genome reference.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20DeleteReference&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The reference's ID.
  * `:reference_store_id` (`t:string`) The reference's store ID.

  ## Optional parameters:
  """

  @spec delete_reference(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_reference_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_reference_errors()}

  def delete_reference(%Client{} = client, id, reference_store_id, options \\ []) do
    url_path =
      "/referencestore/#{AWS.Util.encode_uri(reference_store_id)}/reference/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Deletes a genome reference store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20DeleteReferenceStore&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The store's ID.

  ## Optional parameters:
  """

  @spec delete_reference_store(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_reference_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_reference_store_errors()}

  def delete_reference_store(%Client{} = client, id, options \\ []) do
    url_path = "/referencestore/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Deletes a workflow run.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20DeleteRun&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The run's ID.

  ## Optional parameters:
  """

  @spec delete_run(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_run_errors()}

  def delete_run(%Client{} = client, id, options \\ []) do
    url_path = "/run/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "workflows-")

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
      202
    )
  end

  @doc """
  Deletes a workflow run group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20DeleteRunGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The run group's ID.

  ## Optional parameters:
  """

  @spec delete_run_group(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_run_group_errors()}

  def delete_run_group(%Client{} = client, id, options \\ []) do
    url_path = "/runGroup/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "workflows-")

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
      202
    )
  end

  @doc """
  Deletes a sequence store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20DeleteSequenceStore&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The sequence store's ID.

  ## Optional parameters:
  """

  @spec delete_sequence_store(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_sequence_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_sequence_store_errors()}

  def delete_sequence_store(%Client{} = client, id, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Deletes a resource share. If you are the resource owner, the subscriber will no
  longer have access to the shared resource. If you are the subscriber, this
  operation deletes your access to the share.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20DeleteShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:share_id` (`t:string`) The ID for the resource share to be deleted.

  ## Optional parameters:
  """

  @spec delete_share(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_share_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_share_errors()}

  def delete_share(%Client{} = client, share_id, options \\ []) do
    url_path = "/share/#{AWS.Util.encode_uri(share_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Deletes a variant store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20DeleteVariantStore&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The store's name.

  ## Optional parameters:
  * `:force` (`t:string`) Whether to force deletion.
  """

  @spec delete_variant_store(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_variant_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_variant_store_errors()}

  def delete_variant_store(%Client{} = client, name, options \\ []) do
    url_path = "/variantStore/#{AWS.Util.encode_uri(name)}"

    # Validate optional parameters
    optional_params = [force: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :force) do
        [{"force", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:force])

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
  Deletes a workflow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20DeleteWorkflow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The workflow's ID.

  ## Optional parameters:
  """

  @spec delete_workflow(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_workflow_errors()}

  def delete_workflow(%Client{} = client, id, options \\ []) do
    url_path = "/workflow/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "workflows-")

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
      202
    )
  end

  @doc """
  Gets information about an annotation import job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20GetAnnotationImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:job_id` (`t:string`) The job's ID.

  ## Optional parameters:
  """

  @spec get_annotation_import_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_annotation_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_annotation_import_job_errors()}

  def get_annotation_import_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/import/annotation/#{AWS.Util.encode_uri(job_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about an annotation store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20GetAnnotationStore&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The store's name.

  ## Optional parameters:
  """

  @spec get_annotation_store(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_annotation_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_annotation_store_errors()}

  def get_annotation_store(%Client{} = client, name, options \\ []) do
    url_path = "/annotationStore/#{AWS.Util.encode_uri(name)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the metadata for an annotation store version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20GetAnnotationStoreVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name given to an annotation store version to
  distinguish it from others.
  * `:version_name` (`t:string`) The name given to an annotation store version to
  distinguish it from others.

  ## Optional parameters:
  """

  @spec get_annotation_store_version(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_annotation_store_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_annotation_store_version_errors()}

  def get_annotation_store_version(%Client{} = client, name, version_name, options \\ []) do
    url_path =
      "/annotationStore/#{AWS.Util.encode_uri(name)}/version/#{AWS.Util.encode_uri(version_name)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a file from a read set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20GetReadSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The read set's ID.
  * `:sequence_store_id` (`t:string`) The read set's sequence store ID.
  * `:part_number` (`t:string`) The part number to retrieve.

  ## Optional parameters:
  * `:file` (`t:string`) The file to retrieve.
  """

  @spec get_read_set(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_read_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_read_set_errors()}

  def get_read_set(%Client{} = client, id, sequence_store_id, part_number, options \\ [])
      when is_binary(part_number) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/readset/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = [file: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"partNumber", part_number}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :file) do
        [{"file", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "storage-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:file])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a read set activation job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20GetReadSetActivationJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The job's ID.
  * `:sequence_store_id` (`t:string`) The job's sequence store ID.

  ## Optional parameters:
  """

  @spec get_read_set_activation_job(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_read_set_activation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_read_set_activation_job_errors()}

  def get_read_set_activation_job(%Client{} = client, id, sequence_store_id, options \\ []) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/activationjob/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a read set export job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20GetReadSetExportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The job's ID.
  * `:sequence_store_id` (`t:string`) The job's sequence store ID.

  ## Optional parameters:
  """

  @spec get_read_set_export_job(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_read_set_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_read_set_export_job_errors()}

  def get_read_set_export_job(%Client{} = client, id, sequence_store_id, options \\ []) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/exportjob/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a read set import job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20GetReadSetImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The job's ID.
  * `:sequence_store_id` (`t:string`) The job's sequence store ID.

  ## Optional parameters:
  """

  @spec get_read_set_import_job(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_read_set_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_read_set_import_job_errors()}

  def get_read_set_import_job(%Client{} = client, id, sequence_store_id, options \\ []) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/importjob/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details about a read set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20GetReadSetMetadata&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The read set's ID.
  * `:sequence_store_id` (`t:string`) The read set's sequence store ID.

  ## Optional parameters:
  """

  @spec get_read_set_metadata(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_read_set_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_read_set_metadata_errors()}

  def get_read_set_metadata(%Client{} = client, id, sequence_store_id, options \\ []) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/readset/#{AWS.Util.encode_uri(id)}/metadata"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a reference file.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20GetReference&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The reference's ID.
  * `:reference_store_id` (`t:string`) The reference's store ID.
  * `:part_number` (`t:string`) The part number to retrieve.

  ## Optional parameters:
  * `:file` (`t:string`) The file to retrieve.
  * `:range` (`t:string`) The range to retrieve.
  """

  @spec get_reference(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_reference_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_reference_errors()}

  def get_reference(%Client{} = client, id, reference_store_id, part_number, options \\ [])
      when is_binary(part_number) do
    url_path =
      "/referencestore/#{AWS.Util.encode_uri(reference_store_id)}/reference/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = [file: nil, range: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :range) do
        [{"Range", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = [{"partNumber", part_number}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :file) do
        [{"file", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "storage-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:file, :range])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a reference import job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20GetReferenceImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The job's ID.
  * `:reference_store_id` (`t:string`) The job's reference store ID.

  ## Optional parameters:
  """

  @spec get_reference_import_job(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_reference_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_reference_import_job_errors()}

  def get_reference_import_job(%Client{} = client, id, reference_store_id, options \\ []) do
    url_path =
      "/referencestore/#{AWS.Util.encode_uri(reference_store_id)}/importjob/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a genome reference's metadata.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20GetReferenceMetadata&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The reference's ID.
  * `:reference_store_id` (`t:string`) The reference's reference store ID.

  ## Optional parameters:
  """

  @spec get_reference_metadata(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_reference_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_reference_metadata_errors()}

  def get_reference_metadata(%Client{} = client, id, reference_store_id, options \\ []) do
    url_path =
      "/referencestore/#{AWS.Util.encode_uri(reference_store_id)}/reference/#{AWS.Util.encode_uri(id)}/metadata"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a reference store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20GetReferenceStore&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The store's ID.

  ## Optional parameters:
  """

  @spec get_reference_store(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_reference_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_reference_store_errors()}

  def get_reference_store(%Client{} = client, id, options \\ []) do
    url_path = "/referencestore/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a workflow run.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20GetRun&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The run's ID.

  ## Optional parameters:
  * `:export` (`t:list[com.amazonaws.omics#RunExport]`) The run's export format.
  """

  @spec get_run(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_run_errors()}

  def get_run(%Client{} = client, id, options \\ []) do
    url_path = "/run/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = [export: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :export) do
        [{"export", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "workflows-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:export])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a workflow run group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20GetRunGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The group's ID.

  ## Optional parameters:
  """

  @spec get_run_group(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_run_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_run_group_errors()}

  def get_run_group(%Client{} = client, id, options \\ []) do
    url_path = "/runGroup/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a workflow run task.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20GetRunTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The workflow run ID.
  * `:task_id` (`t:string`) The task's ID.

  ## Optional parameters:
  """

  @spec get_run_task(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_run_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_run_task_errors()}

  def get_run_task(%Client{} = client, id, task_id, options \\ []) do
    url_path = "/run/#{AWS.Util.encode_uri(id)}/task/#{AWS.Util.encode_uri(task_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a sequence store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20GetSequenceStore&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The store's ID.

  ## Optional parameters:
  """

  @spec get_sequence_store(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_sequence_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sequence_store_errors()}

  def get_sequence_store(%Client{} = client, id, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the metadata for the specified resource share.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20GetShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:share_id` (`t:string`) The ID of the share.

  ## Optional parameters:
  """

  @spec get_share(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_share_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_share_errors()}

  def get_share(%Client{} = client, share_id, options \\ []) do
    url_path = "/share/#{AWS.Util.encode_uri(share_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a variant import job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20GetVariantImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:job_id` (`t:string`) The job's ID.

  ## Optional parameters:
  """

  @spec get_variant_import_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_variant_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_variant_import_job_errors()}

  def get_variant_import_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/import/variant/#{AWS.Util.encode_uri(job_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a variant store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20GetVariantStore&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The store's name.

  ## Optional parameters:
  """

  @spec get_variant_store(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_variant_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_variant_store_errors()}

  def get_variant_store(%Client{} = client, name, options \\ []) do
    url_path = "/variantStore/#{AWS.Util.encode_uri(name)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a workflow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20GetWorkflow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The workflow's ID.

  ## Optional parameters:
  * `:export` (`t:list[com.amazonaws.omics#WorkflowExport]`) The export format for
  the workflow.
  * `:type` (`t:string`) The workflow's type.
  * `:workflow_owner_id` (`t:string`) The ID of the workflow owner.
  """

  @spec get_workflow(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_workflow_errors()}

  def get_workflow(%Client{} = client, id, options \\ []) do
    url_path = "/workflow/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = [export: nil, type: nil, workflow_owner_id: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :workflow_owner_id) do
        [{"workflowOwnerId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :type) do
        [{"type", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :export) do
        [{"export", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "workflows-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:export, :type, :workflow_owner_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of annotation import jobs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20ListAnnotationImportJobs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:string`) The maximum number of jobs to return in one page
  of results.
  * `:next_token` (`t:string`) Specifies the pagination token from a previous
  request to retrieve the next page of results.
  """

  @spec list_annotation_import_jobs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_annotation_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_annotation_import_jobs_errors()}

  def list_annotation_import_jobs(%Client{} = client, options \\ []) do
    url_path = "/import/annotations"

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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Lists the versions of an annotation store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20ListAnnotationStoreVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of an annotation store.

  ## Optional parameters:
  * `:max_results` (`t:string`) The maximum number of annotation store versions to
  return in one page of results.
  * `:next_token` (`t:string`) Specifies the pagination token from a previous
  request to retrieve the next page of results.
  """

  @spec list_annotation_store_versions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_annotation_store_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_annotation_store_versions_errors()}

  def list_annotation_store_versions(%Client{} = client, name, options \\ []) do
    url_path = "/annotationStore/#{AWS.Util.encode_uri(name)}/versions"

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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves a list of annotation stores.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20ListAnnotationStores&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:string`) The maximum number of stores to return in one page
  of results.
  * `:next_token` (`t:string`) Specify the pagination token from a previous
  request to retrieve the next page of results.
  """

  @spec list_annotation_stores(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_annotation_stores_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_annotation_stores_errors()}

  def list_annotation_stores(%Client{} = client, options \\ []) do
    url_path = "/annotationStores"

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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Lists multipart read set uploads and for in progress uploads. Once the upload is
  completed, a read set is created and the upload will no longer be returned in
  the response.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20ListMultipartReadSetUploads&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sequence_store_id` (`t:string`) The Sequence Store ID used for the multipart
  uploads.

  ## Optional parameters:
  * `:max_results` (`t:string`) The maximum number of multipart uploads returned
  in a page.
  * `:next_token` (`t:string`) Next token returned in the response of a previous
  ListMultipartReadSetUploads call. Used to get the next page of results.
  """

  @spec list_multipart_read_set_uploads(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_multipart_read_set_uploads_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_multipart_read_set_uploads_errors()}

  def list_multipart_read_set_uploads(%Client{} = client, sequence_store_id, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/uploads"

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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves a list of read set activation jobs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20ListReadSetActivationJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sequence_store_id` (`t:string`) The read set's sequence store ID.

  ## Optional parameters:
  * `:max_results` (`t:string`) The maximum number of read set activation jobs to
  return in one page of results.
  * `:next_token` (`t:string`) Specify the pagination token from a previous
  request to retrieve the next page of results.
  """

  @spec list_read_set_activation_jobs(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_read_set_activation_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_read_set_activation_jobs_errors()}

  def list_read_set_activation_jobs(%Client{} = client, sequence_store_id, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/activationjobs"

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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves a list of read set export jobs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20ListReadSetExportJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sequence_store_id` (`t:string`) The jobs' sequence store ID.

  ## Optional parameters:
  * `:max_results` (`t:string`) The maximum number of jobs to return in one page
  of results.
  * `:next_token` (`t:string`) Specify the pagination token from a previous
  request to retrieve the next page of results.
  """

  @spec list_read_set_export_jobs(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_read_set_export_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_read_set_export_jobs_errors()}

  def list_read_set_export_jobs(%Client{} = client, sequence_store_id, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/exportjobs"

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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves a list of read set import jobs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20ListReadSetImportJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sequence_store_id` (`t:string`) The jobs' sequence store ID.

  ## Optional parameters:
  * `:max_results` (`t:string`) The maximum number of jobs to return in one page
  of results.
  * `:next_token` (`t:string`) Specify the pagination token from a previous
  request to retrieve the next page of results.
  """

  @spec list_read_set_import_jobs(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_read_set_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_read_set_import_jobs_errors()}

  def list_read_set_import_jobs(%Client{} = client, sequence_store_id, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/importjobs"

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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  This operation will list all parts in a requested multipart upload for a
  sequence store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20ListReadSetUploadParts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sequence_store_id` (`t:string`) The Sequence Store ID used for the multipart
  uploads.
  * `:upload_id` (`t:string`) The ID for the initiated multipart upload.

  ## Optional parameters:
  * `:max_results` (`t:string`) The maximum number of read set upload parts
  returned in a page.
  * `:next_token` (`t:string`) Next token returned in the response of a previous
  ListReadSetUploadPartsRequest call. Used to get the next page of results.
  """

  @spec list_read_set_upload_parts(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_read_set_upload_parts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_read_set_upload_parts_errors()}

  def list_read_set_upload_parts(%Client{} = client, sequence_store_id, upload_id, options \\ []) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/upload/#{AWS.Util.encode_uri(upload_id)}/parts"

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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves a list of read sets.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20ListReadSets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sequence_store_id` (`t:string`) The jobs' sequence store ID.

  ## Optional parameters:
  * `:max_results` (`t:string`) The maximum number of read sets to return in one
  page of results.
  * `:next_token` (`t:string`) Specify the pagination token from a previous
  request to retrieve the next page of results.
  """

  @spec list_read_sets(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_read_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_read_sets_errors()}

  def list_read_sets(%Client{} = client, sequence_store_id, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/readsets"

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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves a list of reference import jobs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20ListReferenceImportJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:reference_store_id` (`t:string`) The job's reference store ID.

  ## Optional parameters:
  * `:max_results` (`t:string`) The maximum number of jobs to return in one page
  of results.
  * `:next_token` (`t:string`) Specify the pagination token from a previous
  request to retrieve the next page of results.
  """

  @spec list_reference_import_jobs(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_reference_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_reference_import_jobs_errors()}

  def list_reference_import_jobs(%Client{} = client, reference_store_id, options \\ []) do
    url_path = "/referencestore/#{AWS.Util.encode_uri(reference_store_id)}/importjobs"

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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves a list of reference stores.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20ListReferenceStores&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:string`) The maximum number of stores to return in one page
  of results.
  * `:next_token` (`t:string`) Specify the pagination token from a previous
  request to retrieve the next page of results.
  """

  @spec list_reference_stores(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_reference_stores_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_reference_stores_errors()}

  def list_reference_stores(%Client{} = client, options \\ []) do
    url_path = "/referencestores"

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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves a list of references.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20ListReferences&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:reference_store_id` (`t:string`) The references' reference store ID.

  ## Optional parameters:
  * `:max_results` (`t:string`) The maximum number of references to return in one
  page of results.
  * `:next_token` (`t:string`) Specify the pagination token from a previous
  request to retrieve the next page of results.
  """

  @spec list_references(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_references_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_references_errors()}

  def list_references(%Client{} = client, reference_store_id, options \\ []) do
    url_path = "/referencestore/#{AWS.Util.encode_uri(reference_store_id)}/references"

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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves a list of run groups.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20ListRunGroups&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:string`) The maximum number of run groups to return in one
  page of results.
  * `:name` (`t:string`) The run groups' name.
  * `:starting_token` (`t:string`) Specify the pagination token from a previous
  request to retrieve the next page of results.
  """

  @spec list_run_groups(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_run_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_run_groups_errors()}

  def list_run_groups(%Client{} = client, options \\ []) do
    url_path = "/runGroup"

    # Validate optional parameters
    optional_params = [max_results: nil, name: nil, starting_token: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :starting_token) do
        [{"startingToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :name) do
        [{"name", opt_val} | query_params]
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
      metadata() |> Map.put_new(:host_prefix, "workflows-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :name, :starting_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of tasks for a run.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20ListRunTasks&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The run's ID.

  ## Optional parameters:
  * `:max_results` (`t:string`) The maximum number of run tasks to return in one
  page of results.
  * `:starting_token` (`t:string`) Specify the pagination token from a previous
  request to retrieve the next page of results.
  * `:status` (`t:string`) Filter the list by status.
  """

  @spec list_run_tasks(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_run_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_run_tasks_errors()}

  def list_run_tasks(%Client{} = client, id, options \\ []) do
    url_path = "/run/#{AWS.Util.encode_uri(id)}/task"

    # Validate optional parameters
    optional_params = [max_results: nil, starting_token: nil, status: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :starting_token) do
        [{"startingToken", opt_val} | query_params]
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
      metadata() |> Map.put_new(:host_prefix, "workflows-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :starting_token, :status])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of runs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20ListRuns&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:string`) The maximum number of runs to return in one page
  of results.
  * `:name` (`t:string`) Filter the list by run name.
  * `:run_group_id` (`t:string`) Filter the list by run group ID.
  * `:starting_token` (`t:string`) Specify the pagination token from a previous
  request to retrieve the next page of results.
  * `:status` (`t:string`) The status of a run.
  """

  @spec list_runs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_runs_errors()}

  def list_runs(%Client{} = client, options \\ []) do
    url_path = "/run"

    # Validate optional parameters
    optional_params = [
      max_results: nil,
      name: nil,
      run_group_id: nil,
      starting_token: nil,
      status: nil
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
      if opt_val = Keyword.get(options, :status) do
        [{"status", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :starting_token) do
        [{"startingToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :run_group_id) do
        [{"runGroupId", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :name) do
        [{"name", opt_val} | query_params]
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
      metadata() |> Map.put_new(:host_prefix, "workflows-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :name, :run_group_id, :starting_token, :status])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of sequence stores.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20ListSequenceStores&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:string`) The maximum number of stores to return in one page
  of results.
  * `:next_token` (`t:string`) Specify the pagination token from a previous
  request to retrieve the next page of results.
  """

  @spec list_sequence_stores(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_sequence_stores_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_sequence_stores_errors()}

  def list_sequence_stores(%Client{} = client, options \\ []) do
    url_path = "/sequencestores"

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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves the resource shares associated with an account. Use the filter
  parameter to retrieve a specific subset of the shares.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20ListShares&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:string`) The maximum number of shares to return in one page
  of results.
  * `:next_token` (`t:string`) Next token returned in the response of a previous
  ListReadSetUploadPartsRequest call. Used to get the next page of results.
  """

  @spec list_shares(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_shares_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_shares_errors()}

  def list_shares(%Client{} = client, options \\ []) do
    url_path = "/shares"

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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves a list of tags for a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The resource's ARN.

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
      metadata() |> Map.put_new(:host_prefix, "tags-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of variant import jobs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20ListVariantImportJobs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:string`) The maximum number of import jobs to return in one
  page of results.
  * `:next_token` (`t:string`) Specify the pagination token from a previous
  request to retrieve the next page of results.
  """

  @spec list_variant_import_jobs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_variant_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_variant_import_jobs_errors()}

  def list_variant_import_jobs(%Client{} = client, options \\ []) do
    url_path = "/import/variants"

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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves a list of variant stores.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20ListVariantStores&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:string`) The maximum number of stores to return in one page
  of results.
  * `:next_token` (`t:string`) Specify the pagination token from a previous
  request to retrieve the next page of results.
  """

  @spec list_variant_stores(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_variant_stores_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_variant_stores_errors()}

  def list_variant_stores(%Client{} = client, options \\ []) do
    url_path = "/variantStores"

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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves a list of workflows.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20ListWorkflows&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:string`) The maximum number of workflows to return in one
  page of results.
  * `:name` (`t:string`) Filter the list by workflow name.
  * `:starting_token` (`t:string`) Specify the pagination token from a previous
  request to retrieve the next page of results.
  * `:type` (`t:string`) Filter the list by workflow type.
  """

  @spec list_workflows(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_workflows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workflows_errors()}

  def list_workflows(%Client{} = client, options \\ []) do
    url_path = "/workflow"

    # Validate optional parameters
    optional_params = [max_results: nil, name: nil, starting_token: nil, type: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :starting_token) do
        [{"startingToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :name) do
        [{"name", opt_val} | query_params]
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
      metadata() |> Map.put_new(:host_prefix, "workflows-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :name, :starting_token, :type])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts an annotation import job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20StartAnnotationImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec start_annotation_import_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_annotation_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_annotation_import_job_errors()}

  def start_annotation_import_job(%Client{} = client, options \\ []) do
    url_path = "/import/annotation"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Activates an archived read set. To reduce storage charges, Amazon Omics archives
  unused read sets after 30 days.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20StartReadSetActivationJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sequence_store_id` (`t:string`) The read set's sequence store ID.

  ## Optional parameters:
  """

  @spec start_read_set_activation_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, start_read_set_activation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_read_set_activation_job_errors()}

  def start_read_set_activation_job(%Client{} = client, sequence_store_id, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/activationjob"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Exports a read set to Amazon S3.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20StartReadSetExportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sequence_store_id` (`t:string`) The read set's sequence store ID.

  ## Optional parameters:
  """

  @spec start_read_set_export_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, start_read_set_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_read_set_export_job_errors()}

  def start_read_set_export_job(%Client{} = client, sequence_store_id, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/exportjob"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Starts a read set import job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20StartReadSetImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sequence_store_id` (`t:string`) The read set's sequence store ID.

  ## Optional parameters:
  """

  @spec start_read_set_import_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, start_read_set_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_read_set_import_job_errors()}

  def start_read_set_import_job(%Client{} = client, sequence_store_id, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/importjob"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Starts a reference import job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20StartReferenceImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:reference_store_id` (`t:string`) The job's reference store ID.

  ## Optional parameters:
  """

  @spec start_reference_import_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, start_reference_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_reference_import_job_errors()}

  def start_reference_import_job(%Client{} = client, reference_store_id, options \\ []) do
    url_path = "/referencestore/#{AWS.Util.encode_uri(reference_store_id)}/importjob"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "control-storage-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Starts a workflow run. To duplicate a run, specify the run's ID and a role ARN.
  The remaining parameters are copied from the previous run. StartRun will not
  support re-run for a workflow that is shared with you.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20StartRun&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec start_run(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_run_errors()}

  def start_run(%Client{} = client, options \\ []) do
    url_path = "/run"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "workflows-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 201)
  end

  @doc """
  Starts a variant import job.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20StartVariantImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec start_variant_import_job(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_variant_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_variant_import_job_errors()}

  def start_variant_import_job(%Client{} = client, options \\ []) do
    url_path = "/import/variant"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Tags a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The resource's ARN.

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
      metadata() |> Map.put_new(:host_prefix, "tags-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 204)
  end

  @doc """
  Removes tags from a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The resource's ARN.
  * `:tag_keys` (`t:list[com.amazonaws.omics#TagKey]`) Keys of tags to remove.

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
      metadata() |> Map.put_new(:host_prefix, "tags-")

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
  Updates an annotation store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20UpdateAnnotationStore&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) A name for the store.

  ## Optional parameters:
  """

  @spec update_annotation_store(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_annotation_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_annotation_store_errors()}

  def update_annotation_store(%Client{} = client, name, options \\ []) do
    url_path = "/annotationStore/#{AWS.Util.encode_uri(name)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates the description of an annotation store version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20UpdateAnnotationStoreVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) The name of an annotation store.
  * `:version_name` (`t:string`) The name of an annotation store version.

  ## Optional parameters:
  """

  @spec update_annotation_store_version(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_annotation_store_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_annotation_store_version_errors()}

  def update_annotation_store_version(%Client{} = client, name, version_name, options \\ []) do
    url_path =
      "/annotationStore/#{AWS.Util.encode_uri(name)}/version/#{AWS.Util.encode_uri(version_name)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates a run group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20UpdateRunGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The group's ID.

  ## Optional parameters:
  """

  @spec update_run_group(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_run_group_errors()}

  def update_run_group(%Client{} = client, id, options \\ []) do
    url_path = "/runGroup/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "workflows-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 202)
  end

  @doc """
  Updates a variant store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20UpdateVariantStore&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:name` (`t:string`) A name for the store.

  ## Optional parameters:
  """

  @spec update_variant_store(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_variant_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_variant_store_errors()}

  def update_variant_store(%Client{} = client, name, options \\ []) do
    url_path = "/variantStore/#{AWS.Util.encode_uri(name)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "analytics-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Updates a workflow.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20UpdateWorkflow&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`) The workflow's ID.

  ## Optional parameters:
  """

  @spec update_workflow(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_workflow_errors()}

  def update_workflow(%Client{} = client, id, options \\ []) do
    url_path = "/workflow/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "workflows-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 202)
  end

  @doc """
  This operation uploads a specific part of a read set. If you upload a new part
  using a previously used part number, the previously uploaded part will be
  overwritten.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=omics%20UploadReadSetPart&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sequence_store_id` (`t:string`) The Sequence Store ID used for the multipart
  upload.
  * `:upload_id` (`t:string`) The ID for the initiated multipart upload.
  * `:part_number` (`t:string`) The number of the part being uploaded.
  * `:part_source` (`t:string`) The source file for an upload part.
  * `:input` (`t:map`):
    * `:payload` (`t:blob`) The read set data to upload for a part.

  ## Optional parameters:
  """

  @spec upload_read_set_part(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, upload_read_set_part_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, upload_read_set_part_errors()}

  def upload_read_set_part(
        %Client{} = client,
        sequence_store_id,
        upload_id,
        part_number,
        part_source,
        input,
        options \\ []
      )
      when is_map(input) and is_binary(part_number) and is_binary(part_source) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/upload/#{AWS.Util.encode_uri(upload_id)}/part"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"partNumber", part_number}, {"partSource", part_source}]

    # Optional query params

    meta =
      metadata() |> Map.put_new(:host_prefix, "storage-")

    body = input

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end
end
