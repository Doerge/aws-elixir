# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.B2bi do
  @moduledoc """
  This is the *Amazon Web Services B2B Data Interchange API Reference*. It
  provides descriptions, API request parameters, and the XML response for each
  of the B2BI API actions. B2BI enables automated exchange of EDI (electronic
  data interchange) based business-critical transactions at cloud scale, with
  elasticity and pay-as-you-go pricing. Businesses use EDI documents to exchange
  transactional data with trading partners, such as suppliers and end customers,
  using standardized formats such as X12.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      x12_details() :: %{
        "transactionSet" => list(any()),
        "version" => list(any())
      }
      
  """
  @type x12_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_capability_request() :: %{
        optional("clientToken") => [String.t()],
        optional("instructionsDocuments") => list(s3_location()()),
        optional("tags") => list(tag()()),
        required("configuration") => list(),
        required("name") => String.t(),
        required("type") => list(any())
      }
      
  """
  @type create_capability_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_profile_request() :: %{}
      
  """
  @type delete_profile_request() :: %{}

  @typedoc """

  ## Example:
      
      create_partnership_request() :: %{
        optional("clientToken") => [String.t()],
        optional("phone") => String.t(),
        optional("tags") => list(tag()()),
        required("capabilities") => list(String.t()()),
        required("email") => String.t(),
        required("name") => String.t(),
        required("profileId") => String.t()
      }
      
  """
  @type create_partnership_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_transformer_request() :: %{}
      
  """
  @type get_transformer_request() :: %{}

  @typedoc """

  ## Example:
      
      list_profiles_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      partnership_summary() :: %{
        "capabilities" => list(String.t()()),
        "createdAt" => non_neg_integer(),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t(),
        "partnershipId" => String.t(),
        "profileId" => String.t(),
        "tradingPartnerId" => String.t()
      }
      
  """
  @type partnership_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_partnerships_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("profileId") => String.t()
      }
      
  """
  @type list_partnerships_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_partnership_response() :: %{
        "capabilities" => list(String.t()()),
        "createdAt" => non_neg_integer(),
        "email" => String.t(),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t(),
        "partnershipArn" => String.t(),
        "partnershipId" => String.t(),
        "phone" => String.t(),
        "profileId" => String.t(),
        "tradingPartnerId" => String.t()
      }
      
  """
  @type get_partnership_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_capability_response() :: %{
        "capabilityArn" => String.t(),
        "capabilityId" => String.t(),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "instructionsDocuments" => list(s3_location()()),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t(),
        "type" => list(any())
      }
      
  """
  @type get_capability_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_transformer_request() :: %{
        optional("ediType") => list(),
        optional("fileFormat") => list(any()),
        optional("mappingTemplate") => String.t(),
        optional("name") => String.t(),
        optional("sampleDocument") => String.t(),
        optional("status") => list(any())
      }
      
  """
  @type update_transformer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_transformers_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_transformers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_transformer_request() :: %{
        optional("clientToken") => [String.t()],
        optional("sampleDocument") => String.t(),
        optional("tags") => list(tag()()),
        required("ediType") => list(),
        required("fileFormat") => list(any()),
        required("mappingTemplate") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_transformer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_transformer_response() :: %{
        "createdAt" => non_neg_integer(),
        "ediType" => list(),
        "fileFormat" => list(any()),
        "mappingTemplate" => String.t(),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t(),
        "sampleDocument" => String.t(),
        "status" => list(any()),
        "transformerArn" => String.t(),
        "transformerId" => String.t()
      }
      
  """
  @type get_transformer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_capability_response() :: %{
        "capabilityArn" => String.t(),
        "capabilityId" => String.t(),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "instructionsDocuments" => list(s3_location()()),
        "name" => String.t(),
        "type" => list(any())
      }
      
  """
  @type create_capability_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_transformers_response() :: %{
        "nextToken" => String.t(),
        "transformers" => list(transformer_summary()())
      }
      
  """
  @type list_transformers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_capability_response() :: %{
        "capabilityArn" => String.t(),
        "capabilityId" => String.t(),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "instructionsDocuments" => list(s3_location()()),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t(),
        "type" => list(any())
      }
      
  """
  @type update_capability_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_transformer_job_request() :: %{
        optional("clientToken") => [String.t()],
        required("inputFile") => s3_location(),
        required("outputLocation") => s3_location(),
        required("transformerId") => String.t()
      }
      
  """
  @type start_transformer_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_partnership_request() :: %{
        optional("capabilities") => list(String.t()()),
        optional("name") => String.t()
      }
      
  """
  @type update_partnership_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      capability_summary() :: %{
        "capabilityId" => String.t(),
        "createdAt" => non_neg_integer(),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t(),
        "type" => list(any())
      }
      
  """
  @type capability_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transformer_summary() :: %{
        "createdAt" => non_neg_integer(),
        "ediType" => list(),
        "fileFormat" => list(any()),
        "mappingTemplate" => String.t(),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t(),
        "sampleDocument" => String.t(),
        "status" => list(any()),
        "transformerId" => String.t()
      }
      
  """
  @type transformer_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_profile_request() :: %{
        optional("clientToken") => [String.t()],
        optional("email") => String.t(),
        optional("tags") => list(tag()()),
        required("businessName") => String.t(),
        required("logging") => list(any()),
        required("name") => String.t(),
        required("phone") => String.t()
      }
      
  """
  @type create_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_transformer_job_request() :: %{
        required("transformerId") => String.t()
      }
      
  """
  @type get_transformer_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_profile_request() :: %{
        optional("businessName") => String.t(),
        optional("email") => String.t(),
        optional("name") => String.t(),
        optional("phone") => String.t()
      }
      
  """
  @type update_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_transformer_request() :: %{}
      
  """
  @type delete_transformer_request() :: %{}

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
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t(),
        "quotaCode" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()],
        "serviceCode" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_profile_response() :: %{
        "businessName" => String.t(),
        "createdAt" => non_neg_integer(),
        "email" => String.t(),
        "logGroupName" => String.t(),
        "logging" => list(any()),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t(),
        "phone" => String.t(),
        "profileArn" => String.t(),
        "profileId" => String.t()
      }
      
  """
  @type get_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_capabilities_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_capabilities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_profile_response() :: %{
        "businessName" => String.t(),
        "createdAt" => non_neg_integer(),
        "email" => String.t(),
        "logGroupName" => String.t(),
        "logging" => list(any()),
        "name" => String.t(),
        "phone" => String.t(),
        "profileArn" => String.t(),
        "profileId" => String.t()
      }
      
  """
  @type create_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_transformer_job_response() :: %{
        "message" => [String.t()],
        "outputFiles" => list(s3_location()()),
        "status" => list(any())
      }
      
  """
  @type get_transformer_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      edi_configuration() :: %{
        "inputLocation" => s3_location(),
        "outputLocation" => s3_location(),
        "transformerId" => String.t(),
        "type" => list()
      }
      
  """
  @type edi_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_capability_request() :: %{
        optional("configuration") => list(),
        optional("instructionsDocuments") => list(s3_location()()),
        optional("name") => String.t()
      }
      
  """
  @type update_capability_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_location() :: %{
        "bucketName" => String.t(),
        "key" => String.t()
      }
      
  """
  @type s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_partnerships_response() :: %{
        "nextToken" => String.t(),
        "partnerships" => list(partnership_summary()())
      }
      
  """
  @type list_partnerships_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_transformer_response() :: %{
        "createdAt" => non_neg_integer(),
        "ediType" => list(),
        "fileFormat" => list(any()),
        "mappingTemplate" => String.t(),
        "name" => String.t(),
        "sampleDocument" => String.t(),
        "status" => list(any()),
        "transformerArn" => String.t(),
        "transformerId" => String.t()
      }
      
  """
  @type create_transformer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t(),
        "retryAfterSeconds" => [integer()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_transformer_response() :: %{
        "createdAt" => non_neg_integer(),
        "ediType" => list(),
        "fileFormat" => list(any()),
        "mappingTemplate" => String.t(),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t(),
        "sampleDocument" => String.t(),
        "status" => list(any()),
        "transformerArn" => String.t(),
        "transformerId" => String.t()
      }
      
  """
  @type update_transformer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_parsing_response() :: %{
        "parsedFileContent" => [String.t()]
      }
      
  """
  @type test_parsing_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_capabilities_response() :: %{
        "capabilities" => list(capability_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_capabilities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_partnership_request() :: %{}
      
  """
  @type delete_partnership_request() :: %{}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_profile_response() :: %{
        "businessName" => String.t(),
        "createdAt" => non_neg_integer(),
        "email" => String.t(),
        "logGroupName" => String.t(),
        "logging" => list(any()),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t(),
        "phone" => String.t(),
        "profileArn" => String.t(),
        "profileId" => String.t()
      }
      
  """
  @type update_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_profile_request() :: %{}
      
  """
  @type get_profile_request() :: %{}

  @typedoc """

  ## Example:
      
      list_profiles_response() :: %{
        "nextToken" => String.t(),
        "profiles" => list(profile_summary()())
      }
      
  """
  @type list_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t()
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
      
      delete_capability_request() :: %{}
      
  """
  @type delete_capability_request() :: %{}

  @typedoc """

  ## Example:
      
      update_partnership_response() :: %{
        "capabilities" => list(String.t()()),
        "createdAt" => non_neg_integer(),
        "email" => String.t(),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t(),
        "partnershipArn" => String.t(),
        "partnershipId" => String.t(),
        "phone" => String.t(),
        "profileId" => String.t(),
        "tradingPartnerId" => String.t()
      }
      
  """
  @type update_partnership_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t(),
        "retryAfterSeconds" => [integer()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_mapping_request() :: %{
        required("fileFormat") => list(any()),
        required("inputFileContent") => String.t(),
        required("mappingTemplate") => String.t()
      }
      
  """
  @type test_mapping_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_partnership_request() :: %{}
      
  """
  @type get_partnership_request() :: %{}

  @typedoc """

  ## Example:
      
      create_partnership_response() :: %{
        "capabilities" => list(String.t()()),
        "createdAt" => non_neg_integer(),
        "email" => String.t(),
        "name" => String.t(),
        "partnershipArn" => String.t(),
        "partnershipId" => String.t(),
        "phone" => String.t(),
        "profileId" => String.t(),
        "tradingPartnerId" => String.t()
      }
      
  """
  @type create_partnership_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_parsing_request() :: %{
        required("ediType") => list(),
        required("fileFormat") => list(any()),
        required("inputFile") => s3_location()
      }
      
  """
  @type test_parsing_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_capability_request() :: %{}
      
  """
  @type get_capability_request() :: %{}

  @typedoc """

  ## Example:
      
      test_mapping_response() :: %{
        "mappedFileContent" => [String.t()]
      }
      
  """
  @type test_mapping_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      profile_summary() :: %{
        "businessName" => String.t(),
        "createdAt" => non_neg_integer(),
        "logGroupName" => String.t(),
        "logging" => list(any()),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t(),
        "profileId" => String.t()
      }
      
  """
  @type profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_transformer_job_response() :: %{
        "transformerJobId" => String.t()
      }
      
  """
  @type start_transformer_job_response() :: %{String.t() => any()}

  @type create_capability_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_partnership_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_transformer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_capability_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_partnership_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_transformer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_capability_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_partnership_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_transformer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_transformer_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_capabilities_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_partnerships_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_profiles_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_transformers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type start_transformer_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type test_mapping_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type test_parsing_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_capability_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_partnership_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_transformer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2022-06-23",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "b2bi",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "b2bi",
      signature_version: "v4",
      signing_name: "b2bi",
      target_prefix: "B2BI"
    }
  end

  @doc """
  Instantiates a capability based on the specified parameters. A trading
  capability contains the information required to transform incoming EDI
  documents into JSON or XML outputs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20CreateCapability&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_capability_request`)
    %{
      optional("clientToken") => [String.t()],
      optional("instructionsDocuments") => list(s3_location()()),
      optional("tags") => list(tag()()),
      required("configuration") => list(),
      required("name") => String.t(),
      required("type") => list(any())
    }
  """

  @spec create_capability(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_capability_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_capability_errors()}

  def create_capability(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCapability", input, options)
  end

  @doc """
  Creates a partnership between a customer and a trading partner, based on the
  supplied parameters. A partnership represents the connection between you and
  your trading partner. It ties together a profile and one or more trading
  capabilities.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20CreatePartnership&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_partnership_request`)
    %{
      optional("clientToken") => [String.t()],
      optional("phone") => String.t(),
      optional("tags") => list(tag()()),
      required("capabilities") => list(String.t()()),
      required("email") => String.t(),
      required("name") => String.t(),
      required("profileId") => String.t()
    }
  """

  @spec create_partnership(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_partnership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_partnership_errors()}

  def create_partnership(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePartnership", input, options)
  end

  @doc """
  Creates a customer profile. You can have up to five customer profiles, each
  representing a distinct private network. A profile is the mechanism used to
  create the concept of a private network.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20CreateProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_profile_request`)
    %{
      optional("clientToken") => [String.t()],
      optional("email") => String.t(),
      optional("tags") => list(tag()()),
      required("businessName") => String.t(),
      required("logging") => list(any()),
      required("name") => String.t(),
      required("phone") => String.t()
    }
  """

  @spec create_profile(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_profile_errors()}

  def create_profile(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateProfile", input, options)
  end

  @doc """
  Creates a transformer. A transformer describes how to process the incoming EDI
  documents and extract the necessary information to the output file.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20CreateTransformer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_transformer_request`)
    %{
      optional("clientToken") => [String.t()],
      optional("sampleDocument") => String.t(),
      optional("tags") => list(tag()()),
      required("ediType") => list(),
      required("fileFormat") => list(any()),
      required("mappingTemplate") => String.t(),
      required("name") => String.t()
    }
  """

  @spec create_transformer(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_transformer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_transformer_errors()}

  def create_transformer(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTransformer", input, options)
  end

  @doc """
  Deletes the specified capability. A trading capability contains the information
  required to transform incoming EDI documents into JSON or XML outputs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20DeleteCapability&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_capability_request`)
    %{
      
    }
  """

  @spec delete_capability(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_capability_errors()}

  def delete_capability(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCapability", input, options)
  end

  @doc """
  Deletes the specified partnership. A partnership represents the connection
  between you and your trading partner. It ties together a profile and one or
  more trading capabilities.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20DeletePartnership&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_partnership_request`)
    %{
      
    }
  """

  @spec delete_partnership(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_partnership_errors()}

  def delete_partnership(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePartnership", input, options)
  end

  @doc """
  Deletes the specified profile. A profile is the mechanism used to create the
  concept of a private network.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20DeleteProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_profile_request`)
    %{
      
    }
  """

  @spec delete_profile(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_profile_errors()}

  def delete_profile(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteProfile", input, options)
  end

  @doc """
  Deletes the specified transformer. A transformer describes how to process the
  incoming EDI documents and extract the necessary information to the output
  file.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20DeleteTransformer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_transformer_request`)
    %{
      
    }
  """

  @spec delete_transformer(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_transformer_errors()}

  def delete_transformer(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTransformer", input, options)
  end

  @doc """
  Retrieves the details for the specified capability. A trading capability
  contains the information required to transform incoming EDI documents into
  JSON or XML outputs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20GetCapability&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_capability_request`)
    %{
      
    }
  """

  @spec get_capability(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_capability_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_capability_errors()}

  def get_capability(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCapability", input, options)
  end

  @doc """
  Retrieves the details for a partnership, based on the partner and profile IDs
  specified. A partnership represents the connection between you and your
  trading partner. It ties together a profile and one or more trading
  capabilities.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20GetPartnership&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_partnership_request`)
    %{
      
    }
  """

  @spec get_partnership(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_partnership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_partnership_errors()}

  def get_partnership(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPartnership", input, options)
  end

  @doc """
  Retrieves the details for the profile specified by the profile ID. A profile is
  the mechanism used to create the concept of a private network.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20GetProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_profile_request`)
    %{
      
    }
  """

  @spec get_profile(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_profile_errors()}

  def get_profile(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetProfile", input, options)
  end

  @doc """
  Retrieves the details for the transformer specified by the transformer ID. A
  transformer describes how to process the incoming EDI documents and extract
  the necessary information to the output file.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20GetTransformer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_transformer_request`)
    %{
      
    }
  """

  @spec get_transformer(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_transformer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_transformer_errors()}

  def get_transformer(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTransformer", input, options)
  end

  @doc """
  Returns the details of the transformer run, based on the Transformer job ID.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20GetTransformerJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_transformer_job_request`)
    %{
      required("transformerId") => String.t()
    }
  """

  @spec get_transformer_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_transformer_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_transformer_job_errors()}

  def get_transformer_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTransformerJob", input, options)
  end

  @doc """
  Lists the capabilities associated with your Amazon Web Services account for your
  current or specified region. A trading capability contains the information
  required to transform incoming EDI documents into JSON or XML outputs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20ListCapabilities&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_capabilities_request`)
    %{
      optional("maxResults") => integer(),
      optional("nextToken") => String.t()
    }
  """

  @spec list_capabilities(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_capabilities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_capabilities_errors()}

  def list_capabilities(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCapabilities", input, options)
  end

  @doc """
  Lists the partnerships associated with your Amazon Web Services account for your
  current or specified region. A partnership represents the connection between
  you and your trading partner. It ties together a profile and one or more
  trading capabilities.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20ListPartnerships&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_partnerships_request`)
    %{
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      optional("profileId") => String.t()
    }
  """

  @spec list_partnerships(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_partnerships_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_partnerships_errors()}

  def list_partnerships(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPartnerships", input, options)
  end

  @doc """
  Lists the profiles associated with your Amazon Web Services account for your
  current or specified region. A profile is the mechanism used to create the
  concept of a private network.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20ListProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_profiles_request`)
    %{
      optional("maxResults") => integer(),
      optional("nextToken") => String.t()
    }
  """

  @spec list_profiles(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_profiles_errors()}

  def list_profiles(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListProfiles", input, options)
  end

  @doc """
  Lists all of the tags associated with the Amazon Resource Name (ARN) that you
  specify. The resource can be a capability, partnership, profile, or
  transformer.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_request`)
    %{
      
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
  Lists the available transformers. A transformer describes how to process the
  incoming EDI documents and extract the necessary information to the output
  file.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20ListTransformers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_transformers_request`)
    %{
      optional("maxResults") => integer(),
      optional("nextToken") => String.t()
    }
  """

  @spec list_transformers(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_transformers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_transformers_errors()}

  def list_transformers(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTransformers", input, options)
  end

  @doc """
  Runs a job, using a transformer, to parse input EDI (electronic data
  interchange) file into the output structures used by Amazon Web Services B2BI
  Data Interchange.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20StartTransformerJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_transformer_job_request`)
    %{
      optional("clientToken") => [String.t()],
      required("inputFile") => s3_location(),
      required("outputLocation") => s3_location(),
      required("transformerId") => String.t()
    }
  """

  @spec start_transformer_job(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_transformer_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_transformer_job_errors()}

  def start_transformer_job(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartTransformerJob", input, options)
  end

  @doc """
  Attaches a key-value pair to a resource, as identified by its Amazon Resource
  Name (ARN). Resources are capability, partnership, profile, transformers and
  other entities.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_request`)
    %{
      required("Tags") => list(tag()())
    }
  """

  @spec tag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Maps the input file according to the provided template file. The API call
  downloads the file contents from the Amazon S3 location, and passes the
  contents in as a string, to the `inputFileContent` parameter.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20TestMapping&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:test_mapping_request`)
    %{
      required("fileFormat") => list(any()),
      required("inputFileContent") => String.t(),
      required("mappingTemplate") => String.t()
    }
  """

  @spec test_mapping(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, test_mapping_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, test_mapping_errors()}

  def test_mapping(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TestMapping", input, options)
  end

  @doc """
  Parses the input EDI (electronic data interchange) file. The input file has a
  file size limit of 250 KB.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20TestParsing&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:test_parsing_request`)
    %{
      required("ediType") => list(),
      required("fileFormat") => list(any()),
      required("inputFile") => s3_location()
    }
  """

  @spec test_parsing(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, test_parsing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, test_parsing_errors()}

  def test_parsing(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TestParsing", input, options)
  end

  @doc """
  Detaches a key-value pair from the specified resource, as identified by its
  Amazon Resource Name (ARN). Resources are capability, partnership, profile,
  transformers and other entities.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_request`)
    %{
      required("TagKeys") => list(String.t()())
    }
  """

  @spec untag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

  def untag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates some of the parameters for a capability, based on the specified
  parameters. A trading capability contains the information required to
  transform incoming EDI documents into JSON or XML outputs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20UpdateCapability&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_capability_request`)
    %{
      optional("configuration") => list(),
      optional("instructionsDocuments") => list(s3_location()()),
      optional("name") => String.t()
    }
  """

  @spec update_capability(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_capability_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_capability_errors()}

  def update_capability(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateCapability", input, options)
  end

  @doc """
  Updates some of the parameters for a partnership between a customer and trading
  partner. A partnership represents the connection between you and your trading
  partner. It ties together a profile and one or more trading capabilities.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20UpdatePartnership&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_partnership_request`)
    %{
      optional("capabilities") => list(String.t()()),
      optional("name") => String.t()
    }
  """

  @spec update_partnership(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_partnership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_partnership_errors()}

  def update_partnership(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePartnership", input, options)
  end

  @doc """
  Updates the specified parameters for a profile. A profile is the mechanism used
  to create the concept of a private network.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20UpdateProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_profile_request`)
    %{
      optional("businessName") => String.t(),
      optional("email") => String.t(),
      optional("name") => String.t(),
      optional("phone") => String.t()
    }
  """

  @spec update_profile(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_profile_errors()}

  def update_profile(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateProfile", input, options)
  end

  @doc """
  Updates the specified parameters for a transformer. A transformer describes how
  to process the incoming EDI documents and extract the necessary information to
  the output file.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=b2bi%20UpdateTransformer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_transformer_request`)
    %{
      optional("ediType") => list(),
      optional("fileFormat") => list(any()),
      optional("mappingTemplate") => String.t(),
      optional("name") => String.t(),
      optional("sampleDocument") => String.t(),
      optional("status") => list(any())
    }
  """

  @spec update_transformer(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_transformer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_transformer_errors()}

  def update_transformer(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateTransformer", input, options)
  end
end
