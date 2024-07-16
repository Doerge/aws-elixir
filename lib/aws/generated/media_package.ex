# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaPackage do
  @moduledoc """
  AWS Elemental MediaPackage
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      rotate_ingest_endpoint_credentials_request() :: %{}

  """
  @type rotate_ingest_endpoint_credentials_request() :: %{}

  @typedoc """

  ## Example:

      delete_channel_request() :: %{}

  """
  @type delete_channel_request() :: %{}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_manifest_create_or_update_parameters() :: %{
        "AdMarkers" => list(any()),
        "AdTriggers" => list(list(any())()),
        "AdsOnDeliveryRestrictions" => list(any()),
        "Id" => String.t(),
        "IncludeIframeOnlyStream" => boolean(),
        "ManifestName" => String.t(),
        "PlaylistType" => list(any()),
        "PlaylistWindowSeconds" => integer(),
        "ProgramDateTimeIntervalSeconds" => integer()
      }

  """
  @type hls_manifest_create_or_update_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_origin_endpoint_request() :: %{
        optional("Authorization") => authorization(),
        optional("CmafPackage") => cmaf_package_create_or_update_parameters(),
        optional("DashPackage") => dash_package(),
        optional("Description") => String.t(),
        optional("HlsPackage") => hls_package(),
        optional("ManifestName") => String.t(),
        optional("MssPackage") => mss_package(),
        optional("Origination") => list(any()),
        optional("StartoverWindowSeconds") => integer(),
        optional("Tags") => map(),
        optional("TimeDelaySeconds") => integer(),
        optional("Whitelist") => list(String.t()()),
        required("ChannelId") => String.t(),
        required("Id") => String.t()
      }

  """
  @type create_origin_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_channel_response() :: %{
        "Arn" => String.t(),
        "CreatedAt" => String.t(),
        "Description" => String.t(),
        "EgressAccessLogs" => egress_access_logs(),
        "HlsIngest" => hls_ingest(),
        "Id" => String.t(),
        "IngressAccessLogs" => ingress_access_logs(),
        "Tags" => map()
      }

  """
  @type create_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_channel_response() :: %{}

  """
  @type delete_channel_response() :: %{}

  @typedoc """

  ## Example:

      create_origin_endpoint_response() :: %{
        "Arn" => String.t(),
        "Authorization" => authorization(),
        "ChannelId" => String.t(),
        "CmafPackage" => cmaf_package(),
        "CreatedAt" => String.t(),
        "DashPackage" => dash_package(),
        "Description" => String.t(),
        "HlsPackage" => hls_package(),
        "Id" => String.t(),
        "ManifestName" => String.t(),
        "MssPackage" => mss_package(),
        "Origination" => list(any()),
        "StartoverWindowSeconds" => integer(),
        "Tags" => map(),
        "TimeDelaySeconds" => integer(),
        "Url" => String.t(),
        "Whitelist" => list(String.t()())
      }

  """
  @type create_origin_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rotate_channel_credentials_response() :: %{
        "Arn" => String.t(),
        "CreatedAt" => String.t(),
        "Description" => String.t(),
        "EgressAccessLogs" => egress_access_logs(),
        "HlsIngest" => hls_ingest(),
        "Id" => String.t(),
        "IngressAccessLogs" => ingress_access_logs(),
        "Tags" => map()
      }

  """
  @type rotate_channel_credentials_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "Message" => String.t()
      }

  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_origin_endpoint_request() :: %{
        optional("Authorization") => authorization(),
        optional("CmafPackage") => cmaf_package_create_or_update_parameters(),
        optional("DashPackage") => dash_package(),
        optional("Description") => String.t(),
        optional("HlsPackage") => hls_package(),
        optional("ManifestName") => String.t(),
        optional("MssPackage") => mss_package(),
        optional("Origination") => list(any()),
        optional("StartoverWindowSeconds") => integer(),
        optional("TimeDelaySeconds") => integer(),
        optional("Whitelist") => list(String.t()())
      }

  """
  @type update_origin_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origin_endpoint() :: %{
        "Arn" => String.t(),
        "Authorization" => authorization(),
        "ChannelId" => String.t(),
        "CmafPackage" => cmaf_package(),
        "CreatedAt" => String.t(),
        "DashPackage" => dash_package(),
        "Description" => String.t(),
        "HlsPackage" => hls_package(),
        "Id" => String.t(),
        "ManifestName" => String.t(),
        "MssPackage" => mss_package(),
        "Origination" => list(any()),
        "StartoverWindowSeconds" => integer(),
        "Tags" => map(),
        "TimeDelaySeconds" => integer(),
        "Url" => String.t(),
        "Whitelist" => list(String.t()())
      }

  """
  @type origin_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_harvest_jobs_request() :: %{
        optional("IncludeChannelId") => String.t(),
        optional("IncludeStatus") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_harvest_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_origin_endpoint_response() :: %{}

  """
  @type delete_origin_endpoint_response() :: %{}

  @typedoc """

  ## Example:

      rotate_channel_credentials_request() :: %{}

  """
  @type rotate_channel_credentials_request() :: %{}

  @typedoc """

  ## Example:

      delete_origin_endpoint_request() :: %{}

  """
  @type delete_origin_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      describe_origin_endpoint_response() :: %{
        "Arn" => String.t(),
        "Authorization" => authorization(),
        "ChannelId" => String.t(),
        "CmafPackage" => cmaf_package(),
        "CreatedAt" => String.t(),
        "DashPackage" => dash_package(),
        "Description" => String.t(),
        "HlsPackage" => hls_package(),
        "Id" => String.t(),
        "ManifestName" => String.t(),
        "MssPackage" => mss_package(),
        "Origination" => list(any()),
        "StartoverWindowSeconds" => integer(),
        "Tags" => map(),
        "TimeDelaySeconds" => integer(),
        "Url" => String.t(),
        "Whitelist" => list(String.t()())
      }

  """
  @type describe_origin_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rotate_ingest_endpoint_credentials_response() :: %{
        "Arn" => String.t(),
        "CreatedAt" => String.t(),
        "Description" => String.t(),
        "EgressAccessLogs" => egress_access_logs(),
        "HlsIngest" => hls_ingest(),
        "Id" => String.t(),
        "IngressAccessLogs" => ingress_access_logs(),
        "Tags" => map()
      }

  """
  @type rotate_ingest_endpoint_credentials_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_manifest() :: %{
        "AdMarkers" => list(any()),
        "AdTriggers" => list(list(any())()),
        "AdsOnDeliveryRestrictions" => list(any()),
        "Id" => String.t(),
        "IncludeIframeOnlyStream" => boolean(),
        "ManifestName" => String.t(),
        "PlaylistType" => list(any()),
        "PlaylistWindowSeconds" => integer(),
        "ProgramDateTimeIntervalSeconds" => integer(),
        "Url" => String.t()
      }

  """
  @type hls_manifest() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_ingest() :: %{
        "IngestEndpoints" => list(ingest_endpoint()())
      }

  """
  @type hls_ingest() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_harvest_job_request() :: %{}

  """
  @type describe_harvest_job_request() :: %{}

  @typedoc """

  ## Example:

      list_origin_endpoints_response() :: %{
        "NextToken" => String.t(),
        "OriginEndpoints" => list(origin_endpoint()())
      }

  """
  @type list_origin_endpoints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      authorization() :: %{
        "CdnIdentifierSecret" => String.t(),
        "SecretsRoleArn" => String.t()
      }

  """
  @type authorization() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_harvest_job_request() :: %{
        required("EndTime") => String.t(),
        required("Id") => String.t(),
        required("OriginEndpointId") => String.t(),
        required("S3Destination") => s3_destination(),
        required("StartTime") => String.t()
      }

  """
  @type create_harvest_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_encryption() :: %{
        "ConstantInitializationVector" => String.t(),
        "EncryptionMethod" => list(any()),
        "KeyRotationIntervalSeconds" => integer(),
        "RepeatExtXKey" => boolean(),
        "SpekeKeyProvider" => speke_key_provider()
      }

  """
  @type hls_encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cmaf_package() :: %{
        "Encryption" => cmaf_encryption(),
        "HlsManifests" => list(hls_manifest()()),
        "SegmentDurationSeconds" => integer(),
        "SegmentPrefix" => String.t(),
        "StreamSelection" => stream_selection()
      }

  """
  @type cmaf_package() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_channel_response() :: %{
        "Arn" => String.t(),
        "CreatedAt" => String.t(),
        "Description" => String.t(),
        "EgressAccessLogs" => egress_access_logs(),
        "HlsIngest" => hls_ingest(),
        "Id" => String.t(),
        "IngressAccessLogs" => ingress_access_logs(),
        "Tags" => map()
      }

  """
  @type describe_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cmaf_package_create_or_update_parameters() :: %{
        "Encryption" => cmaf_encryption(),
        "HlsManifests" => list(hls_manifest_create_or_update_parameters()()),
        "SegmentDurationSeconds" => integer(),
        "SegmentPrefix" => String.t(),
        "StreamSelection" => stream_selection()
      }

  """
  @type cmaf_package_create_or_update_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_channel_request() :: %{}

  """
  @type describe_channel_request() :: %{}

  @typedoc """

  ## Example:

      speke_key_provider() :: %{
        "CertificateArn" => String.t(),
        "EncryptionContractConfiguration" => encryption_contract_configuration(),
        "ResourceId" => String.t(),
        "RoleArn" => String.t(),
        "SystemIds" => list(String.t()()),
        "Url" => String.t()
      }

  """
  @type speke_key_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ingest_endpoint() :: %{
        "Id" => String.t(),
        "Password" => String.t(),
        "Url" => String.t(),
        "Username" => String.t()
      }

  """
  @type ingest_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_channel_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("Id") => String.t()
      }

  """
  @type create_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_package() :: %{
        "AdMarkers" => list(any()),
        "AdTriggers" => list(list(any())()),
        "AdsOnDeliveryRestrictions" => list(any()),
        "Encryption" => hls_encryption(),
        "IncludeDvbSubtitles" => boolean(),
        "IncludeIframeOnlyStream" => boolean(),
        "PlaylistType" => list(any()),
        "PlaylistWindowSeconds" => integer(),
        "ProgramDateTimeIntervalSeconds" => integer(),
        "SegmentDurationSeconds" => integer(),
        "StreamSelection" => stream_selection(),
        "UseAudioRenditionGroup" => boolean()
      }

  """
  @type hls_package() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "Message" => String.t()
      }

  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dash_package() :: %{
        "AdTriggers" => list(list(any())()),
        "AdsOnDeliveryRestrictions" => list(any()),
        "Encryption" => dash_encryption(),
        "IncludeIframeOnlyStream" => boolean(),
        "ManifestLayout" => list(any()),
        "ManifestWindowSeconds" => integer(),
        "MinBufferTimeSeconds" => integer(),
        "MinUpdatePeriodSeconds" => integer(),
        "PeriodTriggers" => list(list(any())()),
        "Profile" => list(any()),
        "SegmentDurationSeconds" => integer(),
        "SegmentTemplateFormat" => list(any()),
        "StreamSelection" => stream_selection(),
        "SuggestedPresentationDelaySeconds" => integer(),
        "UtcTiming" => list(any()),
        "UtcTimingUri" => String.t()
      }

  """
  @type dash_package() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_channels_response() :: %{
        "Channels" => list(channel()()),
        "NextToken" => String.t()
      }

  """
  @type list_channels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_destination() :: %{
        "BucketName" => String.t(),
        "ManifestKey" => String.t(),
        "RoleArn" => String.t()
      }

  """
  @type s3_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_channel_request() :: %{
        optional("Description") => String.t()
      }

  """
  @type update_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stream_selection() :: %{
        "MaxVideoBitsPerSecond" => integer(),
        "MinVideoBitsPerSecond" => integer(),
        "StreamOrder" => list(any())
      }

  """
  @type stream_selection() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      encryption_contract_configuration() :: %{
        "PresetSpeke20Audio" => list(any()),
        "PresetSpeke20Video" => list(any())
      }

  """
  @type encryption_contract_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      egress_access_logs() :: %{
        "LogGroupName" => String.t()
      }

  """
  @type egress_access_logs() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dash_encryption() :: %{
        "KeyRotationIntervalSeconds" => integer(),
        "SpekeKeyProvider" => speke_key_provider()
      }

  """
  @type dash_encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unprocessable_entity_exception() :: %{
        "Message" => String.t()
      }

  """
  @type unprocessable_entity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cmaf_encryption() :: %{
        "ConstantInitializationVector" => String.t(),
        "EncryptionMethod" => list(any()),
        "KeyRotationIntervalSeconds" => integer(),
        "SpekeKeyProvider" => speke_key_provider()
      }

  """
  @type cmaf_encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel() :: %{
        "Arn" => String.t(),
        "CreatedAt" => String.t(),
        "Description" => String.t(),
        "EgressAccessLogs" => egress_access_logs(),
        "HlsIngest" => hls_ingest(),
        "Id" => String.t(),
        "IngressAccessLogs" => ingress_access_logs(),
        "Tags" => map()
      }

  """
  @type channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      harvest_job() :: %{
        "Arn" => String.t(),
        "ChannelId" => String.t(),
        "CreatedAt" => String.t(),
        "EndTime" => String.t(),
        "Id" => String.t(),
        "OriginEndpointId" => String.t(),
        "S3Destination" => s3_destination(),
        "StartTime" => String.t(),
        "Status" => list(any())
      }

  """
  @type harvest_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_harvest_job_response() :: %{
        "Arn" => String.t(),
        "ChannelId" => String.t(),
        "CreatedAt" => String.t(),
        "EndTime" => String.t(),
        "Id" => String.t(),
        "OriginEndpointId" => String.t(),
        "S3Destination" => s3_destination(),
        "StartTime" => String.t(),
        "Status" => list(any())
      }

  """
  @type describe_harvest_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_harvest_job_response() :: %{
        "Arn" => String.t(),
        "ChannelId" => String.t(),
        "CreatedAt" => String.t(),
        "EndTime" => String.t(),
        "Id" => String.t(),
        "OriginEndpointId" => String.t(),
        "S3Destination" => s3_destination(),
        "StartTime" => String.t(),
        "Status" => list(any())
      }

  """
  @type create_harvest_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configure_logs_response() :: %{
        "Arn" => String.t(),
        "CreatedAt" => String.t(),
        "Description" => String.t(),
        "EgressAccessLogs" => egress_access_logs(),
        "HlsIngest" => hls_ingest(),
        "Id" => String.t(),
        "IngressAccessLogs" => ingress_access_logs(),
        "Tags" => map()
      }

  """
  @type configure_logs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_origin_endpoint_request() :: %{}

  """
  @type describe_origin_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      configure_logs_request() :: %{
        optional("EgressAccessLogs") => egress_access_logs(),
        optional("IngressAccessLogs") => ingress_access_logs()
      }

  """
  @type configure_logs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_harvest_jobs_response() :: %{
        "HarvestJobs" => list(harvest_job()()),
        "NextToken" => String.t()
      }

  """
  @type list_harvest_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_channel_response() :: %{
        "Arn" => String.t(),
        "CreatedAt" => String.t(),
        "Description" => String.t(),
        "EgressAccessLogs" => egress_access_logs(),
        "HlsIngest" => hls_ingest(),
        "Id" => String.t(),
        "IngressAccessLogs" => ingress_access_logs(),
        "Tags" => map()
      }

  """
  @type update_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mss_encryption() :: %{
        "SpekeKeyProvider" => speke_key_provider()
      }

  """
  @type mss_encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_origin_endpoint_response() :: %{
        "Arn" => String.t(),
        "Authorization" => authorization(),
        "ChannelId" => String.t(),
        "CmafPackage" => cmaf_package(),
        "CreatedAt" => String.t(),
        "DashPackage" => dash_package(),
        "Description" => String.t(),
        "HlsPackage" => hls_package(),
        "Id" => String.t(),
        "ManifestName" => String.t(),
        "MssPackage" => mss_package(),
        "Origination" => list(any()),
        "StartoverWindowSeconds" => integer(),
        "Tags" => map(),
        "TimeDelaySeconds" => integer(),
        "Url" => String.t(),
        "Whitelist" => list(String.t()())
      }

  """
  @type update_origin_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_channels_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_channels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_origin_endpoints_request() :: %{
        optional("ChannelId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_origin_endpoints_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ingress_access_logs() :: %{
        "LogGroupName" => String.t()
      }

  """
  @type ingress_access_logs() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mss_package() :: %{
        "Encryption" => mss_encryption(),
        "ManifestWindowSeconds" => integer(),
        "SegmentDurationSeconds" => integer(),
        "StreamSelection" => stream_selection()
      }

  """
  @type mss_package() :: %{String.t() => any()}

  @type configure_logs_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_channel_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_harvest_job_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_origin_endpoint_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_channel_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_origin_endpoint_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_channel_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_harvest_job_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_origin_endpoint_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_channels_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_harvest_jobs_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_origin_endpoints_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type rotate_channel_credentials_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type rotate_ingest_endpoint_credentials_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_channel_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_origin_endpoint_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  def metadata do
    %{
      api_version: "2017-10-12",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mediapackage",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "MediaPackage",
      signature_version: "v4",
      signing_name: "mediapackage",
      target_prefix: nil
    }
  end

  @doc """
  Changes the Channel's properities to configure log subscription

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackage%20ConfigureLogs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`)

  ## Optional parameters:
  """
  @spec configure_logs(AWS.Client.t(), String.t(), configure_logs_request(), Keyword.t()) ::
          {:ok, configure_logs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, configure_logs_errors()}
  def configure_logs(%Client{} = client, id, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(id)}/configure_logs"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a new Channel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackage%20CreateChannel&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_channel(AWS.Client.t(), create_channel_request(), Keyword.t()) ::
          {:ok, create_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_channel_errors()}
  def create_channel(%Client{} = client, input, options \\ []) do
    url_path = "/channels"
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
  Creates a new HarvestJob record.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackage%20CreateHarvestJob&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_harvest_job(AWS.Client.t(), create_harvest_job_request(), Keyword.t()) ::
          {:ok, create_harvest_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_harvest_job_errors()}
  def create_harvest_job(%Client{} = client, input, options \\ []) do
    url_path = "/harvest_jobs"
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
  Creates a new OriginEndpoint record.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackage%20CreateOriginEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_origin_endpoint(AWS.Client.t(), create_origin_endpoint_request(), Keyword.t()) ::
          {:ok, create_origin_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_origin_endpoint_errors()}
  def create_origin_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/origin_endpoints"
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
  Deletes an existing Channel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackage%20DeleteChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`)

  ## Optional parameters:
  """
  @spec delete_channel(AWS.Client.t(), String.t(), delete_channel_request(), Keyword.t()) ::
          {:ok, delete_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_channel_errors()}
  def delete_channel(%Client{} = client, id, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(id)}"
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
      202
    )
  end

  @doc """
  Deletes an existing OriginEndpoint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackage%20DeleteOriginEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`)

  ## Optional parameters:
  """
  @spec delete_origin_endpoint(
          AWS.Client.t(),
          String.t(),
          delete_origin_endpoint_request(),
          Keyword.t()
        ) ::
          {:ok, delete_origin_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_origin_endpoint_errors()}
  def delete_origin_endpoint(%Client{} = client, id, input, options \\ []) do
    url_path = "/origin_endpoints/#{AWS.Util.encode_uri(id)}"
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
      202
    )
  end

  @doc """
  Gets details about a Channel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackage%20DescribeChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`)

  ## Optional parameters:
  """
  @spec describe_channel(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_channel_errors()}
  def describe_channel(%Client{} = client, id, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
  Gets details about an existing HarvestJob.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackage%20DescribeHarvestJob&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`)

  ## Optional parameters:
  """
  @spec describe_harvest_job(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_harvest_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_harvest_job_errors()}
  def describe_harvest_job(%Client{} = client, id, options \\ []) do
    url_path = "/harvest_jobs/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
  Gets details about an existing OriginEndpoint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackage%20DescribeOriginEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`)

  ## Optional parameters:
  """
  @spec describe_origin_endpoint(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, describe_origin_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_origin_endpoint_errors()}
  def describe_origin_endpoint(%Client{} = client, id, options \\ []) do
    url_path = "/origin_endpoints/#{AWS.Util.encode_uri(id)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
  Returns a collection of Channels.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackage%20ListChannels&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`)
  * `:next_token` (`t:string`)
  """
  @spec list_channels(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channels_errors()}
  def list_channels(%Client{} = client, options \\ []) do
    url_path = "/channels"

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
  Returns a collection of HarvestJob records.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackage%20ListHarvestJobs&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:include_channel_id` (`t:string`)
  * `:include_status` (`t:string`)
  * `:max_results` (`t:integer`)
  * `:next_token` (`t:string`)
  """
  @spec list_harvest_jobs(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_harvest_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_harvest_jobs_errors()}
  def list_harvest_jobs(%Client{} = client, options \\ []) do
    url_path = "/harvest_jobs"

    # Validate optional parameters
    optional_params = [
      include_channel_id: nil,
      include_status: nil,
      max_results: nil,
      next_token: nil
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
      if opt_val = Keyword.get(options, :include_status) do
        [{"includeStatus", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :include_channel_id) do
        [{"includeChannelId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:include_channel_id, :include_status, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a collection of OriginEndpoint records.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackage%20ListOriginEndpoints&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:channel_id` (`t:string`)
  * `:max_results` (`t:integer`)
  * `:next_token` (`t:string`)
  """
  @spec list_origin_endpoints(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_origin_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_origin_endpoints_errors()}
  def list_origin_endpoints(%Client{} = client, options \\ []) do
    url_path = "/origin_endpoints"

    # Validate optional parameters
    optional_params = [channel_id: nil, max_results: nil, next_token: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :channel_id) do
        [{"channelId", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:channel_id, :max_results, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

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
  Changes the Channel's first IngestEndpoint's username and password. WARNING -
  This API is deprecated. Please use RotateIngestEndpointCredentials instead

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackage%20RotateChannelCredentials&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`)

  ## Optional parameters:
  """
  @spec rotate_channel_credentials(
          AWS.Client.t(),
          String.t(),
          rotate_channel_credentials_request(),
          Keyword.t()
        ) ::
          {:ok, rotate_channel_credentials_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, rotate_channel_credentials_errors()}
  def rotate_channel_credentials(%Client{} = client, id, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(id)}/credentials"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Rotate the IngestEndpoint's username and password, as specified by the
  IngestEndpoint's id.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackage%20RotateIngestEndpointCredentials&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`)
  * `:ingest_endpoint_id` (`t:string`)

  ## Optional parameters:
  """
  @spec rotate_ingest_endpoint_credentials(
          AWS.Client.t(),
          String.t(),
          String.t(),
          rotate_ingest_endpoint_credentials_request(),
          Keyword.t()
        ) ::
          {:ok, rotate_ingest_endpoint_credentials_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, rotate_ingest_endpoint_credentials_errors()}
  def rotate_ingest_endpoint_credentials(
        %Client{} = client,
        id,
        ingest_endpoint_id,
        input,
        options \\ []
      ) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(id)}/ingest_endpoints/#{AWS.Util.encode_uri(ingest_endpoint_id)}/credentials"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @spec tag_resource(AWS.Client.t(), String.t(), tag_resource_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
      204
    )
  end

  @spec untag_resource(AWS.Client.t(), String.t(), untag_resource_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
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
      204
    )
  end

  @doc """
  Updates an existing Channel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackage%20UpdateChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`)

  ## Optional parameters:
  """
  @spec update_channel(AWS.Client.t(), String.t(), update_channel_request(), Keyword.t()) ::
          {:ok, update_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_channel_errors()}
  def update_channel(%Client{} = client, id, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing OriginEndpoint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackage%20UpdateOriginEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:id` (`t:string`)

  ## Optional parameters:
  """
  @spec update_origin_endpoint(
          AWS.Client.t(),
          String.t(),
          update_origin_endpoint_request(),
          Keyword.t()
        ) ::
          {:ok, update_origin_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_origin_endpoint_errors()}
  def update_origin_endpoint(%Client{} = client, id, input, options \\ []) do
    url_path = "/origin_endpoints/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
