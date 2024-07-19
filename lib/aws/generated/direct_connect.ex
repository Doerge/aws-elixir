# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DirectConnect do
  @moduledoc """
  Direct Connect links your internal network to an Direct Connect location over a
  standard Ethernet fiber-optic cable. One end of the cable is connected to your
  router, the other to an Direct Connect router. With this connection in place,
  you can create virtual interfaces directly to the Amazon Web Services Cloud
  (for example, to Amazon EC2 and Amazon S3) and to Amazon VPC, bypassing
  Internet service providers in your network path. A connection provides access
  to all Amazon Web Services Regions except the China (Beijing) and (China)
  Ningxia Regions. Amazon Web Services resources in the China Regions can only
  be accessed through locations associated with those Regions.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      confirm_transit_virtual_interface_request() :: %{
        required("directConnectGatewayId") => String.t(),
        required("virtualInterfaceId") => String.t()
      }
      
  """
  @type confirm_transit_virtual_interface_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_connection_request() :: %{
        optional("connectionName") => String.t(),
        optional("encryptionMode") => String.t(),
        required("connectionId") => String.t()
      }
      
  """
  @type update_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_direct_connect_gateway_associations_result() :: %{
        "directConnectGatewayAssociations" => list(direct_connect_gateway_association()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_direct_connect_gateway_associations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      direct_connect_gateway_association_proposal() :: %{
        "associatedGateway" => associated_gateway(),
        "directConnectGatewayId" => String.t(),
        "directConnectGatewayOwnerAccount" => String.t(),
        "existingAllowedPrefixesToDirectConnectGateway" => list(route_filter_prefix()()),
        "proposalId" => String.t(),
        "proposalState" => list(any()),
        "requestedAllowedPrefixesToDirectConnectGateway" => list(route_filter_prefix()())
      }
      
  """
  @type direct_connect_gateway_association_proposal() :: %{String.t() => any()}

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
      
      update_virtual_interface_attributes_request() :: %{
        optional("enableSiteLink") => boolean(),
        optional("mtu") => integer(),
        optional("virtualInterfaceName") => String.t(),
        required("virtualInterfaceId") => String.t()
      }
      
  """
  @type update_virtual_interface_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_bgp_failover_test_request() :: %{
        optional("bgpPeers") => list(String.t()()),
        optional("testDurationInMinutes") => integer(),
        required("virtualInterfaceId") => String.t()
      }
      
  """
  @type start_bgp_failover_test_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_direct_connect_gateways_result() :: %{
        "directConnectGateways" => list(direct_connect_gateway()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_direct_connect_gateways_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_direct_connect_gateways_request() :: %{
        optional("directConnectGatewayId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_direct_connect_gateways_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_direct_connect_gateway_association_proposals_request() :: %{
        optional("associatedGatewayId") => String.t(),
        optional("directConnectGatewayId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("proposalId") => String.t()
      }
      
  """
  @type describe_direct_connect_gateway_association_proposals_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_lags_request() :: %{
        optional("lagId") => String.t()
      }
      
  """
  @type describe_lags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_bgp_failover_test_request() :: %{
        required("virtualInterfaceId") => String.t()
      }
      
  """
  @type stop_bgp_failover_test_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      new_private_virtual_interface() :: %{
        "addressFamily" => list(any()),
        "amazonAddress" => String.t(),
        "asn" => integer(),
        "authKey" => String.t(),
        "customerAddress" => String.t(),
        "directConnectGatewayId" => String.t(),
        "enableSiteLink" => boolean(),
        "mtu" => integer(),
        "tags" => list(tag()()),
        "virtualGatewayId" => String.t(),
        "virtualInterfaceName" => String.t(),
        "vlan" => integer()
      }
      
  """
  @type new_private_virtual_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      confirm_connection_response() :: %{
        "connectionState" => list(any())
      }
      
  """
  @type confirm_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      virtual_gateways() :: %{
        optional("virtualGateways") => list(virtual_gateway()())
      }
      
  """
  @type virtual_gateways() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_direct_connect_gateway_association_proposal_request() :: %{
        required("proposalId") => String.t()
      }
      
  """
  @type delete_direct_connect_gateway_association_proposal_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      new_private_virtual_interface_allocation() :: %{
        "addressFamily" => list(any()),
        "amazonAddress" => String.t(),
        "asn" => integer(),
        "authKey" => String.t(),
        "customerAddress" => String.t(),
        "mtu" => integer(),
        "tags" => list(tag()()),
        "virtualInterfaceName" => String.t(),
        "vlan" => integer()
      }
      
  """
  @type new_private_virtual_interface_allocation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_direct_connect_gateway_result() :: %{
        "directConnectGateway" => direct_connect_gateway()
      }
      
  """
  @type create_direct_connect_gateway_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_interconnect_request() :: %{
        optional("lagId") => String.t(),
        optional("providerName") => String.t(),
        optional("tags") => list(tag()()),
        required("bandwidth") => String.t(),
        required("interconnectName") => String.t(),
        required("location") => String.t()
      }
      
  """
  @type create_interconnect_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      loa() :: %{
        "loaContent" => binary(),
        "loaContentType" => list(any())
      }
      
  """
  @type loa() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      direct_connect_client_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type direct_connect_client_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      confirm_connection_request() :: %{
        required("connectionId") => String.t()
      }
      
  """
  @type confirm_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_customer_metadata_response() :: %{
        "agreements" => list(customer_agreement()()),
        "nniPartnerType" => list(any())
      }
      
  """
  @type describe_customer_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_direct_connect_gateway_associations_request() :: %{
        optional("associatedGatewayId") => String.t(),
        optional("associationId") => String.t(),
        optional("directConnectGatewayId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("virtualGatewayId") => String.t()
      }
      
  """
  @type describe_direct_connect_gateway_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_direct_connect_gateway_association_result() :: %{
        "directConnectGatewayAssociation" => direct_connect_gateway_association()
      }
      
  """
  @type update_direct_connect_gateway_association_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_virtual_interface_request() :: %{
        required("virtualInterfaceId") => String.t()
      }
      
  """
  @type delete_virtual_interface_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_hosted_connections_request() :: %{
        required("connectionId") => String.t()
      }
      
  """
  @type describe_hosted_connections_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_mac_sec_key_response() :: %{
        "connectionId" => String.t(),
        "macSecKeys" => list(mac_sec_key()())
      }
      
  """
  @type disassociate_mac_sec_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_private_virtual_interface_request() :: %{
        required("connectionId") => String.t(),
        required("newPrivateVirtualInterface") => new_private_virtual_interface()
      }
      
  """
  @type create_private_virtual_interface_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_connections_request() :: %{
        optional("connectionId") => String.t()
      }
      
  """
  @type describe_connections_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bgp_peer() :: %{
        "addressFamily" => list(any()),
        "amazonAddress" => String.t(),
        "asn" => integer(),
        "authKey" => String.t(),
        "awsDeviceV2" => String.t(),
        "awsLogicalDeviceId" => String.t(),
        "bgpPeerId" => String.t(),
        "bgpPeerState" => list(any()),
        "bgpStatus" => list(any()),
        "customerAddress" => String.t()
      }
      
  """
  @type bgp_peer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      interconnect() :: %{
        "awsDevice" => String.t(),
        "awsDeviceV2" => String.t(),
        "awsLogicalDeviceId" => String.t(),
        "bandwidth" => String.t(),
        "hasLogicalRedundancy" => list(any()),
        "interconnectId" => String.t(),
        "interconnectName" => String.t(),
        "interconnectState" => list(any()),
        "jumboFrameCapable" => boolean(),
        "lagId" => String.t(),
        "loaIssueTime" => non_neg_integer(),
        "location" => String.t(),
        "providerName" => String.t(),
        "region" => String.t(),
        "tags" => list(tag()())
      }
      
  """
  @type interconnect() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      confirm_customer_agreement_request() :: %{
        optional("agreementName") => String.t()
      }
      
  """
  @type confirm_customer_agreement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_transit_virtual_interface_request() :: %{
        required("connectionId") => String.t(),
        required("newTransitVirtualInterface") => new_transit_virtual_interface()
      }
      
  """
  @type create_transit_virtual_interface_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      direct_connect_gateway_association() :: %{
        "allowedPrefixesToDirectConnectGateway" => list(route_filter_prefix()()),
        "associatedGateway" => associated_gateway(),
        "associationId" => String.t(),
        "associationState" => list(any()),
        "directConnectGatewayId" => String.t(),
        "directConnectGatewayOwnerAccount" => String.t(),
        "stateChangeError" => String.t(),
        "virtualGatewayId" => String.t(),
        "virtualGatewayOwnerAccount" => String.t(),
        "virtualGatewayRegion" => String.t()
      }
      
  """
  @type direct_connect_gateway_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      router_type() :: %{
        "platform" => String.t(),
        "routerTypeIdentifier" => String.t(),
        "software" => String.t(),
        "vendor" => String.t(),
        "xsltTemplateName" => String.t(),
        "xsltTemplateNameForMacSec" => String.t()
      }
      
  """
  @type router_type() :: %{String.t() => any()}

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
      
      create_bgp_peer_request() :: %{
        optional("newBGPPeer") => new_bgp_peer(),
        optional("virtualInterfaceId") => String.t()
      }
      
  """
  @type create_bgp_peer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_bgp_peer_response() :: %{
        "virtualInterface" => virtual_interface()
      }
      
  """
  @type create_bgp_peer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tags_response() :: %{
        "resourceTags" => list(resource_tag()())
      }
      
  """
  @type describe_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_virtual_interface_test_history_request() :: %{
        optional("bgpPeers") => list(String.t()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => String.t(),
        optional("testId") => String.t(),
        optional("virtualInterfaceId") => String.t()
      }
      
  """
  @type list_virtual_interface_test_history_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_direct_connect_gateway_attachments_result() :: %{
        "directConnectGatewayAttachments" => list(direct_connect_gateway_attachment()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_direct_connect_gateway_attachments_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      virtual_interfaces() :: %{
        optional("virtualInterfaces") => list(virtual_interface()())
      }
      
  """
  @type virtual_interfaces() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_mac_sec_key_request() :: %{
        required("connectionId") => String.t(),
        required("secretARN") => String.t()
      }
      
  """
  @type disassociate_mac_sec_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      new_transit_virtual_interface_allocation() :: %{
        "addressFamily" => list(any()),
        "amazonAddress" => String.t(),
        "asn" => integer(),
        "authKey" => String.t(),
        "customerAddress" => String.t(),
        "mtu" => integer(),
        "tags" => list(tag()()),
        "virtualInterfaceName" => String.t(),
        "vlan" => integer()
      }
      
  """
  @type new_transit_virtual_interface_allocation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bgp_peer_request() :: %{
        optional("asn") => integer(),
        optional("bgpPeerId") => String.t(),
        optional("customerAddress") => String.t(),
        optional("virtualInterfaceId") => String.t()
      }
      
  """
  @type delete_bgp_peer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      allocate_transit_virtual_interface_request() :: %{
        required("connectionId") => String.t(),
        required("newTransitVirtualInterfaceAllocation") => new_transit_virtual_interface_allocation(),
        required("ownerAccount") => String.t()
      }
      
  """
  @type allocate_transit_virtual_interface_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      allocate_transit_virtual_interface_result() :: %{
        "virtualInterface" => virtual_interface()
      }
      
  """
  @type allocate_transit_virtual_interface_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_direct_connect_gateway_response() :: %{
        "directConnectGateway" => direct_connect_gateway()
      }
      
  """
  @type update_direct_connect_gateway_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bgp_peer_response() :: %{
        "virtualInterface" => virtual_interface()
      }
      
  """
  @type delete_bgp_peer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_lag_request() :: %{
        optional("childConnectionTags") => list(tag()()),
        optional("connectionId") => String.t(),
        optional("providerName") => String.t(),
        optional("requestMACSec") => boolean(),
        optional("tags") => list(tag()()),
        required("connectionsBandwidth") => String.t(),
        required("lagName") => String.t(),
        required("location") => String.t(),
        required("numberOfConnections") => integer()
      }
      
  """
  @type create_lag_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      confirm_public_virtual_interface_response() :: %{
        "virtualInterfaceState" => list(any())
      }
      
  """
  @type confirm_public_virtual_interface_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_interconnect_loa_response() :: %{
        "loa" => loa()
      }
      
  """
  @type describe_interconnect_loa_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_virtual_interface_test_history_response() :: %{
        "nextToken" => String.t(),
        "virtualInterfaceTestHistory" => list(virtual_interface_test_history()())
      }
      
  """
  @type list_virtual_interface_test_history_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      virtual_gateway() :: %{
        "virtualGatewayId" => String.t(),
        "virtualGatewayState" => String.t()
      }
      
  """
  @type virtual_gateway() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "key" => String.t(),
        "value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_bgp_failover_test_response() :: %{
        "virtualInterfaceTest" => virtual_interface_test_history()
      }
      
  """
  @type start_bgp_failover_test_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_direct_connect_gateway_result() :: %{
        "directConnectGateway" => direct_connect_gateway()
      }
      
  """
  @type delete_direct_connect_gateway_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connection() :: %{
        "awsDevice" => String.t(),
        "awsDeviceV2" => String.t(),
        "awsLogicalDeviceId" => String.t(),
        "bandwidth" => String.t(),
        "connectionId" => String.t(),
        "connectionName" => String.t(),
        "connectionState" => list(any()),
        "encryptionMode" => String.t(),
        "hasLogicalRedundancy" => list(any()),
        "jumboFrameCapable" => boolean(),
        "lagId" => String.t(),
        "loaIssueTime" => non_neg_integer(),
        "location" => String.t(),
        "macSecCapable" => boolean(),
        "macSecKeys" => list(mac_sec_key()()),
        "ownerAccount" => String.t(),
        "partnerName" => String.t(),
        "portEncryptionStatus" => String.t(),
        "providerName" => String.t(),
        "region" => String.t(),
        "tags" => list(tag()()),
        "vlan" => integer()
      }
      
  """
  @type connection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_bgp_failover_test_response() :: %{
        "virtualInterfaceTest" => virtual_interface_test_history()
      }
      
  """
  @type stop_bgp_failover_test_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      new_public_virtual_interface() :: %{
        "addressFamily" => list(any()),
        "amazonAddress" => String.t(),
        "asn" => integer(),
        "authKey" => String.t(),
        "customerAddress" => String.t(),
        "routeFilterPrefixes" => list(route_filter_prefix()()),
        "tags" => list(tag()()),
        "virtualInterfaceName" => String.t(),
        "vlan" => integer()
      }
      
  """
  @type new_public_virtual_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_public_virtual_interface_request() :: %{
        required("connectionId") => String.t(),
        required("newPublicVirtualInterface") => new_public_virtual_interface()
      }
      
  """
  @type create_public_virtual_interface_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_interconnect_response() :: %{
        "interconnectState" => list(any())
      }
      
  """
  @type delete_interconnect_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_direct_connect_gateway_association_proposal_result() :: %{
        "directConnectGatewayAssociationProposal" => direct_connect_gateway_association_proposal()
      }
      
  """
  @type delete_direct_connect_gateway_association_proposal_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customer_agreement() :: %{
        "agreementName" => String.t(),
        "status" => String.t()
      }
      
  """
  @type customer_agreement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_direct_connect_gateway_request() :: %{
        optional("amazonSideAsn") => float(),
        required("directConnectGatewayName") => String.t()
      }
      
  """
  @type create_direct_connect_gateway_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_direct_connect_gateway_association_request() :: %{
        optional("addAllowedPrefixesToDirectConnectGateway") => list(route_filter_prefix()()),
        optional("gatewayId") => String.t(),
        optional("virtualGatewayId") => String.t(),
        required("directConnectGatewayId") => String.t()
      }
      
  """
  @type create_direct_connect_gateway_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_interconnect_loa_request() :: %{
        optional("loaContentType") => list(any()),
        optional("providerName") => String.t(),
        required("interconnectId") => String.t()
      }
      
  """
  @type describe_interconnect_loa_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mac_sec_key() :: %{
        "ckn" => String.t(),
        "secretARN" => String.t(),
        "startOn" => String.t(),
        "state" => String.t()
      }
      
  """
  @type mac_sec_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      location() :: %{
        "availableMacSecPortSpeeds" => list(String.t()()),
        "availablePortSpeeds" => list(String.t()()),
        "availableProviders" => list(String.t()()),
        "locationCode" => String.t(),
        "locationName" => String.t(),
        "region" => String.t()
      }
      
  """
  @type location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_router_configuration_request() :: %{
        optional("routerTypeIdentifier") => String.t(),
        required("virtualInterfaceId") => String.t()
      }
      
  """
  @type describe_router_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_lag_request() :: %{
        required("lagId") => String.t()
      }
      
  """
  @type delete_lag_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_direct_connect_gateway_request() :: %{
        required("directConnectGatewayId") => String.t()
      }
      
  """
  @type delete_direct_connect_gateway_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_virtual_interfaces_request() :: %{
        optional("connectionId") => String.t(),
        optional("virtualInterfaceId") => String.t()
      }
      
  """
  @type describe_virtual_interfaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connections() :: %{
        optional("connections") => list(connection()())
      }
      
  """
  @type connections() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      confirm_private_virtual_interface_response() :: %{
        "virtualInterfaceState" => list(any())
      }
      
  """
  @type confirm_private_virtual_interface_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      locations() :: %{
        optional("locations") => list(location()())
      }
      
  """
  @type locations() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_direct_connect_gateway_association_proposal_result() :: %{
        "directConnectGatewayAssociation" => direct_connect_gateway_association()
      }
      
  """
  @type accept_direct_connect_gateway_association_proposal_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      virtual_interface_test_history() :: %{
        "bgpPeers" => list(String.t()()),
        "endTime" => non_neg_integer(),
        "ownerAccount" => String.t(),
        "startTime" => non_neg_integer(),
        "status" => String.t(),
        "testDurationInMinutes" => integer(),
        "testId" => String.t(),
        "virtualInterfaceId" => String.t()
      }
      
  """
  @type virtual_interface_test_history() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      new_transit_virtual_interface() :: %{
        "addressFamily" => list(any()),
        "amazonAddress" => String.t(),
        "asn" => integer(),
        "authKey" => String.t(),
        "customerAddress" => String.t(),
        "directConnectGatewayId" => String.t(),
        "enableSiteLink" => boolean(),
        "mtu" => integer(),
        "tags" => list(tag()()),
        "virtualInterfaceName" => String.t(),
        "vlan" => integer()
      }
      
  """
  @type new_transit_virtual_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_connections_on_interconnect_request() :: %{
        required("interconnectId") => String.t()
      }
      
  """
  @type describe_connections_on_interconnect_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_direct_connect_gateway_association_proposals_result() :: %{
        "directConnectGatewayAssociationProposals" => list(direct_connect_gateway_association_proposal()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_direct_connect_gateway_association_proposals_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      virtual_interface() :: %{
        "addressFamily" => list(any()),
        "amazonAddress" => String.t(),
        "amazonSideAsn" => float(),
        "asn" => integer(),
        "authKey" => String.t(),
        "awsDeviceV2" => String.t(),
        "awsLogicalDeviceId" => String.t(),
        "bgpPeers" => list(bgp_peer()()),
        "connectionId" => String.t(),
        "customerAddress" => String.t(),
        "customerRouterConfig" => String.t(),
        "directConnectGatewayId" => String.t(),
        "jumboFrameCapable" => boolean(),
        "location" => String.t(),
        "mtu" => integer(),
        "ownerAccount" => String.t(),
        "region" => String.t(),
        "routeFilterPrefixes" => list(route_filter_prefix()()),
        "siteLinkEnabled" => boolean(),
        "tags" => list(tag()()),
        "virtualGatewayId" => String.t(),
        "virtualInterfaceId" => String.t(),
        "virtualInterfaceName" => String.t(),
        "virtualInterfaceState" => list(any()),
        "virtualInterfaceType" => String.t(),
        "vlan" => integer()
      }
      
  """
  @type virtual_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_tag() :: %{
        "resourceArn" => String.t(),
        "tags" => list(tag()())
      }
      
  """
  @type resource_tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      allocate_hosted_connection_request() :: %{
        optional("tags") => list(tag()()),
        required("bandwidth") => String.t(),
        required("connectionId") => String.t(),
        required("connectionName") => String.t(),
        required("ownerAccount") => String.t(),
        required("vlan") => integer()
      }
      
  """
  @type allocate_hosted_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_mac_sec_key_request() :: %{
        optional("cak") => String.t(),
        optional("ckn") => String.t(),
        optional("secretARN") => String.t(),
        required("connectionId") => String.t()
      }
      
  """
  @type associate_mac_sec_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_hosted_connection_request() :: %{
        required("connectionId") => String.t(),
        required("parentConnectionId") => String.t()
      }
      
  """
  @type associate_hosted_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_direct_connect_gateway_attachments_request() :: %{
        optional("directConnectGatewayId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("virtualInterfaceId") => String.t()
      }
      
  """
  @type describe_direct_connect_gateway_attachments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      direct_connect_gateway_attachment() :: %{
        "attachmentState" => list(any()),
        "attachmentType" => list(any()),
        "directConnectGatewayId" => String.t(),
        "stateChangeError" => String.t(),
        "virtualInterfaceId" => String.t(),
        "virtualInterfaceOwnerAccount" => String.t(),
        "virtualInterfaceRegion" => String.t()
      }
      
  """
  @type direct_connect_gateway_attachment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_connection_loa_request() :: %{
        optional("loaContentType") => list(any()),
        optional("providerName") => String.t(),
        required("connectionId") => String.t()
      }
      
  """
  @type describe_connection_loa_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_lag_request() :: %{
        optional("encryptionMode") => String.t(),
        optional("lagName") => String.t(),
        optional("minimumLinks") => integer(),
        required("lagId") => String.t()
      }
      
  """
  @type update_lag_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_interconnects_request() :: %{
        optional("interconnectId") => String.t()
      }
      
  """
  @type describe_interconnects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_virtual_interface_response() :: %{
        "virtualInterfaceState" => list(any())
      }
      
  """
  @type delete_virtual_interface_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_direct_connect_gateway_association_request() :: %{
        optional("addAllowedPrefixesToDirectConnectGateway") => list(route_filter_prefix()()),
        optional("associationId") => String.t(),
        optional("removeAllowedPrefixesToDirectConnectGateway") => list(route_filter_prefix()())
      }
      
  """
  @type update_direct_connect_gateway_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      confirm_private_virtual_interface_request() :: %{
        optional("directConnectGatewayId") => String.t(),
        optional("virtualGatewayId") => String.t(),
        required("virtualInterfaceId") => String.t()
      }
      
  """
  @type confirm_private_virtual_interface_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_interconnect_request() :: %{
        required("interconnectId") => String.t()
      }
      
  """
  @type delete_interconnect_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      interconnects() :: %{
        optional("interconnects") => list(interconnect()())
      }
      
  """
  @type interconnects() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_tag_keys_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type duplicate_tag_keys_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_connection_from_lag_request() :: %{
        required("connectionId") => String.t(),
        required("lagId") => String.t()
      }
      
  """
  @type disassociate_connection_from_lag_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      route_filter_prefix() :: %{
        "cidr" => String.t()
      }
      
  """
  @type route_filter_prefix() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      allocate_connection_on_interconnect_request() :: %{
        required("bandwidth") => String.t(),
        required("connectionName") => String.t(),
        required("interconnectId") => String.t(),
        required("ownerAccount") => String.t(),
        required("vlan") => integer()
      }
      
  """
  @type allocate_connection_on_interconnect_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_direct_connect_gateway_association_proposal_result() :: %{
        "directConnectGatewayAssociationProposal" => direct_connect_gateway_association_proposal()
      }
      
  """
  @type create_direct_connect_gateway_association_proposal_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_direct_connect_gateway_association_proposal_request() :: %{
        optional("addAllowedPrefixesToDirectConnectGateway") => list(route_filter_prefix()()),
        optional("removeAllowedPrefixesToDirectConnectGateway") => list(route_filter_prefix()()),
        required("directConnectGatewayId") => String.t(),
        required("directConnectGatewayOwnerAccount") => String.t(),
        required("gatewayId") => String.t()
      }
      
  """
  @type create_direct_connect_gateway_association_proposal_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_direct_connect_gateway_association_request() :: %{
        optional("associationId") => String.t(),
        optional("directConnectGatewayId") => String.t(),
        optional("virtualGatewayId") => String.t()
      }
      
  """
  @type delete_direct_connect_gateway_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      confirm_transit_virtual_interface_response() :: %{
        "virtualInterfaceState" => list(any())
      }
      
  """
  @type confirm_transit_virtual_interface_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_direct_connect_gateway_association_proposal_request() :: %{
        optional("overrideAllowedPrefixesToDirectConnectGateway") => list(route_filter_prefix()()),
        required("associatedGatewayOwnerAccount") => String.t(),
        required("directConnectGatewayId") => String.t(),
        required("proposalId") => String.t()
      }
      
  """
  @type accept_direct_connect_gateway_association_proposal_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      allocate_private_virtual_interface_request() :: %{
        required("connectionId") => String.t(),
        required("newPrivateVirtualInterfaceAllocation") => new_private_virtual_interface_allocation(),
        required("ownerAccount") => String.t()
      }
      
  """
  @type allocate_private_virtual_interface_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_mac_sec_key_response() :: %{
        "connectionId" => String.t(),
        "macSecKeys" => list(mac_sec_key()())
      }
      
  """
  @type associate_mac_sec_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      allocate_public_virtual_interface_request() :: %{
        required("connectionId") => String.t(),
        required("newPublicVirtualInterfaceAllocation") => new_public_virtual_interface_allocation(),
        required("ownerAccount") => String.t()
      }
      
  """
  @type allocate_public_virtual_interface_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      direct_connect_gateway() :: %{
        "amazonSideAsn" => float(),
        "directConnectGatewayId" => String.t(),
        "directConnectGatewayName" => String.t(),
        "directConnectGatewayState" => list(any()),
        "ownerAccount" => String.t(),
        "stateChangeError" => String.t()
      }
      
  """
  @type direct_connect_gateway() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_connection_with_lag_request() :: %{
        required("connectionId") => String.t(),
        required("lagId") => String.t()
      }
      
  """
  @type associate_connection_with_lag_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tags_request() :: %{
        required("resourceArns") => list(String.t()())
      }
      
  """
  @type describe_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_direct_connect_gateway_association_result() :: %{
        "directConnectGatewayAssociation" => direct_connect_gateway_association()
      }
      
  """
  @type create_direct_connect_gateway_association_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      confirm_customer_agreement_response() :: %{
        "status" => String.t()
      }
      
  """
  @type confirm_customer_agreement_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associated_gateway() :: %{
        "id" => String.t(),
        "ownerAccount" => String.t(),
        "region" => String.t(),
        "type" => list(any())
      }
      
  """
  @type associated_gateway() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_router_configuration_response() :: %{
        "customerRouterConfig" => String.t(),
        "router" => router_type(),
        "virtualInterfaceId" => String.t(),
        "virtualInterfaceName" => String.t()
      }
      
  """
  @type describe_router_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_connection_request() :: %{
        required("connectionId") => String.t()
      }
      
  """
  @type delete_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      direct_connect_server_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type direct_connect_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      confirm_public_virtual_interface_request() :: %{
        required("virtualInterfaceId") => String.t()
      }
      
  """
  @type confirm_public_virtual_interface_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_virtual_interface_request() :: %{
        required("connectionId") => String.t(),
        required("virtualInterfaceId") => String.t()
      }
      
  """
  @type associate_virtual_interface_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lags() :: %{
        optional("lags") => list(lag()())
      }
      
  """
  @type lags() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_loa_request() :: %{
        optional("loaContentType") => list(any()),
        optional("providerName") => String.t(),
        required("connectionId") => String.t()
      }
      
  """
  @type describe_loa_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_connection_loa_response() :: %{
        "loa" => loa()
      }
      
  """
  @type describe_connection_loa_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_connection_request() :: %{
        optional("lagId") => String.t(),
        optional("providerName") => String.t(),
        optional("requestMACSec") => boolean(),
        optional("tags") => list(tag()()),
        required("bandwidth") => String.t(),
        required("connectionName") => String.t(),
        required("location") => String.t()
      }
      
  """
  @type create_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_direct_connect_gateway_request() :: %{
        required("directConnectGatewayId") => String.t(),
        required("newDirectConnectGatewayName") => String.t()
      }
      
  """
  @type update_direct_connect_gateway_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_direct_connect_gateway_association_result() :: %{
        "directConnectGatewayAssociation" => direct_connect_gateway_association()
      }
      
  """
  @type delete_direct_connect_gateway_association_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lag() :: %{
        "allowsHostedConnections" => boolean(),
        "awsDevice" => String.t(),
        "awsDeviceV2" => String.t(),
        "awsLogicalDeviceId" => String.t(),
        "connections" => list(connection()()),
        "connectionsBandwidth" => String.t(),
        "encryptionMode" => String.t(),
        "hasLogicalRedundancy" => list(any()),
        "jumboFrameCapable" => boolean(),
        "lagId" => String.t(),
        "lagName" => String.t(),
        "lagState" => list(any()),
        "location" => String.t(),
        "macSecCapable" => boolean(),
        "macSecKeys" => list(mac_sec_key()()),
        "minimumLinks" => integer(),
        "numberOfConnections" => integer(),
        "ownerAccount" => String.t(),
        "providerName" => String.t(),
        "region" => String.t(),
        "tags" => list(tag()())
      }
      
  """
  @type lag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      new_public_virtual_interface_allocation() :: %{
        "addressFamily" => list(any()),
        "amazonAddress" => String.t(),
        "asn" => integer(),
        "authKey" => String.t(),
        "customerAddress" => String.t(),
        "routeFilterPrefixes" => list(route_filter_prefix()()),
        "tags" => list(tag()()),
        "virtualInterfaceName" => String.t(),
        "vlan" => integer()
      }
      
  """
  @type new_public_virtual_interface_allocation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      new_bgp_peer() :: %{
        "addressFamily" => list(any()),
        "amazonAddress" => String.t(),
        "asn" => integer(),
        "authKey" => String.t(),
        "customerAddress" => String.t()
      }
      
  """
  @type new_bgp_peer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_transit_virtual_interface_result() :: %{
        "virtualInterface" => virtual_interface()
      }
      
  """
  @type create_transit_virtual_interface_result() :: %{String.t() => any()}

  @type accept_direct_connect_gateway_association_proposal_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type allocate_connection_on_interconnect_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type allocate_hosted_connection_errors() ::
          too_many_tags_exception()
          | direct_connect_server_exception()
          | duplicate_tag_keys_exception()
          | direct_connect_client_exception()

  @type allocate_private_virtual_interface_errors() ::
          too_many_tags_exception()
          | direct_connect_server_exception()
          | duplicate_tag_keys_exception()
          | direct_connect_client_exception()

  @type allocate_public_virtual_interface_errors() ::
          too_many_tags_exception()
          | direct_connect_server_exception()
          | duplicate_tag_keys_exception()
          | direct_connect_client_exception()

  @type allocate_transit_virtual_interface_errors() ::
          too_many_tags_exception()
          | direct_connect_server_exception()
          | duplicate_tag_keys_exception()
          | direct_connect_client_exception()

  @type associate_connection_with_lag_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type associate_hosted_connection_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type associate_mac_sec_key_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type associate_virtual_interface_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type confirm_connection_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type confirm_customer_agreement_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type confirm_private_virtual_interface_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type confirm_public_virtual_interface_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type confirm_transit_virtual_interface_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type create_bgp_peer_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type create_connection_errors() ::
          too_many_tags_exception()
          | direct_connect_server_exception()
          | duplicate_tag_keys_exception()
          | direct_connect_client_exception()

  @type create_direct_connect_gateway_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type create_direct_connect_gateway_association_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type create_direct_connect_gateway_association_proposal_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type create_interconnect_errors() ::
          too_many_tags_exception()
          | direct_connect_server_exception()
          | duplicate_tag_keys_exception()
          | direct_connect_client_exception()

  @type create_lag_errors() ::
          too_many_tags_exception()
          | direct_connect_server_exception()
          | duplicate_tag_keys_exception()
          | direct_connect_client_exception()

  @type create_private_virtual_interface_errors() ::
          too_many_tags_exception()
          | direct_connect_server_exception()
          | duplicate_tag_keys_exception()
          | direct_connect_client_exception()

  @type create_public_virtual_interface_errors() ::
          too_many_tags_exception()
          | direct_connect_server_exception()
          | duplicate_tag_keys_exception()
          | direct_connect_client_exception()

  @type create_transit_virtual_interface_errors() ::
          too_many_tags_exception()
          | direct_connect_server_exception()
          | duplicate_tag_keys_exception()
          | direct_connect_client_exception()

  @type delete_bgp_peer_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type delete_connection_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type delete_direct_connect_gateway_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type delete_direct_connect_gateway_association_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type delete_direct_connect_gateway_association_proposal_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type delete_interconnect_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type delete_lag_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type delete_virtual_interface_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type describe_connection_loa_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type describe_connections_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type describe_connections_on_interconnect_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type describe_customer_metadata_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type describe_direct_connect_gateway_association_proposals_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type describe_direct_connect_gateway_associations_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type describe_direct_connect_gateway_attachments_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type describe_direct_connect_gateways_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type describe_hosted_connections_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type describe_interconnect_loa_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type describe_interconnects_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type describe_lags_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type describe_loa_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type describe_locations_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type describe_router_configuration_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type describe_tags_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type describe_virtual_gateways_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type describe_virtual_interfaces_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type disassociate_connection_from_lag_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type disassociate_mac_sec_key_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type list_virtual_interface_test_history_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type start_bgp_failover_test_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type stop_bgp_failover_test_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | direct_connect_server_exception()
          | duplicate_tag_keys_exception()
          | direct_connect_client_exception()

  @type untag_resource_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type update_connection_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type update_direct_connect_gateway_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type update_direct_connect_gateway_association_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type update_lag_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  @type update_virtual_interface_attributes_errors() ::
          direct_connect_server_exception() | direct_connect_client_exception()

  def metadata do
    %{
      api_version: "2012-10-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "directconnect",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Direct Connect",
      signature_version: "v4",
      signing_name: "directconnect",
      target_prefix: "OvertureService"
    }
  end

  @doc """
  Accepts a proposal request to attach a virtual private gateway or transit
  gateway to a Direct Connect gateway.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20AcceptDirectConnectGatewayAssociationProposal&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:accept_direct_connect_gateway_association_proposal_request`)
    %{
      optional("overrideAllowedPrefixesToDirectConnectGateway") => list(route_filter_prefix()()),
      required("associatedGatewayOwnerAccount") => String.t(),
      required("directConnectGatewayId") => String.t(),
      required("proposalId") => String.t()
    }
  """

  @spec accept_direct_connect_gateway_association_proposal(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, accept_direct_connect_gateway_association_proposal_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_direct_connect_gateway_association_proposal_errors()}

  def accept_direct_connect_gateway_association_proposal(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "AcceptDirectConnectGatewayAssociationProposal",
      input,
      options
    )
  end

  @doc """
  Deprecated. Use `AllocateHostedConnection` instead. Creates a hosted connection
  on an interconnect.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20AllocateConnectionOnInterconnect&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:allocate_connection_on_interconnect_request`)
    %{
      required("bandwidth") => String.t(),
      required("connectionName") => String.t(),
      required("interconnectId") => String.t(),
      required("ownerAccount") => String.t(),
      required("vlan") => integer()
    }
  """

  @spec allocate_connection_on_interconnect(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, connection(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, allocate_connection_on_interconnect_errors()}

  def allocate_connection_on_interconnect(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AllocateConnectionOnInterconnect", input, options)
  end

  @doc """
  Creates a hosted connection on the specified interconnect or a link aggregation
  group (LAG) of interconnects. Allocates a VLAN number and a specified amount
  of capacity (bandwidth) for use by a hosted connection on the specified
  interconnect or LAG of interconnects. Amazon Web Services polices the hosted
  connection for the specified capacity and the Direct Connect Partner must also
  police the hosted connection for the specified capacity.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20AllocateHostedConnection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:allocate_hosted_connection_request`)
    %{
      optional("tags") => list(tag()()),
      required("bandwidth") => String.t(),
      required("connectionId") => String.t(),
      required("connectionName") => String.t(),
      required("ownerAccount") => String.t(),
      required("vlan") => integer()
    }
  """

  @spec allocate_hosted_connection(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, connection(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, allocate_hosted_connection_errors()}

  def allocate_hosted_connection(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AllocateHostedConnection", input, options)
  end

  @doc """
  Provisions a private virtual interface to be owned by the specified Amazon Web
  Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20AllocatePrivateVirtualInterface&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:allocate_private_virtual_interface_request`)
    %{
      required("connectionId") => String.t(),
      required("newPrivateVirtualInterfaceAllocation") => new_private_virtual_interface_allocation(),
      required("ownerAccount") => String.t()
    }
  """

  @spec allocate_private_virtual_interface(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, virtual_interface(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, allocate_private_virtual_interface_errors()}

  def allocate_private_virtual_interface(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AllocatePrivateVirtualInterface", input, options)
  end

  @doc """
  Provisions a public virtual interface to be owned by the specified Amazon Web
  Services account. The owner of a connection calls this function to provision a
  public virtual interface to be owned by the specified Amazon Web Services
  account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20AllocatePublicVirtualInterface&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:allocate_public_virtual_interface_request`)
    %{
      required("connectionId") => String.t(),
      required("newPublicVirtualInterfaceAllocation") => new_public_virtual_interface_allocation(),
      required("ownerAccount") => String.t()
    }
  """

  @spec allocate_public_virtual_interface(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, virtual_interface(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, allocate_public_virtual_interface_errors()}

  def allocate_public_virtual_interface(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AllocatePublicVirtualInterface", input, options)
  end

  @doc """
  Provisions a transit virtual interface to be owned by the specified Amazon Web
  Services account. Use this type of interface to connect a transit gateway to
  your Direct Connect gateway. The owner of a connection provisions a transit
  virtual interface to be owned by the specified Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20AllocateTransitVirtualInterface&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:allocate_transit_virtual_interface_request`)
    %{
      required("connectionId") => String.t(),
      required("newTransitVirtualInterfaceAllocation") => new_transit_virtual_interface_allocation(),
      required("ownerAccount") => String.t()
    }
  """

  @spec allocate_transit_virtual_interface(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, allocate_transit_virtual_interface_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, allocate_transit_virtual_interface_errors()}

  def allocate_transit_virtual_interface(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AllocateTransitVirtualInterface", input, options)
  end

  @doc """
  Associates an existing connection with a link aggregation group (LAG). The
  connection is interrupted and re-established as a member of the LAG
  (connectivity to Amazon Web Services is interrupted). The connection must be
  hosted on the same Direct Connect endpoint as the LAG, and its bandwidth must
  match the bandwidth for the LAG. You can re-associate a connection that's
  currently associated with a different LAG; however, if removing the connection
  would cause the original LAG to fall below its setting for minimum number of
  operational connections, the request fails. Any virtual interfaces that are
  directly associated with the connection are automatically re-associated with
  the LAG. If the connection was originally associated with a different LAG, the
  virtual interfaces remain associated with the original LAG.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20AssociateConnectionWithLag&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_connection_with_lag_request`)
    %{
      required("connectionId") => String.t(),
      required("lagId") => String.t()
    }
  """

  @spec associate_connection_with_lag(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, connection(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_connection_with_lag_errors()}

  def associate_connection_with_lag(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateConnectionWithLag", input, options)
  end

  @doc """
  Associates a hosted connection and its virtual interfaces with a link
  aggregation group (LAG) or interconnect. If the target interconnect or LAG has
  an existing hosted connection with a conflicting VLAN number or IP address,
  the operation fails. This action temporarily interrupts the hosted
  connection's connectivity to Amazon Web Services as it is being migrated.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20AssociateHostedConnection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_hosted_connection_request`)
    %{
      required("connectionId") => String.t(),
      required("parentConnectionId") => String.t()
    }
  """

  @spec associate_hosted_connection(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, connection(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_hosted_connection_errors()}

  def associate_hosted_connection(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateHostedConnection", input, options)
  end

  @doc """
  Associates a MAC Security (MACsec) Connection Key Name (CKN)/ Connectivity
  Association Key (CAK) pair with an Direct Connect dedicated connection. You
  must supply either the `secretARN,` or the CKN/CAK (`ckn` and `cak`) pair in
  the request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20AssociateMacSecKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_mac_sec_key_request`)
    %{
      optional("cak") => String.t(),
      optional("ckn") => String.t(),
      optional("secretARN") => String.t(),
      required("connectionId") => String.t()
    }
  """

  @spec associate_mac_sec_key(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, associate_mac_sec_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_mac_sec_key_errors()}

  def associate_mac_sec_key(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateMacSecKey", input, options)
  end

  @doc """
  Associates a virtual interface with a specified link aggregation group (LAG) or
  connection. Connectivity to Amazon Web Services is temporarily interrupted as
  the virtual interface is being migrated. If the target connection or LAG has
  an associated virtual interface with a conflicting VLAN number or a
  conflicting IP address, the operation fails. Virtual interfaces associated
  with a hosted connection cannot be associated with a LAG; hosted connections
  must be migrated along with their virtual interfaces using
  `AssociateHostedConnection`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20AssociateVirtualInterface&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_virtual_interface_request`)
    %{
      required("connectionId") => String.t(),
      required("virtualInterfaceId") => String.t()
    }
  """

  @spec associate_virtual_interface(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, virtual_interface(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_virtual_interface_errors()}

  def associate_virtual_interface(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateVirtualInterface", input, options)
  end

  @doc """
  Confirms the creation of the specified hosted connection on an interconnect.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20ConfirmConnection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:confirm_connection_request`)
    %{
      required("connectionId") => String.t()
    }
  """

  @spec confirm_connection(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, confirm_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, confirm_connection_errors()}

  def confirm_connection(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ConfirmConnection", input, options)
  end

  @doc """
  The confirmation of the terms of agreement when creating the connection/link
  aggregation group (LAG).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20ConfirmCustomerAgreement&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:confirm_customer_agreement_request`)
    %{
      optional("agreementName") => String.t()
    }
  """

  @spec confirm_customer_agreement(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, confirm_customer_agreement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, confirm_customer_agreement_errors()}

  def confirm_customer_agreement(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ConfirmCustomerAgreement", input, options)
  end

  @doc """
  Accepts ownership of a private virtual interface created by another Amazon Web
  Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20ConfirmPrivateVirtualInterface&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:confirm_private_virtual_interface_request`)
    %{
      optional("directConnectGatewayId") => String.t(),
      optional("virtualGatewayId") => String.t(),
      required("virtualInterfaceId") => String.t()
    }
  """

  @spec confirm_private_virtual_interface(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, confirm_private_virtual_interface_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, confirm_private_virtual_interface_errors()}

  def confirm_private_virtual_interface(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ConfirmPrivateVirtualInterface", input, options)
  end

  @doc """
  Accepts ownership of a public virtual interface created by another Amazon Web
  Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20ConfirmPublicVirtualInterface&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:confirm_public_virtual_interface_request`)
    %{
      required("virtualInterfaceId") => String.t()
    }
  """

  @spec confirm_public_virtual_interface(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, confirm_public_virtual_interface_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, confirm_public_virtual_interface_errors()}

  def confirm_public_virtual_interface(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ConfirmPublicVirtualInterface", input, options)
  end

  @doc """
  Accepts ownership of a transit virtual interface created by another Amazon Web
  Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20ConfirmTransitVirtualInterface&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:confirm_transit_virtual_interface_request`)
    %{
      required("directConnectGatewayId") => String.t(),
      required("virtualInterfaceId") => String.t()
    }
  """

  @spec confirm_transit_virtual_interface(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, confirm_transit_virtual_interface_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, confirm_transit_virtual_interface_errors()}

  def confirm_transit_virtual_interface(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ConfirmTransitVirtualInterface", input, options)
  end

  @doc """
  Creates a BGP peer on the specified virtual interface. You must create a BGP
  peer for the corresponding address family (IPv4/IPv6) in order to access
  Amazon Web Services resources that also use that address family.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20CreateBGPPeer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_bgp_peer_request`)
    %{
      optional("newBGPPeer") => new_bgp_peer(),
      optional("virtualInterfaceId") => String.t()
    }
  """

  @spec create_bgp_peer(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_bgp_peer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_bgp_peer_errors()}

  def create_bgp_peer(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateBGPPeer", input, options)
  end

  @doc """
  Creates a connection between a customer network and a specific Direct Connect
  location. A connection links your internal network to an Direct Connect
  location over a standard Ethernet fiber-optic cable. One end of the cable is
  connected to your router, the other to an Direct Connect router.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20CreateConnection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_connection_request`)
    %{
      optional("lagId") => String.t(),
      optional("providerName") => String.t(),
      optional("requestMACSec") => boolean(),
      optional("tags") => list(tag()()),
      required("bandwidth") => String.t(),
      required("connectionName") => String.t(),
      required("location") => String.t()
    }
  """

  @spec create_connection(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, connection(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_connection_errors()}

  def create_connection(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateConnection", input, options)
  end

  @doc """
  Creates a Direct Connect gateway, which is an intermediate object that enables
  you to connect a set of virtual interfaces and virtual private gateways. A
  Direct Connect gateway is global and visible in any Amazon Web Services Region
  after it is created. The virtual interfaces and virtual private gateways that
  are connected through a Direct Connect gateway can be in different Amazon Web
  Services Regions. This enables you to connect to a VPC in any Region,
  regardless of the Region in which the virtual interfaces are located, and pass
  traffic between them.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20CreateDirectConnectGateway&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_direct_connect_gateway_request`)
    %{
      optional("amazonSideAsn") => float(),
      required("directConnectGatewayName") => String.t()
    }
  """

  @spec create_direct_connect_gateway(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_direct_connect_gateway_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_direct_connect_gateway_errors()}

  def create_direct_connect_gateway(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDirectConnectGateway", input, options)
  end

  @doc """
  Creates an association between a Direct Connect gateway and a virtual private
  gateway. The virtual private gateway must be attached to a VPC and must not be
  associated with another Direct Connect gateway.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20CreateDirectConnectGatewayAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_direct_connect_gateway_association_request`)
    %{
      optional("addAllowedPrefixesToDirectConnectGateway") => list(route_filter_prefix()()),
      optional("gatewayId") => String.t(),
      optional("virtualGatewayId") => String.t(),
      required("directConnectGatewayId") => String.t()
    }
  """

  @spec create_direct_connect_gateway_association(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_direct_connect_gateway_association_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_direct_connect_gateway_association_errors()}

  def create_direct_connect_gateway_association(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDirectConnectGatewayAssociation", input, options)
  end

  @doc """
  Creates a proposal to associate the specified virtual private gateway or transit
  gateway with the specified Direct Connect gateway.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20CreateDirectConnectGatewayAssociationProposal&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_direct_connect_gateway_association_proposal_request`)
    %{
      optional("addAllowedPrefixesToDirectConnectGateway") => list(route_filter_prefix()()),
      optional("removeAllowedPrefixesToDirectConnectGateway") => list(route_filter_prefix()()),
      required("directConnectGatewayId") => String.t(),
      required("directConnectGatewayOwnerAccount") => String.t(),
      required("gatewayId") => String.t()
    }
  """

  @spec create_direct_connect_gateway_association_proposal(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, create_direct_connect_gateway_association_proposal_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_direct_connect_gateway_association_proposal_errors()}

  def create_direct_connect_gateway_association_proposal(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "CreateDirectConnectGatewayAssociationProposal",
      input,
      options
    )
  end

  @doc """
  Creates an interconnect between an Direct Connect Partner's network and a
  specific Direct Connect location. An interconnect is a connection that is
  capable of hosting other connections. The Direct Connect Partner can use an
  interconnect to provide Direct Connect hosted connections to customers through
  their own network services. Like a standard connection, an interconnect links
  the partner's network to an Direct Connect location over a standard Ethernet
  fiber-optic cable. One end is connected to the partner's router, the other to
  an Direct Connect router.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20CreateInterconnect&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_interconnect_request`)
    %{
      optional("lagId") => String.t(),
      optional("providerName") => String.t(),
      optional("tags") => list(tag()()),
      required("bandwidth") => String.t(),
      required("interconnectName") => String.t(),
      required("location") => String.t()
    }
  """

  @spec create_interconnect(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, interconnect(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_interconnect_errors()}

  def create_interconnect(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateInterconnect", input, options)
  end

  @doc """
  Creates a link aggregation group (LAG) with the specified number of bundled
  physical dedicated connections between the customer network and a specific
  Direct Connect location. A LAG is a logical interface that uses the Link
  Aggregation Control Protocol (LACP) to aggregate multiple interfaces, enabling
  you to treat them as a single interface. All connections in a LAG must use the
  same bandwidth (either 1Gbps, 10Gbps, 100Gbps, or 400Gbps) and must terminate
  at the same Direct Connect endpoint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20CreateLag&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_lag_request`)
    %{
      optional("childConnectionTags") => list(tag()()),
      optional("connectionId") => String.t(),
      optional("providerName") => String.t(),
      optional("requestMACSec") => boolean(),
      optional("tags") => list(tag()()),
      required("connectionsBandwidth") => String.t(),
      required("lagName") => String.t(),
      required("location") => String.t(),
      required("numberOfConnections") => integer()
    }
  """

  @spec create_lag(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, lag(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_lag_errors()}

  def create_lag(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLag", input, options)
  end

  @doc """
  Creates a private virtual interface. A virtual interface is the VLAN that
  transports Direct Connect traffic. A private virtual interface can be
  connected to either a Direct Connect gateway or a Virtual Private Gateway
  (VGW). Connecting the private virtual interface to a Direct Connect gateway
  enables the possibility for connecting to multiple VPCs, including VPCs in
  different Amazon Web Services Regions. Connecting the private virtual
  interface to a VGW only provides access to a single VPC within the same
  Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20CreatePrivateVirtualInterface&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_private_virtual_interface_request`)
    %{
      required("connectionId") => String.t(),
      required("newPrivateVirtualInterface") => new_private_virtual_interface()
    }
  """

  @spec create_private_virtual_interface(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, virtual_interface(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_private_virtual_interface_errors()}

  def create_private_virtual_interface(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePrivateVirtualInterface", input, options)
  end

  @doc """
  Creates a public virtual interface. A virtual interface is the VLAN that
  transports Direct Connect traffic. A public virtual interface supports sending
  traffic to public services of Amazon Web Services such as Amazon S3.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20CreatePublicVirtualInterface&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_public_virtual_interface_request`)
    %{
      required("connectionId") => String.t(),
      required("newPublicVirtualInterface") => new_public_virtual_interface()
    }
  """

  @spec create_public_virtual_interface(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, virtual_interface(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_public_virtual_interface_errors()}

  def create_public_virtual_interface(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePublicVirtualInterface", input, options)
  end

  @doc """
  Creates a transit virtual interface. A transit virtual interface should be used
  to access one or more transit gateways associated with Direct Connect
  gateways. A transit virtual interface enables the connection of multiple VPCs
  attached to a transit gateway to a Direct Connect gateway. If you associate
  your transit gateway with one or more Direct Connect gateways, the Autonomous
  System Number (ASN) used by the transit gateway and the Direct Connect gateway
  must be different. For example, if you use the default ASN 64512 for both your
  the transit gateway and Direct Connect gateway, the association request fails.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20CreateTransitVirtualInterface&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_transit_virtual_interface_request`)
    %{
      required("connectionId") => String.t(),
      required("newTransitVirtualInterface") => new_transit_virtual_interface()
    }
  """

  @spec create_transit_virtual_interface(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_transit_virtual_interface_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_transit_virtual_interface_errors()}

  def create_transit_virtual_interface(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTransitVirtualInterface", input, options)
  end

  @doc """
  Deletes the specified BGP peer on the specified virtual interface with the
  specified customer address and ASN.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DeleteBGPPeer&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_bgp_peer_request`)
    %{
      optional("asn") => integer(),
      optional("bgpPeerId") => String.t(),
      optional("customerAddress") => String.t(),
      optional("virtualInterfaceId") => String.t()
    }
  """

  @spec delete_bgp_peer(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_bgp_peer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_bgp_peer_errors()}

  def delete_bgp_peer(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteBGPPeer", input, options)
  end

  @doc """
  Deletes the specified connection.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DeleteConnection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_connection_request`)
    %{
      required("connectionId") => String.t()
    }
  """

  @spec delete_connection(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, connection(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_connection_errors()}

  def delete_connection(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteConnection", input, options)
  end

  @doc """
  Deletes the specified Direct Connect gateway. You must first delete all virtual
  interfaces that are attached to the Direct Connect gateway and disassociate
  all virtual private gateways associated with the Direct Connect gateway.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DeleteDirectConnectGateway&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_direct_connect_gateway_request`)
    %{
      required("directConnectGatewayId") => String.t()
    }
  """

  @spec delete_direct_connect_gateway(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_direct_connect_gateway_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_direct_connect_gateway_errors()}

  def delete_direct_connect_gateway(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDirectConnectGateway", input, options)
  end

  @doc """
  Deletes the association between the specified Direct Connect gateway and virtual
  private gateway.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DeleteDirectConnectGatewayAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_direct_connect_gateway_association_request`)
    %{
      optional("associationId") => String.t(),
      optional("directConnectGatewayId") => String.t(),
      optional("virtualGatewayId") => String.t()
    }
  """

  @spec delete_direct_connect_gateway_association(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_direct_connect_gateway_association_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_direct_connect_gateway_association_errors()}

  def delete_direct_connect_gateway_association(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDirectConnectGatewayAssociation", input, options)
  end

  @doc """
  Deletes the association proposal request between the specified Direct Connect
  gateway and virtual private gateway or transit gateway.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DeleteDirectConnectGatewayAssociationProposal&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_direct_connect_gateway_association_proposal_request`)
    %{
      required("proposalId") => String.t()
    }
  """

  @spec delete_direct_connect_gateway_association_proposal(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, delete_direct_connect_gateway_association_proposal_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_direct_connect_gateway_association_proposal_errors()}

  def delete_direct_connect_gateway_association_proposal(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "DeleteDirectConnectGatewayAssociationProposal",
      input,
      options
    )
  end

  @doc """
  Deletes the specified interconnect.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DeleteInterconnect&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_interconnect_request`)
    %{
      required("interconnectId") => String.t()
    }
  """

  @spec delete_interconnect(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_interconnect_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_interconnect_errors()}

  def delete_interconnect(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteInterconnect", input, options)
  end

  @doc """
  Deletes the specified link aggregation group (LAG). You cannot delete a LAG if
  it has active virtual interfaces or hosted connections.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DeleteLag&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_lag_request`)
    %{
      required("lagId") => String.t()
    }
  """

  @spec delete_lag(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, lag(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_lag_errors()}

  def delete_lag(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteLag", input, options)
  end

  @doc """
  Deletes a virtual interface.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DeleteVirtualInterface&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_virtual_interface_request`)
    %{
      required("virtualInterfaceId") => String.t()
    }
  """

  @spec delete_virtual_interface(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_virtual_interface_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_virtual_interface_errors()}

  def delete_virtual_interface(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteVirtualInterface", input, options)
  end

  @doc """
  Deprecated. Use `DescribeLoa` instead. Gets the LOA-CFA for a connection.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DescribeConnectionLoa&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_connection_loa_request`)
    %{
      optional("loaContentType") => list(any()),
      optional("providerName") => String.t(),
      required("connectionId") => String.t()
    }
  """

  @spec describe_connection_loa(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_connection_loa_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_connection_loa_errors()}

  def describe_connection_loa(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeConnectionLoa", input, options)
  end

  @doc """
  Displays the specified connection or all connections in this Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DescribeConnections&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_connections_request`)
    %{
      optional("connectionId") => String.t()
    }
  """

  @spec describe_connections(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, connections(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_connections_errors()}

  def describe_connections(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeConnections", input, options)
  end

  @doc """
  Deprecated. Use `DescribeHostedConnections` instead. Lists the connections that
  have been provisioned on the specified interconnect.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DescribeConnectionsOnInterconnect&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_connections_on_interconnect_request`)
    %{
      required("interconnectId") => String.t()
    }
  """

  @spec describe_connections_on_interconnect(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, connections(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_connections_on_interconnect_errors()}

  def describe_connections_on_interconnect(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeConnectionsOnInterconnect", input, options)
  end

  @doc """
  Get and view a list of customer agreements, along with their signed status and
  whether the customer is an NNIPartner, NNIPartnerV2, or a nonPartner.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DescribeCustomerMetadata&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:%{}`)
  """

  @spec describe_customer_metadata(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_customer_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_customer_metadata_errors()}

  def describe_customer_metadata(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCustomerMetadata", input, options)
  end

  @doc """
  Describes one or more association proposals for connection between a virtual
  private gateway or transit gateway and a Direct Connect gateway.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DescribeDirectConnectGatewayAssociationProposals&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_direct_connect_gateway_association_proposals_request`)
    %{
      optional("associatedGatewayId") => String.t(),
      optional("directConnectGatewayId") => String.t(),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      optional("proposalId") => String.t()
    }
  """

  @spec describe_direct_connect_gateway_association_proposals(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, describe_direct_connect_gateway_association_proposals_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_direct_connect_gateway_association_proposals_errors()}

  def describe_direct_connect_gateway_association_proposals(
        %Client{} = client,
        input,
        options \\ []
      )
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "DescribeDirectConnectGatewayAssociationProposals",
      input,
      options
    )
  end

  @doc """
  Lists the associations between your Direct Connect gateways and virtual private
  gateways and transit gateways. You must specify one of the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DescribeDirectConnectGatewayAssociations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_direct_connect_gateway_associations_request`)
    %{
      optional("associatedGatewayId") => String.t(),
      optional("associationId") => String.t(),
      optional("directConnectGatewayId") => String.t(),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      optional("virtualGatewayId") => String.t()
    }
  """

  @spec describe_direct_connect_gateway_associations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_direct_connect_gateway_associations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_direct_connect_gateway_associations_errors()}

  def describe_direct_connect_gateway_associations(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDirectConnectGatewayAssociations", input, options)
  end

  @doc """
  Lists the attachments between your Direct Connect gateways and virtual
  interfaces. You must specify a Direct Connect gateway, a virtual interface, or
  both. If you specify a Direct Connect gateway, the response contains all
  virtual interfaces attached to the Direct Connect gateway. If you specify a
  virtual interface, the response contains all Direct Connect gateways attached
  to the virtual interface. If you specify both, the response contains the
  attachment between the Direct Connect gateway and the virtual interface.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DescribeDirectConnectGatewayAttachments&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_direct_connect_gateway_attachments_request`)
    %{
      optional("directConnectGatewayId") => String.t(),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      optional("virtualInterfaceId") => String.t()
    }
  """

  @spec describe_direct_connect_gateway_attachments(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_direct_connect_gateway_attachments_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_direct_connect_gateway_attachments_errors()}

  def describe_direct_connect_gateway_attachments(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDirectConnectGatewayAttachments", input, options)
  end

  @doc """
  Lists all your Direct Connect gateways or only the specified Direct Connect
  gateway. Deleted Direct Connect gateways are not returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DescribeDirectConnectGateways&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_direct_connect_gateways_request`)
    %{
      optional("directConnectGatewayId") => String.t(),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t()
    }
  """

  @spec describe_direct_connect_gateways(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_direct_connect_gateways_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_direct_connect_gateways_errors()}

  def describe_direct_connect_gateways(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDirectConnectGateways", input, options)
  end

  @doc """
  Lists the hosted connections that have been provisioned on the specified
  interconnect or link aggregation group (LAG).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DescribeHostedConnections&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_hosted_connections_request`)
    %{
      required("connectionId") => String.t()
    }
  """

  @spec describe_hosted_connections(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, connections(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_hosted_connections_errors()}

  def describe_hosted_connections(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeHostedConnections", input, options)
  end

  @doc """
  Deprecated. Use `DescribeLoa` instead. Gets the LOA-CFA for the specified
  interconnect.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DescribeInterconnectLoa&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_interconnect_loa_request`)
    %{
      optional("loaContentType") => list(any()),
      optional("providerName") => String.t(),
      required("interconnectId") => String.t()
    }
  """

  @spec describe_interconnect_loa(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_interconnect_loa_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_interconnect_loa_errors()}

  def describe_interconnect_loa(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeInterconnectLoa", input, options)
  end

  @doc """
  Lists the interconnects owned by the Amazon Web Services account or only the
  specified interconnect.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DescribeInterconnects&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_interconnects_request`)
    %{
      optional("interconnectId") => String.t()
    }
  """

  @spec describe_interconnects(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, interconnects(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_interconnects_errors()}

  def describe_interconnects(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeInterconnects", input, options)
  end

  @doc """
  Describes all your link aggregation groups (LAG) or the specified LAG.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DescribeLags&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_lags_request`)
    %{
      optional("lagId") => String.t()
    }
  """

  @spec describe_lags(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, lags(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_lags_errors()}

  def describe_lags(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLags", input, options)
  end

  @doc """
  Gets the LOA-CFA for a connection, interconnect, or link aggregation group
  (LAG).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DescribeLoa&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_loa_request`)
    %{
      optional("loaContentType") => list(any()),
      optional("providerName") => String.t(),
      required("connectionId") => String.t()
    }
  """

  @spec describe_loa(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, loa(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_loa_errors()}

  def describe_loa(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLoa", input, options)
  end

  @doc """
  Lists the Direct Connect locations in the current Amazon Web Services Region.
  These are the locations that can be selected when calling `CreateConnection`
  or `CreateInterconnect`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DescribeLocations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:%{}`)
  """

  @spec describe_locations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, locations(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_locations_errors()}

  def describe_locations(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLocations", input, options)
  end

  @doc """
  Details about the router.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DescribeRouterConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_router_configuration_request`)
    %{
      optional("routerTypeIdentifier") => String.t(),
      required("virtualInterfaceId") => String.t()
    }
  """

  @spec describe_router_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_router_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_router_configuration_errors()}

  def describe_router_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRouterConfiguration", input, options)
  end

  @doc """
  Describes the tags associated with the specified Direct Connect resources.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DescribeTags&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_tags_request`)
    %{
      required("resourceArns") => list(String.t()())
    }
  """

  @spec describe_tags(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_tags_errors()}

  def describe_tags(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTags", input, options)
  end

  @doc """
  Deprecated. Use `DescribeVpnGateways` instead. See
  [DescribeVPNGateways](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnGateways.html)
  in the *Amazon Elastic Compute Cloud API Reference*. Lists the virtual private
  gateways owned by the Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DescribeVirtualGateways&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:%{}`)
  """

  @spec describe_virtual_gateways(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, virtual_gateways(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_virtual_gateways_errors()}

  def describe_virtual_gateways(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeVirtualGateways", input, options)
  end

  @doc """
  Displays all virtual interfaces for an Amazon Web Services account. Virtual
  interfaces deleted fewer than 15 minutes before you make the request are also
  returned. If you specify a connection ID, only the virtual interfaces
  associated with the connection are returned. If you specify a virtual
  interface ID, then only a single virtual interface is returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DescribeVirtualInterfaces&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_virtual_interfaces_request`)
    %{
      optional("connectionId") => String.t(),
      optional("virtualInterfaceId") => String.t()
    }
  """

  @spec describe_virtual_interfaces(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, virtual_interfaces(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_virtual_interfaces_errors()}

  def describe_virtual_interfaces(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeVirtualInterfaces", input, options)
  end

  @doc """
  Disassociates a connection from a link aggregation group (LAG). The connection
  is interrupted and re-established as a standalone connection (the connection
  is not deleted; to delete the connection, use the `DeleteConnection` request).
  If the LAG has associated virtual interfaces or hosted connections, they
  remain associated with the LAG. A disassociated connection owned by an Direct
  Connect Partner is automatically converted to an interconnect.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DisassociateConnectionFromLag&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disassociate_connection_from_lag_request`)
    %{
      required("connectionId") => String.t(),
      required("lagId") => String.t()
    }
  """

  @spec disassociate_connection_from_lag(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, connection(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_connection_from_lag_errors()}

  def disassociate_connection_from_lag(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateConnectionFromLag", input, options)
  end

  @doc """
  Removes the association between a MAC Security (MACsec) security key and an
  Direct Connect dedicated connection.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20DisassociateMacSecKey&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disassociate_mac_sec_key_request`)
    %{
      required("connectionId") => String.t(),
      required("secretARN") => String.t()
    }
  """

  @spec disassociate_mac_sec_key(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disassociate_mac_sec_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_mac_sec_key_errors()}

  def disassociate_mac_sec_key(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateMacSecKey", input, options)
  end

  @doc """
  Lists the virtual interface failover test history.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20ListVirtualInterfaceTestHistory&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_virtual_interface_test_history_request`)
    %{
      optional("bgpPeers") => list(String.t()()),
      optional("maxResults") => integer(),
      optional("nextToken") => String.t(),
      optional("status") => String.t(),
      optional("testId") => String.t(),
      optional("virtualInterfaceId") => String.t()
    }
  """

  @spec list_virtual_interface_test_history(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_virtual_interface_test_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_virtual_interface_test_history_errors()}

  def list_virtual_interface_test_history(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListVirtualInterfaceTestHistory", input, options)
  end

  @doc """
  Starts the virtual interface failover test that verifies your configuration
  meets your resiliency requirements by placing the BGP peering session in the
  DOWN state. You can then send traffic to verify that there are no outages. You
  can run the test on public, private, transit, and hosted virtual interfaces.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20StartBgpFailoverTest&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:start_bgp_failover_test_request`)
    %{
      optional("bgpPeers") => list(String.t()()),
      optional("testDurationInMinutes") => integer(),
      required("virtualInterfaceId") => String.t()
    }
  """

  @spec start_bgp_failover_test(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, start_bgp_failover_test_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_bgp_failover_test_errors()}

  def start_bgp_failover_test(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartBgpFailoverTest", input, options)
  end

  @doc """
  Stops the virtual interface failover test.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20StopBgpFailoverTest&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:stop_bgp_failover_test_request`)
    %{
      required("virtualInterfaceId") => String.t()
    }
  """

  @spec stop_bgp_failover_test(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, stop_bgp_failover_test_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_bgp_failover_test_errors()}

  def stop_bgp_failover_test(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopBgpFailoverTest", input, options)
  end

  @doc """
  Adds the specified tags to the specified Direct Connect resource. Each resource
  can have a maximum of 50 tags.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20TagResource&this_doc_guide=API%2520Reference)

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
  Removes one or more tags from the specified Direct Connect resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20UntagResource&this_doc_guide=API%2520Reference)

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
  Updates the Direct Connect dedicated connection configuration. You can update
  the following parameters for a connection:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20UpdateConnection&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_connection_request`)
    %{
      optional("connectionName") => String.t(),
      optional("encryptionMode") => String.t(),
      required("connectionId") => String.t()
    }
  """

  @spec update_connection(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, connection(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_connection_errors()}

  def update_connection(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateConnection", input, options)
  end

  @doc """
  Updates the name of a current Direct Connect gateway.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20UpdateDirectConnectGateway&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_direct_connect_gateway_request`)
    %{
      required("directConnectGatewayId") => String.t(),
      required("newDirectConnectGatewayName") => String.t()
    }
  """

  @spec update_direct_connect_gateway(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_direct_connect_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_direct_connect_gateway_errors()}

  def update_direct_connect_gateway(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDirectConnectGateway", input, options)
  end

  @doc """
  Updates the specified attributes of the Direct Connect gateway association.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20UpdateDirectConnectGatewayAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_direct_connect_gateway_association_request`)
    %{
      optional("addAllowedPrefixesToDirectConnectGateway") => list(route_filter_prefix()()),
      optional("associationId") => String.t(),
      optional("removeAllowedPrefixesToDirectConnectGateway") => list(route_filter_prefix()())
    }
  """

  @spec update_direct_connect_gateway_association(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_direct_connect_gateway_association_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_direct_connect_gateway_association_errors()}

  def update_direct_connect_gateway_association(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDirectConnectGatewayAssociation", input, options)
  end

  @doc """
  Updates the attributes of the specified link aggregation group (LAG). You can
  update the following LAG attributes:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20UpdateLag&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_lag_request`)
    %{
      optional("encryptionMode") => String.t(),
      optional("lagName") => String.t(),
      optional("minimumLinks") => integer(),
      required("lagId") => String.t()
    }
  """

  @spec update_lag(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, lag(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_lag_errors()}

  def update_lag(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateLag", input, options)
  end

  @doc """
  Updates the specified attributes of the specified virtual private interface.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=directconnect%20UpdateVirtualInterfaceAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_virtual_interface_attributes_request`)
    %{
      optional("enableSiteLink") => boolean(),
      optional("mtu") => integer(),
      optional("virtualInterfaceName") => String.t(),
      required("virtualInterfaceId") => String.t()
    }
  """

  @spec update_virtual_interface_attributes(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, virtual_interface(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_virtual_interface_attributes_errors()}

  def update_virtual_interface_attributes(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateVirtualInterfaceAttributes", input, options)
  end
end
