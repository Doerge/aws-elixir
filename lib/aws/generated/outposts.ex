# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Outposts do
  @moduledoc """
  Amazon Web Services Outposts is a fully managed service that extends Amazon Web
  Services infrastructure, APIs, and tools to customer premises. By providing
  local access to Amazon Web Services managed infrastructure, Amazon Web
  Services Outposts enables customers to build and run applications on premises
  using the same programming interfaces as in Amazon Web Services Regions, while
  using local compute and storage resources for lower latency and local data
  processing needs.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      get_connection_request() :: %{}
      
  """
  @type get_connection_request() :: %{}

  @typedoc """

  ## Example:
      
      get_outpost_supported_instance_types_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("OrderId") => String.t()
      }
      
  """
  @type get_outpost_supported_instance_types_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_outpost_instance_types_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type get_outpost_instance_types_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_type_item() :: %{
        "InstanceType" => String.t(),
        "VCPUs" => integer()
      }
      
  """
  @type instance_type_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("Tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_connection_response() :: %{
        "ConnectionId" => String.t(),
        "UnderlayIpAddress" => String.t()
      }
      
  """
  @type start_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_assets_input() :: %{
        optional("HostIdFilter") => list(String.t()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("StatusFilter") => list(list(any())())
      }
      
  """
  @type list_assets_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      asset_location() :: %{
        "RackElevation" => float()
      }
      
  """
  @type asset_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_order_input() :: %{}
      
  """
  @type get_order_input() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_capacity_tasks_output() :: %{
        "CapacityTasks" => list(capacity_task_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_capacity_tasks_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_connection_response() :: %{
        "ConnectionDetails" => connection_details(),
        "ConnectionId" => String.t()
      }
      
  """
  @type get_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_outpost_supported_instance_types_output() :: %{
        "InstanceTypes" => list(instance_type_item()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_outpost_supported_instance_types_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      line_item_asset_information() :: %{
        "AssetId" => String.t(),
        "MacAddressList" => list(String.t()())
      }
      
  """
  @type line_item_asset_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_orders_output() :: %{
        "NextToken" => String.t(),
        "Orders" => list(order_summary()())
      }
      
  """
  @type list_orders_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_connection_request() :: %{
        optional("DeviceSerialNumber") => String.t(),
        required("AssetId") => String.t(),
        required("ClientPublicKey") => String.t(),
        required("NetworkInterfaceDeviceIndex") => integer()
      }
      
  """
  @type start_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_site_output() :: %{
        "Site" => site()
      }
      
  """
  @type get_site_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_site_input() :: %{
        optional("Description") => String.t(),
        optional("Notes") => String.t(),
        optional("OperatingAddress") => address(),
        optional("RackPhysicalProperties") => rack_physical_properties(),
        optional("ShippingAddress") => address(),
        optional("Tags") => map(),
        required("Name") => String.t()
      }
      
  """
  @type create_site_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_outposts_input() :: %{
        optional("AvailabilityZoneFilter") => list(String.t()()),
        optional("AvailabilityZoneIdFilter") => list(String.t()()),
        optional("LifeCycleStatusFilter") => list(String.t()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_outposts_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      catalog_item() :: %{
        "CatalogItemId" => String.t(),
        "EC2Capacities" => list(ec2_capacity()()),
        "ItemStatus" => list(any()),
        "PowerKva" => float(),
        "SupportedStorage" => list(list(any())()),
        "SupportedUplinkGbps" => list(integer()()),
        "WeightLbs" => integer()
      }
      
  """
  @type catalog_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_site_address_input() :: %{
        required("AddressType") => list(any())
      }
      
  """
  @type get_site_address_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_site_output() :: %{
        "Site" => site()
      }
      
  """
  @type create_site_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_site_address_input() :: %{
        required("Address") => address(),
        required("AddressType") => list(any())
      }
      
  """
  @type update_site_address_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_outpost_input() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("SupportedHardwareType") => list(any())
      }
      
  """
  @type update_outpost_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rack_physical_properties() :: %{
        "FiberOpticCableType" => list(any()),
        "MaximumSupportedWeightLbs" => list(any()),
        "OpticalStandard" => list(any()),
        "PowerConnector" => list(any()),
        "PowerDrawKva" => list(any()),
        "PowerFeedDrop" => list(any()),
        "PowerPhase" => list(any()),
        "UplinkCount" => list(any()),
        "UplinkGbps" => list(any())
      }
      
  """
  @type rack_physical_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_site_rack_physical_properties_input() :: %{
        optional("FiberOpticCableType") => list(any()),
        optional("MaximumSupportedWeightLbs") => list(any()),
        optional("OpticalStandard") => list(any()),
        optional("PowerConnector") => list(any()),
        optional("PowerDrawKva") => list(any()),
        optional("PowerFeedDrop") => list(any()),
        optional("PowerPhase") => list(any()),
        optional("UplinkCount") => list(any()),
        optional("UplinkGbps") => list(any())
      }
      
  """
  @type update_site_rack_physical_properties_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_site_address_output() :: %{
        "Address" => address(),
        "AddressType" => list(any())
      }
      
  """
  @type update_site_address_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_orders_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("OutpostIdentifierFilter") => String.t()
      }
      
  """
  @type list_orders_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_capacity_task_input() :: %{}
      
  """
  @type get_capacity_task_input() :: %{}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => list(any())
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_catalog_item_input() :: %{}
      
  """
  @type get_catalog_item_input() :: %{}

  @typedoc """

  ## Example:
      
      create_order_output() :: %{
        "Order" => order()
      }
      
  """
  @type create_order_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_outpost_input() :: %{}
      
  """
  @type get_outpost_input() :: %{}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_site_output() :: %{
        "Site" => site()
      }
      
  """
  @type update_site_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      site() :: %{
        "AccountId" => String.t(),
        "Description" => String.t(),
        "Name" => String.t(),
        "Notes" => String.t(),
        "OperatingAddressCity" => String.t(),
        "OperatingAddressCountryCode" => String.t(),
        "OperatingAddressStateOrRegion" => String.t(),
        "RackPhysicalProperties" => rack_physical_properties(),
        "SiteArn" => String.t(),
        "SiteId" => String.t(),
        "Tags" => map()
      }
      
  """
  @type site() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_sites_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("OperatingAddressCityFilter") => list(String.t()()),
        optional("OperatingAddressCountryCodeFilter") => list(String.t()()),
        optional("OperatingAddressStateOrRegionFilter") => list(String.t()())
      }
      
  """
  @type list_sites_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_type_capacity() :: %{
        "Count" => integer(),
        "InstanceType" => String.t()
      }
      
  """
  @type instance_type_capacity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_outpost_output() :: %{
        "Outpost" => outpost()
      }
      
  """
  @type get_outpost_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_order_output() :: %{
        "Order" => order()
      }
      
  """
  @type get_order_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_order_input() :: %{
        optional("PaymentTerm") => list(any()),
        required("LineItems") => list(line_item_request()()),
        required("OutpostIdentifier") => String.t(),
        required("PaymentOption") => list(any())
      }
      
  """
  @type create_order_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_catalog_item_output() :: %{
        "CatalogItem" => catalog_item()
      }
      
  """
  @type get_catalog_item_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_capacity_task_output() :: %{}
      
  """
  @type cancel_capacity_task_output() :: %{}

  @typedoc """

  ## Example:
      
      ec2_capacity() :: %{
        "Family" => String.t(),
        "MaxSize" => String.t(),
        "Quantity" => String.t()
      }
      
  """
  @type ec2_capacity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_capacity_task_output() :: %{
        "CapacityTaskId" => String.t(),
        "CapacityTaskStatus" => list(any()),
        "CompletionDate" => non_neg_integer(),
        "CreationDate" => non_neg_integer(),
        "DryRun" => boolean(),
        "Failed" => capacity_task_failure(),
        "LastModifiedDate" => non_neg_integer(),
        "OrderId" => String.t(),
        "OutpostId" => String.t(),
        "RequestedInstancePools" => list(instance_type_capacity()())
      }
      
  """
  @type start_capacity_task_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_sites_output() :: %{
        "NextToken" => String.t(),
        "Sites" => list(site()())
      }
      
  """
  @type list_sites_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_capacity_task_input() :: %{
        optional("DryRun") => boolean(),
        required("InstancePools") => list(instance_type_capacity()()),
        required("OrderId") => String.t()
      }
      
  """
  @type start_capacity_task_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      order() :: %{
        "LineItems" => list(line_item()()),
        "OrderFulfilledDate" => non_neg_integer(),
        "OrderId" => String.t(),
        "OrderSubmissionDate" => non_neg_integer(),
        "OrderType" => list(any()),
        "OutpostId" => String.t(),
        "PaymentOption" => list(any()),
        "PaymentTerm" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type order() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_order_input() :: %{}
      
  """
  @type cancel_order_input() :: %{}

  @typedoc """

  ## Example:
      
      capacity_task_failure() :: %{
        "Reason" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type capacity_task_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compute_attributes() :: %{
        "HostId" => String.t(),
        "InstanceFamilies" => list(String.t()()),
        "State" => list(any())
      }
      
  """
  @type compute_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_assets_output() :: %{
        "Assets" => list(asset_info()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_assets_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_site_output() :: %{}
      
  """
  @type delete_site_output() :: %{}

  @typedoc """

  ## Example:
      
      delete_outpost_output() :: %{}
      
  """
  @type delete_outpost_output() :: %{}

  @typedoc """

  ## Example:
      
      cancel_order_output() :: %{}
      
  """
  @type cancel_order_output() :: %{}

  @typedoc """

  ## Example:
      
      get_outpost_instance_types_output() :: %{
        "InstanceTypes" => list(instance_type_item()()),
        "NextToken" => String.t(),
        "OutpostArn" => String.t(),
        "OutpostId" => String.t()
      }
      
  """
  @type get_outpost_instance_types_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_site_input() :: %{}
      
  """
  @type delete_site_input() :: %{}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_site_input() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("Notes") => String.t()
      }
      
  """
  @type update_site_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_site_input() :: %{}
      
  """
  @type get_site_input() :: %{}

  @typedoc """

  ## Example:
      
      list_outposts_output() :: %{
        "NextToken" => String.t(),
        "Outposts" => list(outpost()())
      }
      
  """
  @type list_outposts_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_outpost_input() :: %{}
      
  """
  @type delete_outpost_input() :: %{}

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
      
      order_summary() :: %{
        "LineItemCountsByStatus" => map(),
        "OrderFulfilledDate" => non_neg_integer(),
        "OrderId" => String.t(),
        "OrderSubmissionDate" => non_neg_integer(),
        "OrderType" => list(any()),
        "OutpostId" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type order_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_capacity_tasks_input() :: %{
        optional("CapacityTaskStatusFilter") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("OutpostIdentifierFilter") => String.t()
      }
      
  """
  @type list_capacity_tasks_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_outpost_output() :: %{
        "Outpost" => outpost()
      }
      
  """
  @type create_outpost_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_site_address_output() :: %{
        "Address" => address(),
        "AddressType" => list(any()),
        "SiteId" => String.t()
      }
      
  """
  @type get_site_address_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      asset_info() :: %{
        "AssetId" => String.t(),
        "AssetLocation" => asset_location(),
        "AssetType" => list(any()),
        "ComputeAttributes" => compute_attributes(),
        "RackId" => String.t()
      }
      
  """
  @type asset_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_catalog_items_input() :: %{
        optional("EC2FamilyFilter") => list(String.t()()),
        optional("ItemClassFilter") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SupportedStorageFilter") => list(list(any())())
      }
      
  """
  @type list_catalog_items_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_outpost_output() :: %{
        "Outpost" => outpost()
      }
      
  """
  @type update_outpost_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      line_item_request() :: %{
        "CatalogItemId" => String.t(),
        "Quantity" => integer()
      }
      
  """
  @type line_item_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connection_details() :: %{
        "AllowedIps" => list(String.t()()),
        "ClientPublicKey" => String.t(),
        "ClientTunnelAddress" => String.t(),
        "ServerEndpoint" => String.t(),
        "ServerPublicKey" => String.t(),
        "ServerTunnelAddress" => String.t()
      }
      
  """
  @type connection_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      outpost() :: %{
        "AvailabilityZone" => String.t(),
        "AvailabilityZoneId" => String.t(),
        "Description" => String.t(),
        "LifeCycleStatus" => String.t(),
        "Name" => String.t(),
        "OutpostArn" => String.t(),
        "OutpostId" => String.t(),
        "OwnerId" => String.t(),
        "SiteArn" => String.t(),
        "SiteId" => String.t(),
        "SupportedHardwareType" => list(any()),
        "Tags" => map()
      }
      
  """
  @type outpost() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      address() :: %{
        "AddressLine1" => String.t(),
        "AddressLine2" => String.t(),
        "AddressLine3" => String.t(),
        "City" => String.t(),
        "ContactName" => String.t(),
        "ContactPhoneNumber" => String.t(),
        "CountryCode" => String.t(),
        "DistrictOrCounty" => String.t(),
        "Municipality" => String.t(),
        "PostalCode" => String.t(),
        "StateOrRegion" => String.t()
      }
      
  """
  @type address() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      capacity_task_summary() :: %{
        "CapacityTaskId" => String.t(),
        "CapacityTaskStatus" => list(any()),
        "CompletionDate" => non_neg_integer(),
        "CreationDate" => non_neg_integer(),
        "LastModifiedDate" => non_neg_integer(),
        "OrderId" => String.t(),
        "OutpostId" => String.t()
      }
      
  """
  @type capacity_task_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_catalog_items_output() :: %{
        "CatalogItems" => list(catalog_item()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_catalog_items_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_site_rack_physical_properties_output() :: %{
        "Site" => site()
      }
      
  """
  @type update_site_rack_physical_properties_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      line_item() :: %{
        "AssetInformationList" => list(line_item_asset_information()()),
        "CatalogItemId" => String.t(),
        "LineItemId" => String.t(),
        "PreviousLineItemId" => String.t(),
        "PreviousOrderId" => String.t(),
        "Quantity" => integer(),
        "ShipmentInformation" => shipment_information(),
        "Status" => list(any())
      }
      
  """
  @type line_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_capacity_task_input() :: %{}
      
  """
  @type cancel_capacity_task_input() :: %{}

  @typedoc """

  ## Example:
      
      shipment_information() :: %{
        "ShipmentCarrier" => list(any()),
        "ShipmentTrackingNumber" => String.t()
      }
      
  """
  @type shipment_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_capacity_task_output() :: %{
        "CapacityTaskId" => String.t(),
        "CapacityTaskStatus" => list(any()),
        "CompletionDate" => non_neg_integer(),
        "CreationDate" => non_neg_integer(),
        "DryRun" => boolean(),
        "Failed" => capacity_task_failure(),
        "LastModifiedDate" => non_neg_integer(),
        "OrderId" => String.t(),
        "OutpostId" => String.t(),
        "RequestedInstancePools" => list(instance_type_capacity()())
      }
      
  """
  @type get_capacity_task_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_outpost_input() :: %{
        optional("AvailabilityZone") => String.t(),
        optional("AvailabilityZoneId") => String.t(),
        optional("Description") => String.t(),
        optional("SupportedHardwareType") => list(any()),
        optional("Tags") => map(),
        required("Name") => String.t(),
        required("SiteId") => String.t()
      }
      
  """
  @type create_outpost_input() :: %{String.t() => any()}

  @type cancel_capacity_task_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | conflict_exception()

  @type cancel_order_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | conflict_exception()

  @type create_order_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_outpost_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_site_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_outpost_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | conflict_exception()

  @type delete_site_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | conflict_exception()

  @type get_capacity_task_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type get_catalog_item_errors() ::
          validation_exception() | internal_server_exception() | not_found_exception()

  @type get_connection_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type get_order_errors() ::
          validation_exception() | internal_server_exception() | not_found_exception()

  @type get_outpost_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type get_outpost_instance_types_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type get_outpost_supported_instance_types_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type get_site_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type get_site_address_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type list_assets_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type list_capacity_tasks_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type list_catalog_items_errors() ::
          validation_exception() | internal_server_exception() | not_found_exception()

  @type list_orders_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type list_outposts_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_sites_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | not_found_exception()

  @type start_capacity_task_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | conflict_exception()

  @type start_connection_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | not_found_exception()

  @type update_outpost_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | conflict_exception()

  @type update_site_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | conflict_exception()

  @type update_site_address_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | conflict_exception()

  @type update_site_rack_physical_properties_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2019-12-03",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "outposts",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Outposts",
      signature_version: "v4",
      signing_name: "outposts",
      target_prefix: nil
    }
  end

  @doc """
  Cancels the capacity task.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20CancelCapacityTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:capacity_task_id` (`t:string` required) ID of the capacity task that you
    want to cancel.
  * `:outpost_identifier` (`t:string` required) ID or ARN of the Outpost
    associated with the capacity task that you want to cancel.
  """
  @spec cancel_capacity_task(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, cancel_capacity_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_capacity_task_errors()}
  def cancel_capacity_task(
        %Client{} = client,
        capacity_task_id,
        outpost_identifier,
        options \\ []
      ) do
    url_path =
      "/outposts/#{AWS.Util.encode_uri(outpost_identifier)}/capacity/#{AWS.Util.encode_uri(capacity_task_id)}"

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
  Cancels the specified order for an Outpost.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20CancelOrder&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:order_id` (`t:string` required) The ID of the order.
  """
  @spec cancel_order(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, cancel_order_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_order_errors()}
  def cancel_order(%Client{} = client, order_id, options \\ []) do
    url_path = "/orders/#{AWS.Util.encode_uri(order_id)}/cancel"

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
  Creates an order for an Outpost.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20CreateOrder&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_order(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_order_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_order_errors()}
  def create_order(%Client{} = client, options \\ []) do
    url_path = "/orders"

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
  Creates an Outpost.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20CreateOutpost&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_outpost(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_outpost_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_outpost_errors()}
  def create_outpost(%Client{} = client, options \\ []) do
    url_path = "/outposts"

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
  Creates a site for an Outpost.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20CreateSite&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_site(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_site_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_site_errors()}
  def create_site(%Client{} = client, options \\ []) do
    url_path = "/sites"

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
  Deletes the specified Outpost.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20DeleteOutpost&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:outpost_id` (`t:string` required) The ID or ARN of the Outpost.
  """
  @spec delete_outpost(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_outpost_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_outpost_errors()}
  def delete_outpost(%Client{} = client, outpost_id, options \\ []) do
    url_path = "/outposts/#{AWS.Util.encode_uri(outpost_id)}"

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
  Deletes the specified site.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20DeleteSite&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:site_id` (`t:string` required) The ID or the Amazon Resource Name (ARN) of
    the site.
  """
  @spec delete_site(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_site_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_site_errors()}
  def delete_site(%Client{} = client, site_id, options \\ []) do
    url_path = "/sites/#{AWS.Util.encode_uri(site_id)}"

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
  Gets details of the specified capacity task.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20GetCapacityTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:capacity_task_id` (`t:string` required) ID of the capacity task.
  * `:outpost_identifier` (`t:string` required) ID or ARN of the Outpost
    associated with the specified capacity task.
  """
  @spec get_capacity_task(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_capacity_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_capacity_task_errors()}
  def get_capacity_task(%Client{} = client, capacity_task_id, outpost_identifier, options \\ []) do
    url_path =
      "/outposts/#{AWS.Util.encode_uri(outpost_identifier)}/capacity/#{AWS.Util.encode_uri(capacity_task_id)}"

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
  Gets information about the specified catalog item.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20GetCatalogItem&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:catalog_item_id` (`t:string` required) The ID of the catalog item.
  """
  @spec get_catalog_item(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_catalog_item_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_catalog_item_errors()}
  def get_catalog_item(%Client{} = client, catalog_item_id, options \\ []) do
    url_path = "/catalog/item/#{AWS.Util.encode_uri(catalog_item_id)}"

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
  Amazon Web Services uses this action to install Outpost servers. Gets
  information about the specified connection.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20GetConnection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:connection_id` (`t:string` required) The ID of the connection.
  """
  @spec get_connection(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_connection_errors()}
  def get_connection(%Client{} = client, connection_id, options \\ []) do
    url_path = "/connections/#{AWS.Util.encode_uri(connection_id)}"

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
  Gets information about the specified order.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20GetOrder&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:order_id` (`t:string` required) The ID of the order.
  """
  @spec get_order(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_order_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_order_errors()}
  def get_order(%Client{} = client, order_id, options \\ []) do
    url_path = "/orders/#{AWS.Util.encode_uri(order_id)}"

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
  Gets information about the specified Outpost.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20GetOutpost&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:outpost_id` (`t:string` required) The ID or ARN of the Outpost.
  """
  @spec get_outpost(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_outpost_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_outpost_errors()}
  def get_outpost(%Client{} = client, outpost_id, options \\ []) do
    url_path = "/outposts/#{AWS.Util.encode_uri(outpost_id)}"

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
  Gets the instance types for the specified Outpost.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20GetOutpostInstanceTypes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:outpost_id` (`t:string` required) The ID or ARN of the Outpost.

  ## Keyword parameters:
  * `:max_results` (`t:integer`)
  * `:next_token` (`t:string`)
  """
  @spec get_outpost_instance_types(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_outpost_instance_types_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_outpost_instance_types_errors()}
  def get_outpost_instance_types(%Client{} = client, outpost_id, options \\ []) do
    url_path = "/outposts/#{AWS.Util.encode_uri(outpost_id)}/instanceTypes"

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
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
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
  Gets the instance types that an Outpost can support in `InstanceTypeCapacity`.
  This will generally include instance types that are not currently configured
  and therefore cannot be launched with the current Outpost capacity
  configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20GetOutpostSupportedInstanceTypes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:outpost_identifier` (`t:string` required) The ID or ARN of the Outpost.
  * `:order_id` (`t:string` required) The ID for the Amazon Web Services Outposts
    order.

  ## Keyword parameters:
  * `:max_results` (`t:integer`)
  * `:next_token` (`t:string`)
  """
  @spec get_outpost_supported_instance_types(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_outpost_supported_instance_types_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_outpost_supported_instance_types_errors()}
  def get_outpost_supported_instance_types(
        %Client{} = client,
        outpost_identifier,
        order_id,
        options \\ []
      )
      when is_binary(order_id) do
    url_path = "/outposts/#{AWS.Util.encode_uri(outpost_identifier)}/supportedInstanceTypes"

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
    query_params = [{"OrderId", order_id}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
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
  Gets information about the specified Outpost site.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20GetSite&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:site_id` (`t:string` required) The ID or the Amazon Resource Name (ARN) of
    the site.
  """
  @spec get_site(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_site_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_site_errors()}
  def get_site(%Client{} = client, site_id, options \\ []) do
    url_path = "/sites/#{AWS.Util.encode_uri(site_id)}"

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
  Gets the site address of the specified site.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20GetSiteAddress&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:site_id` (`t:string` required) The ID or the Amazon Resource Name (ARN) of
    the site.
  * `:address_type` (`t:enum["OPERATING_ADDRESS|SHIPPING_ADDRESS"]` required) The
    type of the address you request.
  """
  @spec get_site_address(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_site_address_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_site_address_errors()}
  def get_site_address(%Client{} = client, site_id, address_type, options \\ [])
      when is_binary(address_type) do
    url_path = "/sites/#{AWS.Util.encode_uri(site_id)}/address"

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
    query_params = [{"AddressType", address_type}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the hardware assets for the specified Outpost.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20ListAssets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:outpost_identifier` (`t:string` required) The ID or the Amazon Resource Name
    (ARN) of the Outpost.

  ## Keyword parameters:
  * `:host_id_filter` (`t:list[com.amazonaws.outposts#HostId]`) Filters the
    results by the host ID of a Dedicated Host.
  * `:max_results` (`t:integer`)
  * `:next_token` (`t:string`)
  * `:status_filter` (`t:list[com.amazonaws.outposts#AssetState]`) Filters the
    results by state.
  """
  @spec list_assets(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_assets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_assets_errors()}
  def list_assets(%Client{} = client, outpost_identifier, options \\ []) do
    url_path = "/outposts/#{AWS.Util.encode_uri(outpost_identifier)}/assets"

    # Validate optional parameters
    optional_params = [host_id_filter: nil, max_results: nil, next_token: nil, status_filter: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :status_filter) do
        [{"StatusFilter", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :host_id_filter) do
        [{"HostIdFilter", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:host_id_filter, :max_results, :next_token, :status_filter])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the capacity tasks for your Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20ListCapacityTasks&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:capacity_task_status_filter`
    (`t:list[com.amazonaws.outposts#CapacityTaskStatus]`) A list of statuses.
    For example, REQUESTED or WAITING_FOR_EVACUATION.
  * `:max_results` (`t:integer`)
  * `:next_token` (`t:string`)
  * `:outpost_identifier_filter` (`t:string`) Filters the results by an Outpost ID
    or an Outpost ARN.
  """
  @spec list_capacity_tasks(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_capacity_tasks_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_capacity_tasks_errors()}
  def list_capacity_tasks(%Client{} = client, options \\ []) do
    url_path = "/capacity/tasks"

    # Validate optional parameters
    optional_params = [
      capacity_task_status_filter: nil,
      max_results: nil,
      next_token: nil,
      outpost_identifier_filter: nil
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
      if opt_val = Keyword.get(options, :outpost_identifier_filter) do
        [{"OutpostIdentifierFilter", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :capacity_task_status_filter) do
        [{"CapacityTaskStatusFilter", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :capacity_task_status_filter,
        :max_results,
        :next_token,
        :outpost_identifier_filter
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the items in the catalog.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20ListCatalogItems&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:ec2_family_filter` (`t:list[com.amazonaws.outposts#Family]`) Filters the
    results by EC2 family (for example, M5).
  * `:item_class_filter` (`t:list[com.amazonaws.outposts#CatalogItemClass]`)
    Filters the results by item class.
  * `:max_results` (`t:integer`)
  * `:next_token` (`t:string`)
  * `:supported_storage_filter`
    (`t:list[com.amazonaws.outposts#SupportedStorageEnum]`) Filters the results
    by storage option.
  """
  @spec list_catalog_items(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_catalog_items_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_catalog_items_errors()}
  def list_catalog_items(%Client{} = client, options \\ []) do
    url_path = "/catalog/items"

    # Validate optional parameters
    optional_params = [
      ec2_family_filter: nil,
      item_class_filter: nil,
      max_results: nil,
      next_token: nil,
      supported_storage_filter: nil
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
      if opt_val = Keyword.get(options, :supported_storage_filter) do
        [{"SupportedStorageFilter", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :item_class_filter) do
        [{"ItemClassFilter", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :ec2_family_filter) do
        [{"EC2FamilyFilter", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :ec2_family_filter,
        :item_class_filter,
        :max_results,
        :next_token,
        :supported_storage_filter
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Outpost orders for your Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20ListOrders&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`)
  * `:next_token` (`t:string`)
  * `:outpost_identifier_filter` (`t:string`) The ID or the Amazon Resource Name
    (ARN) of the Outpost.
  """
  @spec list_orders(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_orders_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_orders_errors()}
  def list_orders(%Client{} = client, options \\ []) do
    url_path = "/list-orders"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, outpost_identifier_filter: nil]

    options =
      Keyword.validate!(
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
      if opt_val = Keyword.get(options, :outpost_identifier_filter) do
        [{"OutpostIdentifierFilter", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :outpost_identifier_filter])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Outposts for your Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20ListOutposts&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:availability_zone_filter`
    (`t:list[com.amazonaws.outposts#AvailabilityZone]`) Filters the results by
    Availability Zone (for example, us-east-1a).
  * `:availability_zone_id_filter`
    (`t:list[com.amazonaws.outposts#AvailabilityZoneId]`) Filters the results by
    AZ ID (for example, use1-az1).
  * `:life_cycle_status_filter` (`t:list[com.amazonaws.outposts#LifeCycleStatus]`)
    Filters the results by the lifecycle status.
  * `:max_results` (`t:integer`)
  * `:next_token` (`t:string`)
  """
  @spec list_outposts(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_outposts_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_outposts_errors()}
  def list_outposts(%Client{} = client, options \\ []) do
    url_path = "/outposts"

    # Validate optional parameters
    optional_params = [
      availability_zone_filter: nil,
      availability_zone_id_filter: nil,
      life_cycle_status_filter: nil,
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
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :life_cycle_status_filter) do
        [{"LifeCycleStatusFilter", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :availability_zone_id_filter) do
        [{"AvailabilityZoneIdFilter", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :availability_zone_filter) do
        [{"AvailabilityZoneFilter", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :availability_zone_filter,
        :availability_zone_id_filter,
        :life_cycle_status_filter,
        :max_results,
        :next_token
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Outpost sites for your Amazon Web Services account. Use filters to
  return specific results.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20ListSites&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Keyword parameters:
  * `:max_results` (`t:integer`)
  * `:next_token` (`t:string`)
  * `:operating_address_city_filter` (`t:list[com.amazonaws.outposts#City]`)
    Filters the results by city.
  * `:operating_address_country_code_filter`
    (`t:list[com.amazonaws.outposts#CountryCode]`) Filters the results by
    country code.
  * `:operating_address_state_or_region_filter`
    (`t:list[com.amazonaws.outposts#StateOrRegion]`) Filters the results by
    state or region.
  """
  @spec list_sites(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_sites_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_sites_errors()}
  def list_sites(%Client{} = client, options \\ []) do
    url_path = "/sites"

    # Validate optional parameters
    optional_params = [
      max_results: nil,
      next_token: nil,
      operating_address_city_filter: nil,
      operating_address_country_code_filter: nil,
      operating_address_state_or_region_filter: nil
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
      if opt_val = Keyword.get(options, :operating_address_state_or_region_filter) do
        [{"OperatingAddressStateOrRegionFilter", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :operating_address_country_code_filter) do
        [{"OperatingAddressCountryCodeFilter", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :operating_address_city_filter) do
        [{"OperatingAddressCityFilter", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"NextToken", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"MaxResults", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :max_results,
        :next_token,
        :operating_address_city_filter,
        :operating_address_country_code_filter,
        :operating_address_state_or_region_filter
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags for the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    resource.
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
  Starts the specified capacity task. You can have one active capacity task for an
  order.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20StartCapacityTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:outpost_identifier` (`t:string` required) The ID or ARN of the Outposts
    associated with the specified capacity task.
  """
  @spec start_capacity_task(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, start_capacity_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_capacity_task_errors()}
  def start_capacity_task(%Client{} = client, outpost_identifier, options \\ []) do
    url_path = "/outposts/#{AWS.Util.encode_uri(outpost_identifier)}/capacity"

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
  Amazon Web Services uses this action to install Outpost servers. Starts the
  connection required for Outpost server installation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20StartConnection&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec start_connection(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_connection_errors()}
  def start_connection(%Client{} = client, options \\ []) do
    url_path = "/connections"

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
  Adds tags to the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    resource.
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
  Removes tags from the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    resource.
  * `:tag_keys` (`t:list[com.amazonaws.outposts#TagKey]` required) The tag keys.
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
  Updates an Outpost.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20UpdateOutpost&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:outpost_id` (`t:string` required) The ID or ARN of the Outpost.
  """
  @spec update_outpost(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_outpost_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_outpost_errors()}
  def update_outpost(%Client{} = client, outpost_id, options \\ []) do
    url_path = "/outposts/#{AWS.Util.encode_uri(outpost_id)}"

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
  Updates the specified site.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20UpdateSite&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:site_id` (`t:string` required) The ID or the Amazon Resource Name (ARN) of
    the site.
  """
  @spec update_site(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_site_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_site_errors()}
  def update_site(%Client{} = client, site_id, options \\ []) do
    url_path = "/sites/#{AWS.Util.encode_uri(site_id)}"

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
  Updates the address of the specified site. You can't update a site address if
  there is an order in progress. You must wait for the order to complete or
  cancel the order.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20UpdateSiteAddress&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:site_id` (`t:string` required) The ID or the Amazon Resource Name (ARN) of
    the site.
  """
  @spec update_site_address(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_site_address_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_site_address_errors()}
  def update_site_address(%Client{} = client, site_id, options \\ []) do
    url_path = "/sites/#{AWS.Util.encode_uri(site_id)}/address"

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
  Update the physical and logistical details for a rack at a site. For more
  information about hardware requirements for racks, see [Network readiness
  checklist](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#checklist)
  in the Amazon Web Services Outposts User Guide.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=outposts%20UpdateSiteRackPhysicalProperties&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:site_id` (`t:string` required) The ID or the Amazon Resource Name (ARN) of
    the site.
  """
  @spec update_site_rack_physical_properties(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_site_rack_physical_properties_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_site_rack_physical_properties_errors()}
  def update_site_rack_physical_properties(%Client{} = client, site_id, options \\ []) do
    url_path = "/sites/#{AWS.Util.encode_uri(site_id)}/rackPhysicalProperties"

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
      :patch,
      url_path,
      query_params,
      headers,
      body,
      options,
      200
    )
  end
end
