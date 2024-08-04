# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaPackageV2 do
  @moduledoc """
  This guide is intended for creating AWS Elemental MediaPackage resources in
  MediaPackage Version 2 (v2) starting from May 2023. To get started with
  MediaPackage v2, create your MediaPackage resources. There isn't an automated
  process to migrate your resources from MediaPackage v1 to MediaPackage v2. The
  names of the entities that you use to access this API, like URLs and ARNs, all
  have the versioning information added, like "v2", to distinguish from the
  prior version. If you used MediaPackage prior to this release, you can't use
  the MediaPackage v2 CLI or the MediaPackage v2 API to access any MediaPackage
  v1 resources. If you created resources in MediaPackage v1, use video on demand
  (VOD) workflows, and aren't looking to migrate to MediaPackage v2 yet, see the
  [MediaPackage v1 Live API
  Reference](https://docs.aws.amazon.com/mediapackage/latest/apireference/what-is.html).
  This is the AWS Elemental MediaPackage v2 Live REST API Reference. It
  describes all the MediaPackage API operations for live content in detail, and
  provides sample requests, responses, and errors for the supported web services
  protocols.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      put_channel_policy_request() :: %{
        required("Policy") => String.t()
      }
      
  """
  @type put_channel_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_channel_request() :: %{}
      
  """
  @type delete_channel_request() :: %{}

  @typedoc """

  ## Example:
      
      get_channel_request() :: %{}
      
  """
  @type get_channel_request() :: %{}

  @typedoc """

  ## Example:
      
      put_channel_policy_response() :: %{}
      
  """
  @type put_channel_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("Tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_origin_endpoint_request() :: %{
        optional("ClientToken") => String.t(),
        optional("DashManifests") => list(create_dash_manifest_configuration()()),
        optional("Description") => String.t(),
        optional("ForceEndpointErrorConfiguration") => force_endpoint_error_configuration(),
        optional("HlsManifests") => list(create_hls_manifest_configuration()()),
        optional("LowLatencyHlsManifests") => list(create_low_latency_hls_manifest_configuration()()),
        optional("Segment") => segment(),
        optional("StartoverWindowSeconds") => [integer()],
        optional("Tags") => map(),
        required("ContainerType") => list(any()),
        required("OriginEndpointName") => String.t()
      }
      
  """
  @type create_origin_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_list_configuration() :: %{
        "Arn" => [String.t()],
        "ChannelGroupName" => [String.t()],
        "ChannelName" => [String.t()],
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t(),
        "InputType" => list(any()),
        "ModifiedAt" => [non_neg_integer()]
      }
      
  """
  @type channel_list_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_channel_response() :: %{
        "Arn" => [String.t()],
        "ChannelGroupName" => [String.t()],
        "ChannelName" => [String.t()],
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t(),
        "ETag" => String.t(),
        "IngestEndpoints" => list(ingest_endpoint()()),
        "InputType" => list(any()),
        "ModifiedAt" => [non_neg_integer()],
        "Tags" => map()
      }
      
  """
  @type create_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dash_manifest_configuration() :: %{
        "ManifestName" => String.t(),
        "Url" => [String.t()]
      }
      
  """
  @type list_dash_manifest_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_group_list_configuration() :: %{
        "Arn" => [String.t()],
        "ChannelGroupName" => [String.t()],
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t(),
        "ModifiedAt" => [non_neg_integer()]
      }
      
  """
  @type channel_group_list_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_channel_response() :: %{}
      
  """
  @type delete_channel_response() :: %{}

  @typedoc """

  ## Example:
      
      list_hls_manifest_configuration() :: %{
        "ChildManifestName" => String.t(),
        "ManifestName" => String.t(),
        "Url" => [String.t()]
      }
      
  """
  @type list_hls_manifest_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_origin_endpoint_response() :: %{
        "Arn" => [String.t()],
        "ChannelGroupName" => String.t(),
        "ChannelName" => String.t(),
        "ContainerType" => list(any()),
        "CreatedAt" => [non_neg_integer()],
        "DashManifests" => list(get_dash_manifest_configuration()()),
        "Description" => String.t(),
        "ETag" => String.t(),
        "ForceEndpointErrorConfiguration" => force_endpoint_error_configuration(),
        "HlsManifests" => list(get_hls_manifest_configuration()()),
        "LowLatencyHlsManifests" => list(get_low_latency_hls_manifest_configuration()()),
        "ModifiedAt" => [non_neg_integer()],
        "OriginEndpointName" => String.t(),
        "Segment" => segment(),
        "StartoverWindowSeconds" => [integer()],
        "Tags" => map()
      }
      
  """
  @type create_origin_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hls_manifest_configuration() :: %{
        "ChildManifestName" => String.t(),
        "FilterConfiguration" => filter_configuration(),
        "ManifestName" => String.t(),
        "ManifestWindowSeconds" => [integer()],
        "ProgramDateTimeIntervalSeconds" => [integer()],
        "ScteHls" => scte_hls()
      }
      
  """
  @type create_hls_manifest_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dash_manifest_configuration() :: %{
        "DrmSignaling" => list(any()),
        "FilterConfiguration" => filter_configuration(),
        "ManifestName" => String.t(),
        "ManifestWindowSeconds" => [integer()],
        "MinBufferTimeSeconds" => [integer()],
        "MinUpdatePeriodSeconds" => [integer()],
        "PeriodTriggers" => list(list(any())()),
        "ScteDash" => scte_dash(),
        "SegmentTemplateFormat" => list(any()),
        "SuggestedPresentationDelaySeconds" => [integer()],
        "UtcTiming" => dash_utc_timing()
      }
      
  """
  @type create_dash_manifest_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_origin_endpoint_request() :: %{
        optional("DashManifests") => list(create_dash_manifest_configuration()()),
        optional("Description") => String.t(),
        optional("ETag") => String.t(),
        optional("ForceEndpointErrorConfiguration") => force_endpoint_error_configuration(),
        optional("HlsManifests") => list(create_hls_manifest_configuration()()),
        optional("LowLatencyHlsManifests") => list(create_low_latency_hls_manifest_configuration()()),
        optional("Segment") => segment(),
        optional("StartoverWindowSeconds") => [integer()],
        required("ContainerType") => list(any())
      }
      
  """
  @type update_origin_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_channel_policy_request() :: %{}
      
  """
  @type delete_channel_policy_request() :: %{}

  @typedoc """

  ## Example:
      
      put_origin_endpoint_policy_request() :: %{
        required("Policy") => String.t()
      }
      
  """
  @type put_origin_endpoint_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dash_utc_timing() :: %{
        "TimingMode" => list(any()),
        "TimingSource" => [String.t()]
      }
      
  """
  @type dash_utc_timing() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_origin_endpoint_response() :: %{}
      
  """
  @type delete_origin_endpoint_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_origin_endpoint_request() :: %{}
      
  """
  @type delete_origin_endpoint_request() :: %{}

  @typedoc """

  ## Example:
      
      get_low_latency_hls_manifest_configuration() :: %{
        "ChildManifestName" => String.t(),
        "FilterConfiguration" => filter_configuration(),
        "ManifestName" => String.t(),
        "ManifestWindowSeconds" => [integer()],
        "ProgramDateTimeIntervalSeconds" => [integer()],
        "ScteHls" => scte_hls(),
        "Url" => [String.t()]
      }
      
  """
  @type get_low_latency_hls_manifest_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_hls_manifest_configuration() :: %{
        "ChildManifestName" => String.t(),
        "FilterConfiguration" => filter_configuration(),
        "ManifestName" => String.t(),
        "ManifestWindowSeconds" => [integer()],
        "ProgramDateTimeIntervalSeconds" => [integer()],
        "ScteHls" => scte_hls(),
        "Url" => [String.t()]
      }
      
  """
  @type get_hls_manifest_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channel_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t()]
      }
      
  """
  @type list_channel_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      segment() :: %{
        "Encryption" => encryption(),
        "IncludeIframeOnlyStreams" => [boolean()],
        "Scte" => scte(),
        "SegmentDurationSeconds" => [integer()],
        "SegmentName" => [String.t()],
        "TsIncludeDvbSubtitles" => [boolean()],
        "TsUseAudioRenditionGroup" => [boolean()]
      }
      
  """
  @type segment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_origin_endpoints_response() :: %{
        "Items" => list(origin_endpoint_list_configuration()()),
        "NextToken" => [String.t()]
      }
      
  """
  @type list_origin_endpoints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_channel_group_request() :: %{}
      
  """
  @type delete_channel_group_request() :: %{}

  @typedoc """

  ## Example:
      
      force_endpoint_error_configuration() :: %{
        "EndpointErrorConditions" => list(list(any())())
      }
      
  """
  @type force_endpoint_error_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_origin_endpoint_policy_response() :: %{}
      
  """
  @type put_origin_endpoint_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "ConflictExceptionType" => list(any()),
        "Message" => [String.t()]
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => [String.t()],
        "ResourceTypeNotFound" => list(any())
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_channel_group_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("ChannelGroupName") => String.t()
      }
      
  """
  @type create_channel_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_origin_endpoint_policy_response() :: %{}
      
  """
  @type delete_origin_endpoint_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      get_origin_endpoint_policy_request() :: %{}
      
  """
  @type get_origin_endpoint_policy_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_channel_policy_response() :: %{}
      
  """
  @type delete_channel_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      update_channel_group_request() :: %{
        optional("Description") => String.t(),
        optional("ETag") => String.t()
      }
      
  """
  @type update_channel_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      speke_key_provider() :: %{
        "DrmSystems" => list(list(any())()),
        "EncryptionContractConfiguration" => encryption_contract_configuration(),
        "ResourceId" => [String.t()],
        "RoleArn" => [String.t()],
        "Url" => [String.t()]
      }
      
  """
  @type speke_key_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encryption() :: %{
        "ConstantInitializationVector" => [String.t()],
        "EncryptionMethod" => encryption_method(),
        "KeyRotationIntervalSeconds" => [integer()],
        "SpekeKeyProvider" => speke_key_provider()
      }
      
  """
  @type encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ingest_endpoint() :: %{
        "Id" => [String.t()],
        "Url" => [String.t()]
      }
      
  """
  @type ingest_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_channel_group_response() :: %{}
      
  """
  @type delete_channel_group_response() :: %{}

  @typedoc """

  ## Example:
      
      create_channel_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("InputType") => list(any()),
        optional("Tags") => map(),
        required("ChannelName") => String.t()
      }
      
  """
  @type create_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter_configuration() :: %{
        "End" => [non_neg_integer()],
        "ManifestFilter" => [String.t()],
        "Start" => [non_neg_integer()],
        "TimeDelaySeconds" => [integer()]
      }
      
  """
  @type filter_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_channel_policy_response() :: %{
        "ChannelGroupName" => [String.t()],
        "ChannelName" => [String.t()],
        "Policy" => String.t()
      }
      
  """
  @type get_channel_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_dash_manifest_configuration() :: %{
        "DrmSignaling" => list(any()),
        "FilterConfiguration" => filter_configuration(),
        "ManifestName" => String.t(),
        "ManifestWindowSeconds" => [integer()],
        "MinBufferTimeSeconds" => [integer()],
        "MinUpdatePeriodSeconds" => [integer()],
        "PeriodTriggers" => list(list(any())()),
        "ScteDash" => scte_dash(),
        "SegmentTemplateFormat" => list(any()),
        "SuggestedPresentationDelaySeconds" => [integer()],
        "Url" => [String.t()],
        "UtcTiming" => dash_utc_timing()
      }
      
  """
  @type get_dash_manifest_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channels_response() :: %{
        "Items" => list(channel_list_configuration()()),
        "NextToken" => [String.t()]
      }
      
  """
  @type list_channels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_origin_endpoint_policy_request() :: %{}
      
  """
  @type delete_origin_endpoint_policy_request() :: %{}

  @typedoc """

  ## Example:
      
      update_channel_group_response() :: %{
        "Arn" => [String.t()],
        "ChannelGroupName" => [String.t()],
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t(),
        "ETag" => String.t(),
        "EgressDomain" => [String.t()],
        "ModifiedAt" => [non_neg_integer()],
        "Tags" => map()
      }
      
  """
  @type update_channel_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_channel_request() :: %{
        optional("Description") => String.t(),
        optional("ETag") => String.t()
      }
      
  """
  @type update_channel_request() :: %{String.t() => any()}

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
      
      internal_server_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scte_dash() :: %{
        "AdMarkerDash" => list(any())
      }
      
  """
  @type scte_dash() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channel_groups_response() :: %{
        "Items" => list(channel_group_list_configuration()()),
        "NextToken" => [String.t()]
      }
      
  """
  @type list_channel_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encryption_method() :: %{
        "CmafEncryptionMethod" => list(any()),
        "TsEncryptionMethod" => list(any())
      }
      
  """
  @type encryption_method() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scte_hls() :: %{
        "AdMarkerHls" => list(any())
      }
      
  """
  @type scte_hls() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => [String.t()],
        "ValidationExceptionType" => list(any())
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
        "Message" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_low_latency_hls_manifest_configuration() :: %{
        "ChildManifestName" => String.t(),
        "ManifestName" => String.t(),
        "Url" => [String.t()]
      }
      
  """
  @type list_low_latency_hls_manifest_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_channel_group_request() :: %{}
      
  """
  @type get_channel_group_request() :: %{}

  @typedoc """

  ## Example:
      
      scte() :: %{
        "ScteFilter" => list(list(any())())
      }
      
  """
  @type scte() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_channel_response() :: %{
        "Arn" => [String.t()],
        "ChannelGroupName" => [String.t()],
        "ChannelName" => [String.t()],
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t(),
        "ETag" => String.t(),
        "IngestEndpoints" => list(ingest_endpoint()()),
        "InputType" => list(any()),
        "ModifiedAt" => [non_neg_integer()],
        "Tags" => map()
      }
      
  """
  @type get_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_origin_endpoint_request() :: %{}
      
  """
  @type get_origin_endpoint_request() :: %{}

  @typedoc """

  ## Example:
      
      update_channel_response() :: %{
        "Arn" => [String.t()],
        "ChannelGroupName" => [String.t()],
        "ChannelName" => [String.t()],
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t(),
        "ETag" => String.t(),
        "IngestEndpoints" => list(ingest_endpoint()()),
        "InputType" => list(any()),
        "ModifiedAt" => [non_neg_integer()],
        "Tags" => map()
      }
      
  """
  @type update_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      origin_endpoint_list_configuration() :: %{
        "Arn" => [String.t()],
        "ChannelGroupName" => String.t(),
        "ChannelName" => String.t(),
        "ContainerType" => list(any()),
        "CreatedAt" => [non_neg_integer()],
        "DashManifests" => list(list_dash_manifest_configuration()()),
        "Description" => String.t(),
        "ForceEndpointErrorConfiguration" => force_endpoint_error_configuration(),
        "HlsManifests" => list(list_hls_manifest_configuration()()),
        "LowLatencyHlsManifests" => list(list_low_latency_hls_manifest_configuration()()),
        "ModifiedAt" => [non_neg_integer()],
        "OriginEndpointName" => String.t()
      }
      
  """
  @type origin_endpoint_list_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_channel_policy_request() :: %{}
      
  """
  @type get_channel_policy_request() :: %{}

  @typedoc """

  ## Example:
      
      get_channel_group_response() :: %{
        "Arn" => [String.t()],
        "ChannelGroupName" => [String.t()],
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t(),
        "ETag" => String.t(),
        "EgressDomain" => [String.t()],
        "ModifiedAt" => [non_neg_integer()],
        "Tags" => map()
      }
      
  """
  @type get_channel_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_low_latency_hls_manifest_configuration() :: %{
        "ChildManifestName" => String.t(),
        "FilterConfiguration" => filter_configuration(),
        "ManifestName" => String.t(),
        "ManifestWindowSeconds" => [integer()],
        "ProgramDateTimeIntervalSeconds" => [integer()],
        "ScteHls" => scte_hls()
      }
      
  """
  @type create_low_latency_hls_manifest_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_channel_group_response() :: %{
        "Arn" => [String.t()],
        "ChannelGroupName" => [String.t()],
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t(),
        "ETag" => String.t(),
        "EgressDomain" => [String.t()],
        "ModifiedAt" => [non_neg_integer()],
        "Tags" => map()
      }
      
  """
  @type create_channel_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_origin_endpoint_response() :: %{
        "Arn" => [String.t()],
        "ChannelGroupName" => String.t(),
        "ChannelName" => String.t(),
        "ContainerType" => list(any()),
        "CreatedAt" => [non_neg_integer()],
        "DashManifests" => list(get_dash_manifest_configuration()()),
        "Description" => String.t(),
        "ETag" => String.t(),
        "ForceEndpointErrorConfiguration" => force_endpoint_error_configuration(),
        "HlsManifests" => list(get_hls_manifest_configuration()()),
        "LowLatencyHlsManifests" => list(get_low_latency_hls_manifest_configuration()()),
        "ModifiedAt" => [non_neg_integer()],
        "OriginEndpointName" => String.t(),
        "Segment" => segment(),
        "StartoverWindowSeconds" => [integer()],
        "Tags" => map()
      }
      
  """
  @type update_origin_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channels_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t()]
      }
      
  """
  @type list_channels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_origin_endpoints_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t()]
      }
      
  """
  @type list_origin_endpoints_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_origin_endpoint_policy_response() :: %{
        "ChannelGroupName" => String.t(),
        "ChannelName" => String.t(),
        "OriginEndpointName" => String.t(),
        "Policy" => String.t()
      }
      
  """
  @type get_origin_endpoint_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_origin_endpoint_response() :: %{
        "Arn" => [String.t()],
        "ChannelGroupName" => String.t(),
        "ChannelName" => String.t(),
        "ContainerType" => list(any()),
        "CreatedAt" => [non_neg_integer()],
        "DashManifests" => list(get_dash_manifest_configuration()()),
        "Description" => String.t(),
        "ETag" => String.t(),
        "ForceEndpointErrorConfiguration" => force_endpoint_error_configuration(),
        "HlsManifests" => list(get_hls_manifest_configuration()()),
        "LowLatencyHlsManifests" => list(get_low_latency_hls_manifest_configuration()()),
        "ModifiedAt" => [non_neg_integer()],
        "OriginEndpointName" => String.t(),
        "Segment" => segment(),
        "StartoverWindowSeconds" => [integer()],
        "Tags" => map()
      }
      
  """
  @type get_origin_endpoint_response() :: %{String.t() => any()}

  @type create_channel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_channel_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_origin_endpoint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_channel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_channel_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_channel_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_origin_endpoint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type delete_origin_endpoint_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type get_channel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_channel_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_channel_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_origin_endpoint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_origin_endpoint_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_channel_groups_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_channels_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_origin_endpoints_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() :: validation_exception()

  @type put_channel_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_origin_endpoint_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() :: validation_exception()

  @type untag_resource_errors() :: validation_exception()

  @type update_channel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_channel_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_origin_endpoint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2022-12-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mediapackagev2",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "MediaPackageV2",
      signature_version: "v4",
      signing_name: "mediapackagev2",
      target_prefix: nil
    }
  end

  @doc """
  Create a channel to start receiving content streams. The channel represents the
  input to MediaPackage for incoming live content from an encoder such as AWS
  Elemental MediaLive. The channel receives content, and after packaging it,
  outputs it through an origin endpoint to downstream devices (such as video
  players or CDNs) that request the content. You can create only one channel
  with each request. We recommend that you spread out channels between channel
  groups, such as putting redundant channels in the same AWS Region in different
  channel groups.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20CreateChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_group_name` (`t:string` required) The name that describes the
    channel group. The name is the primary identifier for the channel group, and
    must be unique for your account in the AWS Region.
  * `:input` (`t:map | nil`):
    * `"tags" => t:map` A comma-separated list of tag key:value pairs that you
    define. For example:

  ## Keyword parameters:
  * `:client_token` (`t:string`) A unique, case-sensitive token that you provide
    to ensure the idempotency of the request.
  """
  @spec create_channel(AWS.Client.t(), String.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, create_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_channel_errors()}
  def create_channel(%Client{} = client, channel_group_name, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel"

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
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"x-amzn-client-token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Create a channel group to group your channels and origin endpoints. A channel
  group is the top-level resource that consists of channels and origin endpoints
  that are associated with it and that provides predictable URLs for stream
  delivery. All channels and origin endpoints within the channel group are
  guaranteed to share the DNS. You can create only one channel group with each
  request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20CreateChannelGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:map | nil`):
    * `"tags" => t:map` A comma-separated list of tag key:value pairs that you
    define. For example:

  ## Keyword parameters:
  * `:client_token` (`t:string`) A unique, case-sensitive token that you provide
    to ensure the idempotency of the request.
  """
  @spec create_channel_group(AWS.Client.t(), input :: map() | nil, Keyword.t()) ::
          {:ok, create_channel_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_channel_group_errors()}
  def create_channel_group(%Client{} = client, input, options \\ [])
      when is_map(input) or is_nil(input) do
    url_path = "/channelGroup"

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
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"x-amzn-client-token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = input

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  The endpoint is attached to a channel, and represents the output of the live
  content. You can associate multiple endpoints to a single channel. Each
  endpoint gives players and downstream CDNs (such as Amazon CloudFront) access
  to the content for playback. Content can't be served from a channel until it
  has an endpoint. You can create only one endpoint with each request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20CreateOriginEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_group_name` (`t:string` required) The name that describes the
    channel group. The name is the primary identifier for the channel group, and
    must be unique for your account in the AWS Region.
  * `:channel_name` (`t:string` required) The name that describes the channel. The
    name is the primary identifier for the channel, and must be unique for your
    account in the AWS Region and channel group.

  ## Keyword parameters:
  * `:client_token` (`t:string`) A unique, case-sensitive token that you provide
    to ensure the idempotency of the request.
  """
  @spec create_origin_endpoint(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, create_origin_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_origin_endpoint_errors()}
  def create_origin_endpoint(%Client{} = client, channel_group_name, channel_name, options \\ []) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint"

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
    headers =
      if opt_val = Keyword.get(options, :client_token) do
        [{"x-amzn-client-token", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Delete a channel to stop AWS Elemental MediaPackage from receiving further
  content. You must delete the channel's origin endpoints before you can delete
  the channel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20DeleteChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_group_name` (`t:string` required) The name that describes the
    channel group. The name is the primary identifier for the channel group, and
    must be unique for your account in the AWS Region.
  * `:channel_name` (`t:string` required) The name that describes the channel. The
    name is the primary identifier for the channel, and must be unique for your
    account in the AWS Region and channel group.
  """
  @spec delete_channel(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_channel_errors()}
  def delete_channel(%Client{} = client, channel_group_name, channel_name, options \\ []) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
  Delete a channel group. You must delete the channel group's channels and origin
  endpoints before you can delete the channel group. If you delete a channel
  group, you'll lose access to the egress domain and will have to create a new
  channel group to replace it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20DeleteChannelGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_group_name` (`t:string` required) The name that describes the
    channel group. The name is the primary identifier for the channel group, and
    must be unique for your account in the AWS Region.
  """
  @spec delete_channel_group(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_channel_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_channel_group_errors()}
  def delete_channel_group(%Client{} = client, channel_group_name, options \\ []) do
    url_path = "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
  Delete a channel policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20DeleteChannelPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_group_name` (`t:string` required) The name that describes the
    channel group. The name is the primary identifier for the channel group, and
    must be unique for your account in the AWS Region.
  * `:channel_name` (`t:string` required) The name that describes the channel. The
    name is the primary identifier for the channel, and must be unique for your
    account in the AWS Region and channel group.
  """
  @spec delete_channel_policy(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_channel_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_channel_policy_errors()}
  def delete_channel_policy(%Client{} = client, channel_group_name, channel_name, options \\ []) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/policy"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
  Origin endpoints can serve content until they're deleted. Delete the endpoint if
  it should no longer respond to playback requests. You must delete all
  endpoints from a channel before you can delete the channel.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20DeleteOriginEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_group_name` (`t:string` required) The name that describes the
    channel group. The name is the primary identifier for the channel group, and
    must be unique for your account in the AWS Region.
  * `:channel_name` (`t:string` required) The name that describes the channel. The
    name is the primary identifier for the channel, and must be unique for your
    account in the AWS Region and channel group.
  * `:origin_endpoint_name` (`t:string` required) The name that describes the
    origin endpoint. The name is the primary identifier for the origin endpoint,
    and and must be unique for your account in the AWS Region and channel.
  """
  @spec delete_origin_endpoint(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_origin_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_origin_endpoint_errors()}
  def delete_origin_endpoint(
        %Client{} = client,
        channel_group_name,
        channel_name,
        origin_endpoint_name,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint/#{AWS.Util.encode_uri(origin_endpoint_name)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
  Delete an origin endpoint policy.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20DeleteOriginEndpointPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_group_name` (`t:string` required) The name that describes the
    channel group. The name is the primary identifier for the channel group, and
    must be unique for your account in the AWS Region.
  * `:channel_name` (`t:string` required) The name that describes the channel. The
    name is the primary identifier for the channel, and must be unique for your
    account in the AWS Region and channel group.
  * `:origin_endpoint_name` (`t:string` required) The name that describes the
    origin endpoint. The name is the primary identifier for the origin endpoint,
    and and must be unique for your account in the AWS Region and channel.
  """
  @spec delete_origin_endpoint_policy(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, delete_origin_endpoint_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_origin_endpoint_policy_errors()}
  def delete_origin_endpoint_policy(
        %Client{} = client,
        channel_group_name,
        channel_name,
        origin_endpoint_name,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint/#{AWS.Util.encode_uri(origin_endpoint_name)}/policy"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
  Retrieves the specified channel that's configured in AWS Elemental MediaPackage,
  including the origin endpoints that are associated with it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20GetChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_group_name` (`t:string` required) The name that describes the
    channel group. The name is the primary identifier for the channel group, and
    must be unique for your account in the AWS Region.
  * `:channel_name` (`t:string` required) The name that describes the channel. The
    name is the primary identifier for the channel, and must be unique for your
    account in the AWS Region and channel group.
  """
  @spec get_channel(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_channel_errors()}
  def get_channel(%Client{} = client, channel_group_name, channel_name, options \\ []) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
  Retrieves the specified channel group that's configured in AWS Elemental
  MediaPackage, including the channels and origin endpoints that are associated
  with it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20GetChannelGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_group_name` (`t:string` required) The name that describes the
    channel group. The name is the primary identifier for the channel group, and
    must be unique for your account in the AWS Region.
  """
  @spec get_channel_group(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_channel_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_channel_group_errors()}
  def get_channel_group(%Client{} = client, channel_group_name, options \\ []) do
    url_path = "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
  Retrieves the specified channel policy that's configured in AWS Elemental
  MediaPackage. With policies, you can specify who has access to AWS resources
  and what actions they can perform on those resources.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20GetChannelPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_group_name` (`t:string` required) The name that describes the
    channel group. The name is the primary identifier for the channel group, and
    must be unique for your account in the AWS Region.
  * `:channel_name` (`t:string` required) The name that describes the channel. The
    name is the primary identifier for the channel, and must be unique for your
    account in the AWS Region and channel group.
  """
  @spec get_channel_policy(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_channel_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_channel_policy_errors()}
  def get_channel_policy(%Client{} = client, channel_group_name, channel_name, options \\ []) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/policy"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
  Retrieves the specified origin endpoint that's configured in AWS Elemental
  MediaPackage to obtain its playback URL and to view the packaging settings
  that it's currently using.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20GetOriginEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_group_name` (`t:string` required) The name that describes the
    channel group. The name is the primary identifier for the channel group, and
    must be unique for your account in the AWS Region.
  * `:channel_name` (`t:string` required) The name that describes the channel. The
    name is the primary identifier for the channel, and must be unique for your
    account in the AWS Region and channel group.
  * `:origin_endpoint_name` (`t:string` required) The name that describes the
    origin endpoint. The name is the primary identifier for the origin endpoint,
    and and must be unique for your account in the AWS Region and channel.
  """
  @spec get_origin_endpoint(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_origin_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_origin_endpoint_errors()}
  def get_origin_endpoint(
        %Client{} = client,
        channel_group_name,
        channel_name,
        origin_endpoint_name,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint/#{AWS.Util.encode_uri(origin_endpoint_name)}"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
  Retrieves the specified origin endpoint policy that's configured in AWS
  Elemental MediaPackage.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20GetOriginEndpointPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_group_name` (`t:string` required) The name that describes the
    channel group. The name is the primary identifier for the channel group, and
    must be unique for your account in the AWS Region.
  * `:channel_name` (`t:string` required) The name that describes the channel. The
    name is the primary identifier for the channel, and must be unique for your
    account in the AWS Region and channel group.
  * `:origin_endpoint_name` (`t:string` required) The name that describes the
    origin endpoint. The name is the primary identifier for the origin endpoint,
    and and must be unique for your account in the AWS Region and channel.
  """
  @spec get_origin_endpoint_policy(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_origin_endpoint_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_origin_endpoint_policy_errors()}
  def get_origin_endpoint_policy(
        %Client{} = client,
        channel_group_name,
        channel_name,
        origin_endpoint_name,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint/#{AWS.Util.encode_uri(origin_endpoint_name)}/policy"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
  Retrieves all channel groups that are configured in AWS Elemental MediaPackage,
  including the channels and origin endpoints that are associated with it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20ListChannelGroups&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return in the
    response.
  * `:next_token` (`t:string`) The pagination token from the GET list request. Use
    the token to fetch the next page of results.
  """
  @spec list_channel_groups(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_channel_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channel_groups_errors()}
  def list_channel_groups(%Client{} = client, options \\ []) do
    url_path = "/channelGroup"

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
  Retrieves all channels in a specific channel group that are configured in AWS
  Elemental MediaPackage, including the origin endpoints that are associated
  with it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20ListChannels&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_group_name` (`t:string` required) The name that describes the
    channel group. The name is the primary identifier for the channel group, and
    must be unique for your account in the AWS Region.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return in the
    response.
  * `:next_token` (`t:string`) The pagination token from the GET list request. Use
    the token to fetch the next page of results.
  """
  @spec list_channels(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channels_errors()}
  def list_channels(%Client{} = client, channel_group_name, options \\ []) do
    url_path = "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel"

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
  Retrieves all origin endpoints in a specific channel that are configured in AWS
  Elemental MediaPackage.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20ListOriginEndpoints&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_group_name` (`t:string` required) The name that describes the
    channel group. The name is the primary identifier for the channel group, and
    must be unique for your account in the AWS Region.
  * `:channel_name` (`t:string` required) The name that describes the channel. The
    name is the primary identifier for the channel, and must be unique for your
    account in the AWS Region and channel group.

  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return in the
    response.
  * `:next_token` (`t:string`) The pagination token from the GET list request. Use
    the token to fetch the next page of results.
  """
  @spec list_origin_endpoints(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_origin_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_origin_endpoints_errors()}
  def list_origin_endpoints(%Client{} = client, channel_group_name, channel_name, options \\ []) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint"

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
  Lists the tags assigned to a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the CloudWatch resource that
    you want to view tags for.
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
  Attaches an IAM policy to the specified channel. With policies, you can specify
  who has access to AWS resources and what actions they can perform on those
  resources. You can attach only one policy with each request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20PutChannelPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_group_name` (`t:string` required) The name that describes the
    channel group. The name is the primary identifier for the channel group, and
    must be unique for your account in the AWS Region.
  * `:channel_name` (`t:string` required) The name that describes the channel. The
    name is the primary identifier for the channel, and must be unique for your
    account in the AWS Region and channel group.
  """
  @spec put_channel_policy(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, put_channel_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_channel_policy_errors()}
  def put_channel_policy(%Client{} = client, channel_group_name, channel_name, options \\ []) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/policy"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
  Attaches an IAM policy to the specified origin endpoint. You can attach only one
  policy with each request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20PutOriginEndpointPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_group_name` (`t:string` required) The name that describes the
    channel group. The name is the primary identifier for the channel group, and
    must be unique for your account in the AWS Region.
  * `:channel_name` (`t:string` required) The name that describes the channel. The
    name is the primary identifier for the channel, and must be unique for your
    account in the AWS Region and channel group.
  * `:origin_endpoint_name` (`t:string` required) The name that describes the
    origin endpoint. The name is the primary identifier for the origin endpoint,
    and and must be unique for your account in the AWS Region and channel.
  """
  @spec put_origin_endpoint_policy(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, put_origin_endpoint_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_origin_endpoint_policy_errors()}
  def put_origin_endpoint_policy(
        %Client{} = client,
        channel_group_name,
        channel_name,
        origin_endpoint_name,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint/#{AWS.Util.encode_uri(origin_endpoint_name)}/policy"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
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
  Assigns one of more tags (key-value pairs) to the specified MediaPackage
  resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the MediaPackage resource
    that you're adding tags to.
  * `:input` (`t:map`):
    * `"tags" => t:map` (required) Contains a map of the key-value pairs for the
    resource tag or tags assigned to the resource.
  """
  @spec tag_resource(AWS.Client.t(), String.t(), input :: map(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
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
  Removes one or more tags from the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The ARN of the MediaPackage resource
    that you're removing tags from.
  * `:tag_keys` (`t:list[com.amazonaws.mediapackagev2#TagKey]` required) The list
    of tag keys to remove from the resource.
  """
  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
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

  @doc """
  Update the specified channel. You can edit if MediaPackage sends ingest or
  egress access logs to the CloudWatch log group, if content will be encrypted,
  the description on a channel, and your channel's policy settings. You can't
  edit the name of the channel or CloudFront distribution details.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20UpdateChannel&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_group_name` (`t:string` required) The name that describes the
    channel group. The name is the primary identifier for the channel group, and
    must be unique for your account in the AWS Region.
  * `:channel_name` (`t:string` required) The name that describes the channel. The
    name is the primary identifier for the channel, and must be unique for your
    account in the AWS Region and channel group.

  ## Keyword parameters:
  * `:e_tag` (`t:string`) The expected current Entity Tag (ETag) for the resource.
    If the specified ETag does not match the resource's current entity tag, the
    update request will be rejected.
  """
  @spec update_channel(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_channel_errors()}
  def update_channel(%Client{} = client, channel_group_name, channel_name, options \\ []) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/"

    # Validate optional parameters
    optional_params = [e_tag: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :e_tag) do
        [{"x-amzn-update-if-match", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:e_tag])

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Update the specified channel group. You can edit the description on a channel
  group for easier identification later from the AWS Elemental MediaPackage
  console. You can't edit the name of the channel group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20UpdateChannelGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_group_name` (`t:string` required) The name that describes the
    channel group. The name is the primary identifier for the channel group, and
    must be unique for your account in the AWS Region.

  ## Keyword parameters:
  * `:e_tag` (`t:string`) The expected current Entity Tag (ETag) for the resource.
    If the specified ETag does not match the resource's current entity tag, the
    update request will be rejected.
  """
  @spec update_channel_group(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_channel_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_channel_group_errors()}
  def update_channel_group(%Client{} = client, channel_group_name, options \\ []) do
    url_path = "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}"

    # Validate optional parameters
    optional_params = [e_tag: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :e_tag) do
        [{"x-amzn-update-if-match", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:e_tag])

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Update the specified origin endpoint. Edit the packaging preferences on an
  endpoint to optimize the viewing experience. You can't edit the name of the
  endpoint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=mediapackagev2%20UpdateOriginEndpoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:channel_group_name` (`t:string` required) The name that describes the
    channel group. The name is the primary identifier for the channel group, and
    must be unique for your account in the AWS Region.
  * `:channel_name` (`t:string` required) The name that describes the channel. The
    name is the primary identifier for the channel, and must be unique for your
    account in the AWS Region and channel group.
  * `:origin_endpoint_name` (`t:string` required) The name that describes the
    origin endpoint. The name is the primary identifier for the origin endpoint,
    and and must be unique for your account in the AWS Region and channel.

  ## Keyword parameters:
  * `:e_tag` (`t:string`) The expected current Entity Tag (ETag) for the resource.
    If the specified ETag does not match the resource's current entity tag, the
    update request will be rejected.
  """
  @spec update_origin_endpoint(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, update_origin_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_origin_endpoint_errors()}
  def update_origin_endpoint(
        %Client{} = client,
        channel_group_name,
        channel_name,
        origin_endpoint_name,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint/#{AWS.Util.encode_uri(origin_endpoint_name)}"

    # Validate optional parameters
    optional_params = [e_tag: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :e_tag) do
        [{"x-amzn-update-if-match", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:e_tag])

    body = nil

    Request.request_rest(client, meta, :put, url_path, query_params, headers, body, options, 200)
  end
end
