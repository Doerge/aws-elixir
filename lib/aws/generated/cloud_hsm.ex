# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudHSM do
  @moduledoc """
  AWS CloudHSM Service
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      delete_hsm_request() :: %{
        required("HsmArn") => String.t()
      }
      
  """
  @type delete_hsm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hsm_response() :: %{
        "HsmArn" => String.t()
      }
      
  """
  @type create_hsm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_hapg_response() :: %{
        "HapgArn" => String.t()
      }
      
  """
  @type modify_hapg_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_luna_client_request() :: %{
        required("Certificate") => String.t(),
        required("ClientArn") => String.t()
      }
      
  """
  @type modify_luna_client_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_hsm_request() :: %{
        optional("EniIp") => String.t(),
        optional("ExternalId") => String.t(),
        optional("IamRoleArn") => String.t(),
        optional("SubnetId") => String.t(),
        optional("SyslogIp") => String.t(),
        required("HsmArn") => String.t()
      }
      
  """
  @type modify_hsm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hapgs_request() :: %{
        optional("NextToken") => String.t()
      }
      
  """
  @type list_hapgs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_tags_from_resource_response() :: %{
        "Status" => String.t()
      }
      
  """
  @type remove_tags_from_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_config_request() :: %{
        required("ClientArn") => String.t(),
        required("ClientVersion") => list(any()),
        required("HapgList") => list(String.t()())
      }
      
  """
  @type get_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hsms_request() :: %{
        optional("NextToken") => String.t()
      }
      
  """
  @type list_hsms_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_luna_clients_request() :: %{
        optional("NextToken") => String.t()
      }
      
  """
  @type list_luna_clients_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_config_response() :: %{
        "ConfigCred" => String.t(),
        "ConfigFile" => String.t(),
        "ConfigType" => String.t()
      }
      
  """
  @type get_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_hapg_request() :: %{
        required("HapgArn") => String.t()
      }
      
  """
  @type describe_hapg_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_luna_client_request() :: %{
        required("ClientArn") => String.t()
      }
      
  """
  @type delete_luna_client_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_to_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("TagList") => list(tag()())
      }
      
  """
  @type add_tags_to_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_hsm_response() :: %{
        "AvailabilityZone" => String.t(),
        "EniId" => String.t(),
        "EniIp" => String.t(),
        "HsmArn" => String.t(),
        "HsmType" => String.t(),
        "IamRoleArn" => String.t(),
        "Partitions" => list(String.t()()),
        "SerialNumber" => String.t(),
        "ServerCertLastUpdated" => String.t(),
        "ServerCertUri" => String.t(),
        "SoftwareVersion" => String.t(),
        "SshKeyLastUpdated" => String.t(),
        "SshPublicKey" => String.t(),
        "Status" => list(any()),
        "StatusDetails" => String.t(),
        "SubnetId" => String.t(),
        "SubscriptionEndDate" => String.t(),
        "SubscriptionStartDate" => String.t(),
        "SubscriptionType" => list(any()),
        "VendorName" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type describe_hsm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_luna_client_response() :: %{
        "Certificate" => String.t(),
        "CertificateFingerprint" => String.t(),
        "ClientArn" => String.t(),
        "Label" => String.t(),
        "LastModifiedTimestamp" => String.t()
      }
      
  """
  @type describe_luna_client_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_luna_client_response() :: %{
        "Status" => String.t()
      }
      
  """
  @type delete_luna_client_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_luna_client_response() :: %{
        "ClientArn" => String.t()
      }
      
  """
  @type create_luna_client_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_hsm_response() :: %{
        "Status" => String.t()
      }
      
  """
  @type delete_hsm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_hapg_request() :: %{
        required("HapgArn") => String.t()
      }
      
  """
  @type delete_hapg_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_luna_client_response() :: %{
        "ClientArn" => String.t()
      }
      
  """
  @type modify_luna_client_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_hapg_request() :: %{
        optional("Label") => String.t(),
        optional("PartitionSerialList") => list(String.t()()),
        required("HapgArn") => String.t()
      }
      
  """
  @type modify_hapg_request() :: %{String.t() => any()}

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
      
      invalid_request_exception() :: %{
        "message" => String.t(),
        "retryable" => boolean()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hapg_response() :: %{
        "HapgArn" => String.t()
      }
      
  """
  @type create_hapg_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hsm_request() :: %{
        optional("ClientToken") => String.t(),
        optional("EniIp") => String.t(),
        optional("ExternalId") => String.t(),
        optional("SyslogIp") => String.t(),
        required("IamRoleArn") => String.t(),
        required("SshKey") => String.t(),
        required("SubnetId") => String.t(),
        required("SubscriptionType") => list(any())
      }
      
  """
  @type create_hsm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "TagList" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_tags_from_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("TagKeyList") => list(String.t()())
      }
      
  """
  @type remove_tags_from_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_to_resource_response() :: %{
        "Status" => String.t()
      }
      
  """
  @type add_tags_to_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_hsm_internal_exception() :: %{
        "message" => String.t(),
        "retryable" => boolean()
      }
      
  """
  @type cloud_hsm_internal_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hapgs_response() :: %{
        "HapgList" => list(String.t()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_hapgs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_hsm_request() :: %{
        optional("HsmArn") => String.t(),
        optional("HsmSerialNumber") => String.t()
      }
      
  """
  @type describe_hsm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_available_zones_request() :: %{}
      
  """
  @type list_available_zones_request() :: %{}

  @typedoc """

  ## Example:
      
      cloud_hsm_service_exception() :: %{
        "message" => String.t(),
        "retryable" => boolean()
      }
      
  """
  @type cloud_hsm_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_luna_clients_response() :: %{
        "ClientList" => list(String.t()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_luna_clients_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_available_zones_response() :: %{
        "AZList" => list(String.t()())
      }
      
  """
  @type list_available_zones_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hapg_request() :: %{
        required("Label") => String.t()
      }
      
  """
  @type create_hapg_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hsms_response() :: %{
        "HsmList" => list(String.t()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_hsms_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_luna_client_request() :: %{
        optional("CertificateFingerprint") => String.t(),
        optional("ClientArn") => String.t()
      }
      
  """
  @type describe_luna_client_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_hapg_response() :: %{
        "Status" => String.t()
      }
      
  """
  @type delete_hapg_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_hapg_response() :: %{
        "HapgArn" => String.t(),
        "HapgSerial" => String.t(),
        "HsmsLastActionFailed" => list(String.t()()),
        "HsmsPendingDeletion" => list(String.t()()),
        "HsmsPendingRegistration" => list(String.t()()),
        "Label" => String.t(),
        "LastModifiedTimestamp" => String.t(),
        "PartitionSerialList" => list(String.t()()),
        "State" => list(any())
      }
      
  """
  @type describe_hapg_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_hsm_response() :: %{
        "HsmArn" => String.t()
      }
      
  """
  @type modify_hsm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_luna_client_request() :: %{
        optional("Label") => String.t(),
        required("Certificate") => String.t()
      }
      
  """
  @type create_luna_client_request() :: %{String.t() => any()}

  @type add_tags_to_resource_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type create_hapg_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type create_hsm_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type create_luna_client_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type delete_hapg_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type delete_hsm_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type delete_luna_client_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type describe_hapg_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type describe_hsm_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type describe_luna_client_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type get_config_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type list_available_zones_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type list_hapgs_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type list_hsms_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type list_luna_clients_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type list_tags_for_resource_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type modify_hapg_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type modify_hsm_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  @type modify_luna_client_errors() :: cloud_hsm_service_exception()

  @type remove_tags_from_resource_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_internal_exception()
          | invalid_request_exception()

  def metadata do
    %{
      api_version: "2014-05-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cloudhsm",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "CloudHSM",
      signature_version: "v4",
      signing_name: "cloudhsm",
      target_prefix: "CloudHsmFrontendService"
    }
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information, see
  [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the
  [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS
  CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). **For
  information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Adds or
  overwrites one or more tags for the specified AWS CloudHSM resource.
  """
  @spec add_tags_to_resource(AWS.Client.t(), add_tags_to_resource_request(), Keyword.t()) ::
          {:ok, add_tags_to_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_tags_to_resource_errors()}
  def add_tags_to_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddTagsToResource", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information, see
  [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the
  [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS
  CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). **For
  information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).
  """
  @spec create_hapg(AWS.Client.t(), create_hapg_request(), Keyword.t()) ::
          {:ok, create_hapg_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_hapg_errors()}
  def create_hapg(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateHapg", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information, see
  [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the
  [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS
  CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). **For
  information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Creates
  an uninitialized HSM instance. There is an upfront fee charged for each HSM
  instance that you create with the `CreateHsm` operation. If you accidentally
  provision an HSM and want to request a refund, delete the instance using the
  `DeleteHsm` operation, go to the [AWS Support
  Center](https://console.aws.amazon.com/support/home), create a new case, and
  select **Account and Billing Support**.
  """
  @spec create_hsm(AWS.Client.t(), create_hsm_request(), Keyword.t()) ::
          {:ok, create_hsm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_hsm_errors()}
  def create_hsm(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateHsm", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information, see
  [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the
  [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS
  CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). **For
  information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).
  """
  @spec create_luna_client(AWS.Client.t(), create_luna_client_request(), Keyword.t()) ::
          {:ok, create_luna_client_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_luna_client_errors()}
  def create_luna_client(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLunaClient", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information, see
  [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the
  [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS
  CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). **For
  information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).
  """
  @spec delete_hapg(AWS.Client.t(), delete_hapg_request(), Keyword.t()) ::
          {:ok, delete_hapg_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_hapg_errors()}
  def delete_hapg(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteHapg", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information, see
  [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the
  [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS
  CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). **For
  information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).
  """
  @spec delete_hsm(AWS.Client.t(), delete_hsm_request(), Keyword.t()) ::
          {:ok, delete_hsm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_hsm_errors()}
  def delete_hsm(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteHsm", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information, see
  [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the
  [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS
  CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). **For
  information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).
  """
  @spec delete_luna_client(AWS.Client.t(), delete_luna_client_request(), Keyword.t()) ::
          {:ok, delete_luna_client_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_luna_client_errors()}
  def delete_luna_client(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteLunaClient", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information, see
  [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the
  [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS
  CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). **For
  information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).
  """
  @spec describe_hapg(AWS.Client.t(), describe_hapg_request(), Keyword.t()) ::
          {:ok, describe_hapg_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_hapg_errors()}
  def describe_hapg(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeHapg", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information, see
  [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the
  [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS
  CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). **For
  information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).
  """
  @spec describe_hsm(AWS.Client.t(), describe_hsm_request(), Keyword.t()) ::
          {:ok, describe_hsm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_hsm_errors()}
  def describe_hsm(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeHsm", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information, see
  [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the
  [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS
  CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). **For
  information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).
  """
  @spec describe_luna_client(AWS.Client.t(), describe_luna_client_request(), Keyword.t()) ::
          {:ok, describe_luna_client_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_luna_client_errors()}
  def describe_luna_client(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLunaClient", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information, see
  [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the
  [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS
  CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). **For
  information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).
  """
  @spec get_config(AWS.Client.t(), get_config_request(), Keyword.t()) ::
          {:ok, get_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_config_errors()}
  def get_config(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetConfig", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information, see
  [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the
  [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS
  CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). **For
  information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).
  """
  @spec list_available_zones(AWS.Client.t(), list_available_zones_request(), Keyword.t()) ::
          {:ok, list_available_zones_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_available_zones_errors()}
  def list_available_zones(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAvailableZones", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information, see
  [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the
  [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS
  CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). **For
  information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Lists
  the high-availability partition groups for the account.
  """
  @spec list_hapgs(AWS.Client.t(), list_hapgs_request(), Keyword.t()) ::
          {:ok, list_hapgs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_hapgs_errors()}
  def list_hapgs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListHapgs", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information, see
  [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the
  [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS
  CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). **For
  information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).
  Retrieves the identifiers of all of the HSMs provisioned for the current
  customer.
  """
  @spec list_hsms(AWS.Client.t(), list_hsms_request(), Keyword.t()) ::
          {:ok, list_hsms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_hsms_errors()}
  def list_hsms(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListHsms", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information, see
  [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the
  [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS
  CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). **For
  information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Lists
  all of the clients.
  """
  @spec list_luna_clients(AWS.Client.t(), list_luna_clients_request(), Keyword.t()) ::
          {:ok, list_luna_clients_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_luna_clients_errors()}
  def list_luna_clients(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListLunaClients", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information, see
  [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the
  [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS
  CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). **For
  information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).
  """
  @spec list_tags_for_resource(AWS.Client.t(), list_tags_for_resource_request(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information, see
  [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the
  [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS
  CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). **For
  information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).
  """
  @spec modify_hapg(AWS.Client.t(), modify_hapg_request(), Keyword.t()) ::
          {:ok, modify_hapg_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_hapg_errors()}
  def modify_hapg(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyHapg", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information, see
  [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the
  [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS
  CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). **For
  information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).
  Modifies an HSM.
  """
  @spec modify_hsm(AWS.Client.t(), modify_hsm_request(), Keyword.t()) ::
          {:ok, modify_hsm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_hsm_errors()}
  def modify_hsm(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyHsm", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information, see
  [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the
  [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS
  CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). **For
  information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).
  Modifies the certificate used by the client.
  """
  @spec modify_luna_client(AWS.Client.t(), modify_luna_client_request(), Keyword.t()) ::
          {:ok, modify_luna_client_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_luna_client_errors()}
  def modify_luna_client(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyLunaClient", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information, see
  [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the
  [AWS CloudHSM Classic User
  Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS
  CloudHSM Classic API
  Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). **For
  information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Removes
  one or more tags from the specified AWS CloudHSM resource.
  """
  @spec remove_tags_from_resource(
          AWS.Client.t(),
          remove_tags_from_resource_request(),
          Keyword.t()
        ) ::
          {:ok, remove_tags_from_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_tags_from_resource_errors()}
  def remove_tags_from_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RemoveTagsFromResource", input, options)
  end
end
