# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MedicalImaging do
  @moduledoc """
  This is the *AWS HealthImaging API Reference*. AWS HealthImaging is a HIPAA
  eligible service that empowers healthcare providers, life science
  organizations, and their software partners to store, analyze, and share
  medical images in the cloud at petabyte scale. For an introduction to the
  service, see the [ *AWS HealthImaging Developer Guide*
  ](https://docs.aws.amazon.com/healthimaging/latest/devguide/what-is.html). We
  recommend using one of the AWS Software Development Kits (SDKs) for your
  programming language, as they take care of request authentication,
  serialization, and connection management. For more information, see [Tools to
  build on AWS](http://aws.amazon.com/developer/tools). The following sections
  list AWS HealthImaging API actions categorized according to functionality.
  Links are provided to actions within this Reference, along with links back to
  corresponding sections in the *AWS HealthImaging Developer Guide* where you
  can view tested code examples.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      get_image_set_metadata_request() :: %{
        optional("versionId") => String.t()
      }
      
  """
  @type get_image_set_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metadata_copies() :: %{
        "copiableAttributes" => String.t()
      }
      
  """
  @type metadata_copies() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_d_i_c_o_m_import_job_request() :: %{
        optional("inputOwnerAccountId") => String.t(),
        optional("jobName") => String.t(),
        required("clientToken") => String.t(),
        required("dataAccessRoleArn") => String.t(),
        required("inputS3Uri") => String.t(),
        required("outputS3Uri") => String.t()
      }
      
  """
  @type start_d_i_c_o_m_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_image_sets_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("searchCriteria") => search_criteria()
      }
      
  """
  @type search_image_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      overrides() :: %{
        "forced" => [boolean()]
      }
      
  """
  @type overrides() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_sets_metadata_summary() :: %{
        "DICOMTags" => d_i_c_o_m_tags(),
        "createdAt" => non_neg_integer(),
        "imageSetId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "version" => [integer()]
      }
      
  """
  @type image_sets_metadata_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      copy_image_set_request() :: %{
        optional("force") => [boolean()],
        required("copyImageSetInformation") => copy_image_set_information()
      }
      
  """
  @type copy_image_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_source_image_set_information() :: %{
        "DICOMCopies" => metadata_copies(),
        "latestVersionId" => String.t()
      }
      
  """
  @type copy_source_image_set_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_source_image_set_properties() :: %{
        "createdAt" => non_neg_integer(),
        "imageSetArn" => String.t(),
        "imageSetId" => String.t(),
        "imageSetState" => list(any()),
        "imageSetWorkflowStatus" => list(any()),
        "latestVersionId" => String.t(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type copy_source_image_set_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_datastore_request() :: %{}
      
  """
  @type get_datastore_request() :: %{}

  @typedoc """

  ## Example:
      
      list_image_set_versions_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }
      
  """
  @type list_image_set_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      d_i_c_o_m_import_job_summary() :: %{
        "dataAccessRoleArn" => String.t(),
        "datastoreId" => String.t(),
        "endedAt" => non_neg_integer(),
        "jobId" => String.t(),
        "jobName" => String.t(),
        "jobStatus" => list(any()),
        "message" => String.t(),
        "submittedAt" => non_neg_integer()
      }
      
  """
  @type d_i_c_o_m_import_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_set_properties() :: %{
        "ImageSetWorkflowStatus" => list(any()),
        "createdAt" => non_neg_integer(),
        "deletedAt" => non_neg_integer(),
        "imageSetId" => String.t(),
        "imageSetState" => list(any()),
        "message" => String.t(),
        "overrides" => overrides(),
        "updatedAt" => non_neg_integer(),
        "versionId" => String.t()
      }
      
  """
  @type image_set_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_frame_information() :: %{
        "imageFrameId" => String.t()
      }
      
  """
  @type image_frame_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_filter() :: %{
        "operator" => list(any()),
        "values" => list(list()())
      }
      
  """
  @type search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_d_i_c_o_m_import_job_request() :: %{}
      
  """
  @type get_d_i_c_o_m_import_job_request() :: %{}

  @typedoc """

  ## Example:
      
      get_image_set_response() :: %{
        "createdAt" => non_neg_integer(),
        "datastoreId" => String.t(),
        "deletedAt" => non_neg_integer(),
        "imageSetArn" => String.t(),
        "imageSetId" => String.t(),
        "imageSetState" => list(any()),
        "imageSetWorkflowStatus" => list(any()),
        "message" => String.t(),
        "overrides" => overrides(),
        "updatedAt" => non_neg_integer(),
        "versionId" => String.t()
      }
      
  """
  @type get_image_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_datastore_response() :: %{
        "datastoreId" => String.t(),
        "datastoreStatus" => list(any())
      }
      
  """
  @type delete_datastore_response() :: %{String.t() => any()}

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
      
      get_image_set_request() :: %{
        optional("versionId") => String.t()
      }
      
  """
  @type get_image_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_image_sets_response() :: %{
        "imageSetsMetadataSummaries" => list(image_sets_metadata_summary()()),
        "nextToken" => String.t(),
        "sort" => sort()
      }
      
  """
  @type search_image_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_image_set_metadata_request() :: %{
        optional("force") => [boolean()],
        required("latestVersionId") => String.t(),
        required("updateImageSetMetadataUpdates") => list()
      }
      
  """
  @type update_image_set_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_image_set_response() :: %{
        "datastoreId" => String.t(),
        "destinationImageSetProperties" => copy_destination_image_set_properties(),
        "sourceImageSetProperties" => copy_source_image_set_properties()
      }
      
  """
  @type copy_image_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_datastore_response() :: %{
        "datastoreProperties" => datastore_properties()
      }
      
  """
  @type get_datastore_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_datastores_response() :: %{
        "datastoreSummaries" => list(datastore_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_datastores_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_d_i_c_o_m_import_job_response() :: %{
        "datastoreId" => String.t(),
        "jobId" => String.t(),
        "jobStatus" => list(any()),
        "submittedAt" => non_neg_integer()
      }
      
  """
  @type start_d_i_c_o_m_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_image_frame_request() :: %{
        required("imageFrameInformation") => image_frame_information()
      }
      
  """
  @type get_image_frame_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      d_i_c_o_m_import_job_properties() :: %{
        "dataAccessRoleArn" => String.t(),
        "datastoreId" => String.t(),
        "endedAt" => non_neg_integer(),
        "inputS3Uri" => String.t(),
        "jobId" => String.t(),
        "jobName" => String.t(),
        "jobStatus" => list(any()),
        "message" => String.t(),
        "outputS3Uri" => String.t(),
        "submittedAt" => non_neg_integer()
      }
      
  """
  @type d_i_c_o_m_import_job_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_datastores_request() :: %{
        optional("datastoreStatus") => list(any()),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }
      
  """
  @type list_datastores_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      datastore_properties() :: %{
        "createdAt" => non_neg_integer(),
        "datastoreArn" => String.t(),
        "datastoreId" => String.t(),
        "datastoreName" => String.t(),
        "datastoreStatus" => list(any()),
        "kmsKeyArn" => String.t(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type datastore_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sort() :: %{
        "sortField" => list(any()),
        "sortOrder" => list(any())
      }
      
  """
  @type sort() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      d_i_c_o_m_tags() :: %{
        "DICOMAccessionNumber" => String.t(),
        "DICOMNumberOfStudyRelatedInstances" => integer(),
        "DICOMNumberOfStudyRelatedSeries" => integer(),
        "DICOMPatientBirthDate" => String.t(),
        "DICOMPatientId" => String.t(),
        "DICOMPatientName" => String.t(),
        "DICOMPatientSex" => String.t(),
        "DICOMSeriesBodyPart" => String.t(),
        "DICOMSeriesInstanceUID" => String.t(),
        "DICOMSeriesModality" => String.t(),
        "DICOMSeriesNumber" => integer(),
        "DICOMStudyDate" => String.t(),
        "DICOMStudyDescription" => String.t(),
        "DICOMStudyId" => String.t(),
        "DICOMStudyInstanceUID" => String.t(),
        "DICOMStudyTime" => String.t()
      }
      
  """
  @type d_i_c_o_m_tags() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_destination_image_set_properties() :: %{
        "createdAt" => non_neg_integer(),
        "imageSetArn" => String.t(),
        "imageSetId" => String.t(),
        "imageSetState" => list(any()),
        "imageSetWorkflowStatus" => list(any()),
        "latestVersionId" => String.t(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type copy_destination_image_set_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      datastore_summary() :: %{
        "createdAt" => non_neg_integer(),
        "datastoreArn" => String.t(),
        "datastoreId" => String.t(),
        "datastoreName" => String.t(),
        "datastoreStatus" => list(any()),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type datastore_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      d_i_c_o_m_updates() :: %{
        "removableAttributes" => binary(),
        "updatableAttributes" => binary()
      }
      
  """
  @type d_i_c_o_m_updates() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_image_set_versions_response() :: %{
        "imageSetPropertiesList" => list(image_set_properties()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_image_set_versions_response() :: %{String.t() => any()}

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
      
      copy_destination_image_set() :: %{
        "imageSetId" => String.t(),
        "latestVersionId" => String.t()
      }
      
  """
  @type copy_destination_image_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_d_i_c_o_m_import_jobs_request() :: %{
        optional("jobStatus") => list(any()),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }
      
  """
  @type list_d_i_c_o_m_import_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_image_set_request() :: %{}
      
  """
  @type delete_image_set_request() :: %{}

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
      
      create_datastore_request() :: %{
        optional("datastoreName") => String.t(),
        optional("kmsKeyArn") => String.t(),
        optional("tags") => map(),
        required("clientToken") => String.t()
      }
      
  """
  @type create_datastore_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_image_set_metadata_response() :: %{
        "contentEncoding" => [String.t()],
        "contentType" => [String.t()],
        "imageSetMetadataBlob" => binary()
      }
      
  """
  @type get_image_set_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_image_set_metadata_response() :: %{
        "createdAt" => non_neg_integer(),
        "datastoreId" => String.t(),
        "imageSetId" => String.t(),
        "imageSetState" => list(any()),
        "imageSetWorkflowStatus" => list(any()),
        "latestVersionId" => String.t(),
        "message" => String.t(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type update_image_set_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      d_i_c_o_m_study_date_and_time() :: %{
        "DICOMStudyDate" => String.t(),
        "DICOMStudyTime" => String.t()
      }
      
  """
  @type d_i_c_o_m_study_date_and_time() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_datastore_response() :: %{
        "datastoreId" => String.t(),
        "datastoreStatus" => list(any())
      }
      
  """
  @type create_datastore_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_image_set_information() :: %{
        "destinationImageSet" => copy_destination_image_set(),
        "sourceImageSet" => copy_source_image_set_information()
      }
      
  """
  @type copy_image_set_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_image_set_response() :: %{
        "datastoreId" => String.t(),
        "imageSetId" => String.t(),
        "imageSetState" => list(any()),
        "imageSetWorkflowStatus" => list(any())
      }
      
  """
  @type delete_image_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_criteria() :: %{
        "filters" => list(search_filter()()),
        "sort" => sort()
      }
      
  """
  @type search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_image_frame_response() :: %{
        "contentType" => [String.t()],
        "imageFrameBlob" => binary()
      }
      
  """
  @type get_image_frame_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_d_i_c_o_m_import_jobs_response() :: %{
        "jobSummaries" => list(d_i_c_o_m_import_job_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_d_i_c_o_m_import_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_datastore_request() :: %{}
      
  """
  @type delete_datastore_request() :: %{}

  @typedoc """

  ## Example:
      
      get_d_i_c_o_m_import_job_response() :: %{
        "jobProperties" => d_i_c_o_m_import_job_properties()
      }
      
  """
  @type get_d_i_c_o_m_import_job_response() :: %{String.t() => any()}

  @type copy_image_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_datastore_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_datastore_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_image_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_d_i_c_o_m_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_datastore_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_image_frame_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_image_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_image_set_metadata_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_d_i_c_o_m_import_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_datastores_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_image_set_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type search_image_sets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_d_i_c_o_m_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

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

  @type update_image_set_metadata_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2023-07-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "medical-imaging",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Medical Imaging",
      signature_version: "v4",
      signing_name: "medical-imaging",
      target_prefix: nil
    }
  end

  @doc """
  Copy an image set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=medicalimaging%20CopyImageSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:datastore_id` (`t:string`) The data store identifier.
  * `:source_image_set_id` (`t:string`) The source image set identifier.
  * `:input` (`t:map`):
    * `:copy_image_set_information` (`t:structure`) Copy image set information.

  ## Optional parameters:
  * `:force` (`t:string`) Setting this flag will force the CopyImageSet operation,
  even if Patient, Study, or Series level metadata are mismatched across the
  sourceImageSet and destinationImageSet.
  """

  @spec copy_image_set(AWS.Client.t(), String.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, copy_image_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, copy_image_set_errors()}

  def copy_image_set(%Client{} = client, datastore_id, source_image_set_id, input, options \\ [])
      when is_map(input) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(source_image_set_id)}/copyImageSet"

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
      metadata() |> Map.put_new(:host_prefix, "runtime-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:force])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Create a data store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=medicalimaging%20CreateDatastore&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_datastore(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_datastore_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_datastore_errors()}

  def create_datastore(%Client{} = client, options \\ []) do
    url_path = "/datastore"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
  Delete a data store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=medicalimaging%20DeleteDatastore&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:datastore_id` (`t:string`) The data store identifier.

  ## Optional parameters:
  """

  @spec delete_datastore(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_datastore_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_datastore_errors()}

  def delete_datastore(%Client{} = client, datastore_id, options \\ []) do
    url_path = "/datastore/#{AWS.Util.encode_uri(datastore_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
  Delete an image set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=medicalimaging%20DeleteImageSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:datastore_id` (`t:string`) The data store identifier.
  * `:image_set_id` (`t:string`) The image set identifier.

  ## Optional parameters:
  """

  @spec delete_image_set(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_image_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_image_set_errors()}

  def delete_image_set(%Client{} = client, datastore_id, image_set_id, options \\ []) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(image_set_id)}/deleteImageSet"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
      metadata() |> Map.put_new(:host_prefix, "runtime-")

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Get the import job properties to learn more about the job or job progress.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=medicalimaging%20GetDICOMImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:datastore_id` (`t:string`) The data store identifier.
  * `:job_id` (`t:string`) The import job identifier.

  ## Optional parameters:
  """

  @spec get_d_i_c_o_m_import_job(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_d_i_c_o_m_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_d_i_c_o_m_import_job_errors()}

  def get_d_i_c_o_m_import_job(%Client{} = client, datastore_id, job_id, options \\ []) do
    url_path =
      "/getDICOMImportJob/datastore/#{AWS.Util.encode_uri(datastore_id)}/job/#{AWS.Util.encode_uri(job_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
  Get data store properties.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=medicalimaging%20GetDatastore&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:datastore_id` (`t:string`) The data store identifier.

  ## Optional parameters:
  """

  @spec get_datastore(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_datastore_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_datastore_errors()}

  def get_datastore(%Client{} = client, datastore_id, options \\ []) do
    url_path = "/datastore/#{AWS.Util.encode_uri(datastore_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
  Get an image frame (pixel data) for an image set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=medicalimaging%20GetImageFrame&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:datastore_id` (`t:string`) The data store identifier.
  * `:image_set_id` (`t:string`) The image set identifier.
  * `:input` (`t:map`):
    * `:image_frame_information` (`t:structure`) Information about the image frame
  (pixel data) identifier.

  ## Optional parameters:
  """

  @spec get_image_frame(AWS.Client.t(), String.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, get_image_frame_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_image_frame_errors()}

  def get_image_frame(%Client{} = client, datastore_id, image_set_id, input, options \\ [])
      when is_map(input) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(image_set_id)}/getImageFrame"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = []

    # Optional query params
    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "contentType"}]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "contentType"}]
      )

    meta =
      metadata() |> Map.put_new(:host_prefix, "runtime-")

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Get image set properties.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=medicalimaging%20GetImageSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:datastore_id` (`t:string`) The data store identifier.
  * `:image_set_id` (`t:string`) The image set identifier.

  ## Optional parameters:
  * `:version_id` (`t:string`) The image set version identifier.
  """

  @spec get_image_set(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_image_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_image_set_errors()}

  def get_image_set(%Client{} = client, datastore_id, image_set_id, options \\ []) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(image_set_id)}/getImageSet"

    # Validate optional parameters
    optional_params = [version_id: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :version_id) do
        [{"version", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "runtime-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:version_id])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Get metadata attributes for an image set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=medicalimaging%20GetImageSetMetadata&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:datastore_id` (`t:string`) The data store identifier.
  * `:image_set_id` (`t:string`) The image set identifier.

  ## Optional parameters:
  * `:version_id` (`t:string`) The image set version identifier.
  """

  @spec get_image_set_metadata(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_image_set_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_image_set_metadata_errors()}

  def get_image_set_metadata(%Client{} = client, datastore_id, image_set_id, options \\ []) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(image_set_id)}/getImageSetMetadata"

    # Validate optional parameters
    optional_params = [version_id: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :version_id) do
        [{"version", opt_val} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Encoding", "contentEncoding"}, {"Content-Type", "contentType"}]
      )

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Encoding", "contentEncoding"}, {"Content-Type", "contentType"}]
      )

    meta =
      metadata() |> Map.put_new(:host_prefix, "runtime-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:version_id])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  List import jobs created for a specific data store.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=medicalimaging%20ListDICOMImportJobs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:datastore_id` (`t:string`) The data store identifier.

  ## Optional parameters:
  * `:job_status` (`t:enum["COMPLETED|FAILED|IN_PROGRESS|SUBMITTED"]`) The filters
  for listing import jobs based on status.
  * `:max_results` (`t:string`) The max results count. The upper bound is
  determined by load testing.
  * `:next_token` (`t:string`) The pagination token used to request the list of
  import jobs on the next page.
  """

  @spec list_d_i_c_o_m_import_jobs(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_d_i_c_o_m_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_d_i_c_o_m_import_jobs_errors()}

  def list_d_i_c_o_m_import_jobs(%Client{} = client, datastore_id, options \\ []) do
    url_path = "/listDICOMImportJobs/datastore/#{AWS.Util.encode_uri(datastore_id)}"

    # Validate optional parameters
    optional_params = [job_status: nil, max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :job_status) do
        [{"jobStatus", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:job_status, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List data stores.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=medicalimaging%20ListDatastores&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:datastore_status`
  (`t:enum["ACTIVE|CREATE_FAILED|CREATING|DELETED|DELETING"]`) The data store
  status.
  * `:max_results` (`t:string`) Valid Range: Minimum value of 1. Maximum value of
  50.
  * `:next_token` (`t:string`) The pagination token used to request the list of
  data stores on the next page.
  """

  @spec list_datastores(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_datastores_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_datastores_errors()}

  def list_datastores(%Client{} = client, options \\ []) do
    url_path = "/datastore"

    # Validate optional parameters
    optional_params = [datastore_status: nil, max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :datastore_status) do
        [{"datastoreStatus", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:datastore_status, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List image set versions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=medicalimaging%20ListImageSetVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:datastore_id` (`t:string`) The data store identifier.
  * `:image_set_id` (`t:string`) The image set identifier.

  ## Optional parameters:
  * `:max_results` (`t:string`) The max results count.
  * `:next_token` (`t:string`) The pagination token used to request the list of
  image set versions on the next page.
  """

  @spec list_image_set_versions(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_image_set_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_image_set_versions_errors()}

  def list_image_set_versions(%Client{} = client, datastore_id, image_set_id, options \\ []) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(image_set_id)}/listImageSetVersions"

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
      metadata() |> Map.put_new(:host_prefix, "runtime-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Lists all tags associated with a medical imaging resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=medicalimaging%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the medical
  imaging resource to list tags for.

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
  Search image sets based on defined input attributes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=medicalimaging%20SearchImageSets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:datastore_id` (`t:string`) The identifier of the data store where the image
  sets reside.
  * `:input` (`t:map | nil`):
    * `:search_criteria` (`t:structure`) The search criteria that filters by
  applying a maximum of 1 item to SearchByAttribute.

  ## Optional parameters:
  * `:max_results` (`t:string`) The maximum number of results that can be returned
  in a search.
  * `:next_token` (`t:string`) The token used for pagination of results returned
  in the response. Use the token returned from the previous request to
  continue results where the previous request ended.
  """

  @spec search_image_sets(AWS.Client.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, search_image_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_image_sets_errors()}

  def search_image_sets(%Client{} = client, datastore_id, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/datastore/#{AWS.Util.encode_uri(datastore_id)}/searchImageSets"

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
      metadata() |> Map.put_new(:host_prefix, "runtime-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Start importing bulk data into an `ACTIVE` data store. The import job imports
  DICOM P10 files found in the S3 prefix specified by the `inputS3Uri`
  parameter. The import job stores processing results in the file specified by
  the `outputS3Uri` parameter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=medicalimaging%20StartDICOMImportJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:datastore_id` (`t:string`) The data store identifier.

  ## Optional parameters:
  """

  @spec start_d_i_c_o_m_import_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, start_d_i_c_o_m_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_d_i_c_o_m_import_job_errors()}

  def start_d_i_c_o_m_import_job(%Client{} = client, datastore_id, options \\ []) do
    url_path = "/startDICOMImportJob/datastore/#{AWS.Util.encode_uri(datastore_id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
  Adds a user-specifed key and value tag to a medical imaging resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=medicalimaging%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the medical
  imaging resource that tags are being added to.

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
  Removes tags from a medical imaging resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=medicalimaging%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) of the medical
  imaging resource that tags are being removed from.
  * `:tag_keys` (`t:list[com.amazonaws.medicalimaging#TagKey]`) The keys for the
  tags to be removed from the medical imaging resource.

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
  Update image set metadata attributes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=medicalimaging%20UpdateImageSetMetadata&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:datastore_id` (`t:string`) The data store identifier.
  * `:image_set_id` (`t:string`) The image set identifier.
  * `:latest_version_id` (`t:string`) The latest image set version identifier.
  * `:input` (`t:map`):
    * `:update_image_set_metadata_updates` (`t:union`) Update image set metadata
  updates.

  ## Optional parameters:
  * `:force` (`t:string`) Setting this flag will force the UpdateImageSetMetadata
  operation for the following attributes:
  """

  @spec update_image_set_metadata(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, update_image_set_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_image_set_metadata_errors()}

  def update_image_set_metadata(
        %Client{} = client,
        datastore_id,
        image_set_id,
        latest_version_id,
        input,
        options \\ []
      )
      when is_map(input) and is_binary(latest_version_id) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(image_set_id)}/updateImageSetMetadata"

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
    query_params = [{"latestVersion", latest_version_id}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :force) do
        [{"force", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata() |> Map.put_new(:host_prefix, "runtime-")

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:force])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end
end
