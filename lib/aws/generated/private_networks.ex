# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PrivateNetworks do
  @moduledoc """
  Amazon Web Services Private 5G is a managed service that makes it easy to
  deploy, operate, and scale your own private mobile network at your on-premises
  location. Private 5G provides the pre-configured hardware and software for
  mobile networks, helps automate setup, and scales capacity on demand to
  support additional devices as needed.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_orders_response() :: %{
        optional("nextToken") => String.t(),
        optional("orders") => list(order()())
      }
      
  """
  @type list_orders_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_network_site_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        required("networkSiteArn") => String.t()
      }
      
  """
  @type update_network_site_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_network_response() :: %{
        optional("tags") => map(),
        required("network") => network()
      }
      
  """
  @type create_network_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_networks_response() :: %{
        optional("networks") => list(network()()),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_networks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ordered_resource_definition() :: %{
        "commitmentConfiguration" => commitment_configuration(),
        "count" => [integer()],
        "type" => String.t()
      }
      
  """
  @type ordered_resource_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tracking_information() :: %{
        "trackingNumber" => [String.t()]
      }
      
  """
  @type tracking_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_network_request() :: %{}
      
  """
  @type get_network_request() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      site_plan() :: %{
        "options" => list(name_value_pair()()),
        "resourceDefinitions" => list(network_resource_definition()())
      }
      
  """
  @type site_plan() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_network_resource_request() :: %{}
      
  """
  @type get_network_resource_request() :: %{}

  @typedoc """

  ## Example:
      
      list_device_identifiers_response() :: %{
        optional("deviceIdentifiers") => list(device_identifier()()),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_device_identifiers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      acknowledge_order_receipt_request() :: %{
        required("orderArn") => String.t()
      }
      
  """
  @type acknowledge_order_receipt_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_identifier() :: %{
        "createdAt" => non_neg_integer(),
        "deviceIdentifierArn" => String.t(),
        "iccid" => [String.t()],
        "imsi" => String.t(),
        "networkArn" => String.t(),
        "orderArn" => [String.t()],
        "status" => String.t(),
        "trafficGroupArn" => String.t(),
        "vendor" => [String.t()]
      }
      
  """
  @type device_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_network_resource_update_response() :: %{
        optional("networkResource") => network_resource()
      }
      
  """
  @type start_network_resource_update_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_network_site_response() :: %{
        optional("networkSite") => network_site(),
        optional("tags") => map()
      }
      
  """
  @type get_network_site_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      position() :: %{
        "elevation" => [float()],
        "elevationReference" => String.t(),
        "elevationUnit" => String.t(),
        "latitude" => [float()],
        "longitude" => [float()]
      }
      
  """
  @type position() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configure_access_point_response() :: %{
        required("accessPoint") => network_resource()
      }
      
  """
  @type configure_access_point_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_network_response() :: %{
        required("network") => network()
      }
      
  """
  @type delete_network_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_device_identifier_response() :: %{
        optional("deviceIdentifier") => device_identifier(),
        optional("tags") => map()
      }
      
  """
  @type get_device_identifier_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_network_sites_request() :: %{
        optional("filters") => map(),
        optional("maxResults") => [integer()],
        optional("startToken") => String.t(),
        required("networkArn") => String.t()
      }
      
  """
  @type list_network_sites_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      name_value_pair() :: %{
        "name" => [String.t()],
        "value" => [String.t()]
      }
      
  """
  @type name_value_pair() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_resource_definition() :: %{
        "count" => [integer()],
        "options" => list(name_value_pair()()),
        "type" => String.t()
      }
      
  """
  @type network_resource_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_site() :: %{
        "availabilityZone" => [String.t()],
        "availabilityZoneId" => [String.t()],
        "createdAt" => non_neg_integer(),
        "currentPlan" => site_plan(),
        "description" => String.t(),
        "networkArn" => String.t(),
        "networkSiteArn" => String.t(),
        "networkSiteName" => String.t(),
        "pendingPlan" => site_plan(),
        "status" => String.t(),
        "statusReason" => [String.t()]
      }
      
  """
  @type network_site() :: %{String.t() => any()}

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
      
      configure_access_point_request() :: %{
        optional("cpiSecretKey") => String.t(),
        optional("cpiUserId") => String.t(),
        optional("cpiUserPassword") => String.t(),
        optional("cpiUsername") => String.t(),
        optional("position") => position(),
        required("accessPointArn") => String.t()
      }
      
  """
  @type configure_access_point_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_network_site_response() :: %{
        optional("networkSite") => network_site(),
        optional("tags") => map()
      }
      
  """
  @type update_network_site_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_network_request() :: %{
        optional("clientToken") => String.t()
      }
      
  """
  @type delete_network_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      return_information() :: %{
        "replacementOrderArn" => String.t(),
        "returnReason" => [String.t()],
        "shippingAddress" => address(),
        "shippingLabel" => [String.t()]
      }
      
  """
  @type return_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_networks_request() :: %{
        optional("filters") => map(),
        optional("maxResults") => [integer()],
        optional("startToken") => String.t()
      }
      
  """
  @type list_networks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activate_network_site_response() :: %{
        optional("networkSite") => network_site()
      }
      
  """
  @type activate_network_site_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_order_request() :: %{}
      
  """
  @type get_order_request() :: %{}

  @typedoc """

  ## Example:
      
      create_network_site_response() :: %{
        optional("networkSite") => network_site(),
        optional("tags") => map()
      }
      
  """
  @type create_network_site_response() :: %{String.t() => any()}

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
      
      delete_network_site_request() :: %{
        optional("clientToken") => String.t()
      }
      
  """
  @type delete_network_site_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deactivate_device_identifier_response() :: %{
        required("deviceIdentifier") => device_identifier()
      }
      
  """
  @type deactivate_device_identifier_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      order() :: %{
        "acknowledgmentStatus" => String.t(),
        "createdAt" => non_neg_integer(),
        "networkArn" => String.t(),
        "networkSiteArn" => String.t(),
        "orderArn" => String.t(),
        "orderedResources" => list(ordered_resource_definition()()),
        "shippingAddress" => address(),
        "trackingInformation" => list(tracking_information()())
      }
      
  """
  @type order() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_network_resource_response() :: %{
        optional("tags") => map(),
        required("networkResource") => network_resource()
      }
      
  """
  @type get_network_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ping_response() :: %{
        optional("status") => [String.t()]
      }
      
  """
  @type ping_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activate_device_identifier_response() :: %{
        optional("tags") => map(),
        required("deviceIdentifier") => device_identifier()
      }
      
  """
  @type activate_device_identifier_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      acknowledge_order_receipt_response() :: %{
        required("order") => order()
      }
      
  """
  @type acknowledge_order_receipt_response() :: %{String.t() => any()}

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
      
      create_network_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("tags") => map(),
        required("networkName") => String.t()
      }
      
  """
  @type create_network_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_network_resources_request() :: %{
        optional("filters") => map(),
        optional("maxResults") => [integer()],
        optional("startToken") => String.t(),
        required("networkArn") => String.t()
      }
      
  """
  @type list_network_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_network_resources_response() :: %{
        optional("networkResources") => list(network_resource()()),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_network_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deactivate_device_identifier_request() :: %{
        optional("clientToken") => String.t(),
        required("deviceIdentifierArn") => String.t()
      }
      
  """
  @type deactivate_device_identifier_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_device_identifiers_request() :: %{
        optional("filters") => map(),
        optional("maxResults") => [integer()],
        optional("startToken") => String.t(),
        required("networkArn") => String.t()
      }
      
  """
  @type list_device_identifiers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activate_device_identifier_request() :: %{
        optional("clientToken") => String.t(),
        required("deviceIdentifierArn") => String.t()
      }
      
  """
  @type activate_device_identifier_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      commitment_information() :: %{
        "commitmentConfiguration" => commitment_configuration(),
        "expiresOn" => non_neg_integer(),
        "startAt" => non_neg_integer()
      }
      
  """
  @type commitment_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_network_response() :: %{
        optional("tags") => map(),
        required("network") => network()
      }
      
  """
  @type get_network_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      network() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "networkArn" => String.t(),
        "networkName" => String.t(),
        "status" => String.t(),
        "statusReason" => [String.t()]
      }
      
  """
  @type network() :: %{String.t() => any()}

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
      
      throttling_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activate_network_site_request() :: %{
        optional("clientToken") => String.t(),
        optional("commitmentConfiguration") => commitment_configuration(),
        required("networkSiteArn") => String.t(),
        required("shippingAddress") => address()
      }
      
  """
  @type activate_network_site_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_device_identifier_request() :: %{}
      
  """
  @type get_device_identifier_request() :: %{}

  @typedoc """

  ## Example:
      
      network_resource() :: %{
        "attributes" => list(name_value_pair()()),
        "commitmentInformation" => commitment_information(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "health" => String.t(),
        "model" => [String.t()],
        "networkArn" => String.t(),
        "networkResourceArn" => String.t(),
        "networkSiteArn" => String.t(),
        "orderArn" => String.t(),
        "position" => position(),
        "returnInformation" => return_information(),
        "serialNumber" => [String.t()],
        "status" => String.t(),
        "statusReason" => [String.t()],
        "type" => String.t(),
        "vendor" => [String.t()]
      }
      
  """
  @type network_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_network_site_request() :: %{}
      
  """
  @type get_network_site_request() :: %{}

  @typedoc """

  ## Example:
      
      start_network_resource_update_request() :: %{
        optional("commitmentConfiguration") => commitment_configuration(),
        optional("returnReason") => [String.t()],
        optional("shippingAddress") => address(),
        required("networkResourceArn") => String.t(),
        required("updateType") => String.t()
      }
      
  """
  @type start_network_resource_update_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      address() :: %{
        "city" => String.t(),
        "company" => String.t(),
        "country" => String.t(),
        "emailAddress" => String.t(),
        "name" => String.t(),
        "phoneNumber" => String.t(),
        "postalCode" => String.t(),
        "stateOrProvince" => String.t(),
        "street1" => String.t(),
        "street2" => String.t(),
        "street3" => String.t()
      }
      
  """
  @type address() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_order_response() :: %{
        optional("tags") => map(),
        required("order") => order()
      }
      
  """
  @type get_order_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      commitment_configuration() :: %{
        "automaticRenewal" => [boolean()],
        "commitmentLength" => String.t()
      }
      
  """
  @type commitment_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_network_site_plan_request() :: %{
        optional("clientToken") => String.t(),
        required("networkSiteArn") => String.t(),
        required("pendingPlan") => site_plan()
      }
      
  """
  @type update_network_site_plan_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_orders_request() :: %{
        optional("filters") => map(),
        optional("maxResults") => [integer()],
        optional("startToken") => String.t(),
        required("networkArn") => String.t()
      }
      
  """
  @type list_orders_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_network_site_request() :: %{
        optional("availabilityZone") => [String.t()],
        optional("availabilityZoneId") => [String.t()],
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("pendingPlan") => site_plan(),
        optional("tags") => map(),
        required("networkArn") => String.t(),
        required("networkSiteName") => String.t()
      }
      
  """
  @type create_network_site_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_network_site_response() :: %{
        optional("networkSite") => network_site()
      }
      
  """
  @type delete_network_site_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_network_sites_response() :: %{
        optional("networkSites") => list(network_site()()),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_network_sites_response() :: %{String.t() => any()}

  @type acknowledge_order_receipt_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type activate_device_identifier_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type activate_network_site_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type configure_access_point_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type create_network_errors() ::
          limit_exceeded_exception() | validation_exception() | internal_server_exception()

  @type create_network_site_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type deactivate_device_identifier_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type delete_network_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_network_site_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_device_identifier_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_network_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_network_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_network_site_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_order_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_device_identifiers_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_network_resources_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_network_sites_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_networks_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_orders_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type ping_errors() :: internal_server_exception()

  @type start_network_resource_update_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

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

  @type update_network_site_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_network_site_plan_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2021-12-03",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "private-networks",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "PrivateNetworks",
      signature_version: "v4",
      signing_name: "private-networks",
      target_prefix: nil
    }
  end

  @doc """
  Acknowledges that the specified network order was received.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20AcknowledgeOrderReceipt&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec acknowledge_order_receipt(AWS.Client.t(), Keyword.t()) ::
          {:ok, acknowledge_order_receipt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, acknowledge_order_receipt_errors()}
  def acknowledge_order_receipt(%Client{} = client, options \\ []) do
    url_path = "/v1/orders/acknowledge"

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
  Activates the specified device identifier.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20ActivateDeviceIdentifier&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec activate_device_identifier(AWS.Client.t(), Keyword.t()) ::
          {:ok, activate_device_identifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, activate_device_identifier_errors()}
  def activate_device_identifier(%Client{} = client, options \\ []) do
    url_path = "/v1/device-identifiers/activate"

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
  Activates the specified network site.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20ActivateNetworkSite&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec activate_network_site(AWS.Client.t(), Keyword.t()) ::
          {:ok, activate_network_site_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, activate_network_site_errors()}
  def activate_network_site(%Client{} = client, options \\ []) do
    url_path = "/v1/network-sites/activate"

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
  Configures the specified network resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20ConfigureAccessPoint&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec configure_access_point(AWS.Client.t(), Keyword.t()) ::
          {:ok, configure_access_point_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, configure_access_point_errors()}
  def configure_access_point(%Client{} = client, options \\ []) do
    url_path = "/v1/network-resources/configure"

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
  Creates a network.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20CreateNetwork&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_network(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_network_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_network_errors()}
  def create_network(%Client{} = client, options \\ []) do
    url_path = "/v1/networks"

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
  Creates a network site.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20CreateNetworkSite&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_network_site(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_network_site_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_network_site_errors()}
  def create_network_site(%Client{} = client, options \\ []) do
    url_path = "/v1/network-sites"

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
  Deactivates the specified device identifier.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20DeactivateDeviceIdentifier&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec deactivate_device_identifier(AWS.Client.t(), Keyword.t()) ::
          {:ok, deactivate_device_identifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deactivate_device_identifier_errors()}
  def deactivate_device_identifier(%Client{} = client, options \\ []) do
    url_path = "/v1/device-identifiers/deactivate"

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
  Deletes the specified network. You must delete network sites before you delete
  the network. For more information, see
  [DeleteNetworkSite](https://docs.aws.amazon.com/private-networks/latest/APIReference/API_DeleteNetworkSite.html)
  in the *API Reference for Amazon Web Services Private 5G*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20DeleteNetwork&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:network_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    network.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. For more information, see
    How to ensure idempotency.
  """
  @spec delete_network(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_network_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_network_errors()}
  def delete_network(%Client{} = client, network_arn, options \\ []) do
    url_path = "/v1/networks/#{AWS.Util.encode_uri(network_arn)}"

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
  Deletes the specified network site. Return the hardware after you delete the
  network site. You are responsible for minimum charges. For more information,
  see [Hardware
  returns](https://docs.aws.amazon.com/private-networks/latest/userguide/hardware-maintenance.html)
  in the *Amazon Web Services Private 5G User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20DeleteNetworkSite&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:network_site_arn` (`t:string` required) The Amazon Resource Name (ARN) of
    the network site.

  ## Keyword parameters:
  * `:client_token` (`t:string`) Unique, case-sensitive identifier that you
    provide to ensure the idempotency of the request. For more information, see
    How to ensure idempotency.
  """
  @spec delete_network_site(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_network_site_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_network_site_errors()}
  def delete_network_site(%Client{} = client, network_site_arn, options \\ []) do
    url_path = "/v1/network-sites/#{AWS.Util.encode_uri(network_site_arn)}"

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
  Gets the specified device identifier.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20GetDeviceIdentifier&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:device_identifier_arn` (`t:string` required) The Amazon Resource Name (ARN)
    of the device identifier.
  """
  @spec get_device_identifier(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_device_identifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_device_identifier_errors()}
  def get_device_identifier(%Client{} = client, device_identifier_arn, options \\ []) do
    url_path = "/v1/device-identifiers/#{AWS.Util.encode_uri(device_identifier_arn)}"

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
  Gets the specified network.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20GetNetwork&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:network_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    network.
  """
  @spec get_network(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_network_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_network_errors()}
  def get_network(%Client{} = client, network_arn, options \\ []) do
    url_path = "/v1/networks/#{AWS.Util.encode_uri(network_arn)}"

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
  Gets the specified network resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20GetNetworkResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:network_resource_arn` (`t:string` required) The Amazon Resource Name (ARN)
    of the network resource.
  """
  @spec get_network_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_network_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_network_resource_errors()}
  def get_network_resource(%Client{} = client, network_resource_arn, options \\ []) do
    url_path = "/v1/network-resources/#{AWS.Util.encode_uri(network_resource_arn)}"

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
  Gets the specified network site.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20GetNetworkSite&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:network_site_arn` (`t:string` required) The Amazon Resource Name (ARN) of
    the network site.
  """
  @spec get_network_site(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_network_site_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_network_site_errors()}
  def get_network_site(%Client{} = client, network_site_arn, options \\ []) do
    url_path = "/v1/network-sites/#{AWS.Util.encode_uri(network_site_arn)}"

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
  Gets the specified order.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20GetOrder&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:order_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    order.
  """
  @spec get_order(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_order_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_order_errors()}
  def get_order(%Client{} = client, order_arn, options \\ []) do
    url_path = "/v1/orders/#{AWS.Util.encode_uri(order_arn)}"

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
  Lists device identifiers. Add filters to your request to return a more specific
  list of results. Use filters to match the Amazon Resource Name (ARN) of an
  order, the status of device identifiers, or the ARN of the traffic group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20ListDeviceIdentifiers&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_device_identifiers(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_device_identifiers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_device_identifiers_errors()}
  def list_device_identifiers(%Client{} = client, options \\ []) do
    url_path = "/v1/device-identifiers/list"

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
  Lists network resources. Add filters to your request to return a more specific
  list of results. Use filters to match the Amazon Resource Name (ARN) of an
  order or the status of network resources.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20ListNetworkResources&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_network_resources(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_network_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_network_resources_errors()}
  def list_network_resources(%Client{} = client, options \\ []) do
    url_path = "/v1/network-resources"

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
  Lists network sites. Add filters to your request to return a more specific list
  of results. Use filters to match the status of the network site.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20ListNetworkSites&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_network_sites(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_network_sites_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_network_sites_errors()}
  def list_network_sites(%Client{} = client, options \\ []) do
    url_path = "/v1/network-sites/list"

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
  Lists networks. Add filters to your request to return a more specific list of
  results. Use filters to match the status of the network.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20ListNetworks&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_networks(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_networks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_networks_errors()}
  def list_networks(%Client{} = client, options \\ []) do
    url_path = "/v1/networks/list"

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
  Lists orders. Add filters to your request to return a more specific list of
  results. Use filters to match the Amazon Resource Name (ARN) of the network
  site or the status of the order.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20ListOrders&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_orders(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_orders_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_orders_errors()}
  def list_orders(%Client{} = client, options \\ []) do
    url_path = "/v1/orders/list"

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
  Lists the tags for the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20ListTagsForResource&this_doc_guide=API%2520Reference)

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
  Checks the health of the service.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20Ping&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec ping(AWS.Client.t(), Keyword.t()) ::
          {:ok, ping_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, ping_errors()}
  def ping(%Client{} = client, options \\ []) do
    url_path = "/ping"

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
  Use this action to do the following tasks:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20StartNetworkResourceUpdate&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec start_network_resource_update(AWS.Client.t(), Keyword.t()) ::
          {:ok, start_network_resource_update_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_network_resource_update_errors()}
  def start_network_resource_update(%Client{} = client, options \\ []) do
    url_path = "/v1/network-resources/update"

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

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20TagResource&this_doc_guide=API%2520Reference)

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

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    resource.
  * `:tag_keys` (`t:list[com.amazonaws.privatenetworks#TagKey]` required) The tag
    keys.
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
  Updates the specified network site.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20UpdateNetworkSite&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec update_network_site(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_network_site_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_network_site_errors()}
  def update_network_site(%Client{} = client, options \\ []) do
    url_path = "/v1/network-sites/site"

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
  Updates the specified network site plan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=privatenetworks%20UpdateNetworkSitePlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec update_network_site_plan(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_network_site_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_network_site_plan_errors()}
  def update_network_site_plan(%Client{} = client, options \\ []) do
    url_path = "/v1/network-sites/plan"

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
end
