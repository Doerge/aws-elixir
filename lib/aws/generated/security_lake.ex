# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SecurityLake do
  @moduledoc """
  Amazon Security Lake is a fully managed security data lake service. You can use
  Security Lake to automatically centralize security data from cloud,
  on-premises, and custom sources into a data lake that's stored in your Amazon
  Web Services account. Amazon Web Services Organizations is an account
  management service that lets you consolidate multiple Amazon Web Services
  accounts into an organization that you create and centrally manage. With
  Organizations, you can create member accounts and invite existing accounts to
  join your organization. Security Lake helps you analyze security data for a
  more complete understanding of your security posture across the entire
  organization. It can also help you improve the protection of your workloads,
  applications, and data. The data lake is backed by Amazon Simple Storage
  Service (Amazon S3) buckets, and you retain ownership over your data.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_data_lake_exceptions_response() :: %{
        "exceptions" => list(data_lake_exception()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_data_lake_exceptions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_aws_log_source_response() :: %{
        "failed" => list(String.t()())
      }
      
  """
  @type create_aws_log_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_subscriber_request() :: %{}
      
  """
  @type delete_subscriber_request() :: %{}

  @typedoc """

  ## Example:
      
      list_data_lakes_request() :: %{
        optional("regions") => list(String.t()())
      }
      
  """
  @type list_data_lakes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_lake_replication_configuration() :: %{
        "regions" => list(String.t()()),
        "roleArn" => String.t()
      }
      
  """
  @type data_lake_replication_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_custom_log_source_response() :: %{
        "source" => custom_log_source_resource()
      }
      
  """
  @type create_custom_log_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_log_source_attributes() :: %{
        "crawlerArn" => String.t(),
        "databaseArn" => String.t(),
        "tableArn" => String.t()
      }
      
  """
  @type custom_log_source_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_log_sources_request() :: %{
        optional("accounts") => list(String.t()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("regions") => list(String.t()()),
        optional("sources") => list(list()())
      }
      
  """
  @type list_log_sources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_data_lake_exception_subscription_response() :: %{}
      
  """
  @type update_data_lake_exception_subscription_response() :: %{}

  @typedoc """

  ## Example:
      
      update_subscriber_response() :: %{
        "subscriber" => subscriber_resource()
      }
      
  """
  @type update_subscriber_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_lake_sources_request() :: %{
        optional("accounts") => list(String.t()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type get_data_lake_sources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_lake_request() :: %{
        optional("tags") => list(tag()()),
        required("configurations") => list(data_lake_configuration()()),
        required("metaStoreManagerRoleArn") => String.t()
      }
      
  """
  @type create_data_lake_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_log_source_configuration() :: %{
        "crawlerConfiguration" => custom_log_source_crawler_configuration(),
        "providerIdentity" => aws_identity()
      }
      
  """
  @type custom_log_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_data_lakes_response() :: %{
        "dataLakes" => list(data_lake_resource()())
      }
      
  """
  @type list_data_lakes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_custom_log_source_response() :: %{}
      
  """
  @type delete_custom_log_source_response() :: %{}

  @typedoc """

  ## Example:
      
      create_subscriber_response() :: %{
        "subscriber" => subscriber_resource()
      }
      
  """
  @type create_subscriber_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_lake_organization_configuration_response() :: %{}
      
  """
  @type create_data_lake_organization_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      data_lake_source_status() :: %{
        "resource" => [String.t()],
        "status" => list(any())
      }
      
  """
  @type data_lake_source_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_lake_exception_subscription_response() :: %{}
      
  """
  @type create_data_lake_exception_subscription_response() :: %{}

  @typedoc """

  ## Example:
      
      update_data_lake_exception_subscription_request() :: %{
        optional("exceptionTimeToLive") => [float()],
        required("notificationEndpoint") => String.t(),
        required("subscriptionProtocol") => String.t()
      }
      
  """
  @type update_data_lake_exception_subscription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_lake_auto_enable_new_account_configuration() :: %{
        "region" => String.t(),
        "sources" => list(aws_log_source_resource()())
      }
      
  """
  @type data_lake_auto_enable_new_account_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_data_lake_request() :: %{
        optional("metaStoreManagerRoleArn") => String.t(),
        required("configurations") => list(data_lake_configuration()())
      }
      
  """
  @type update_data_lake_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_subscriber_response() :: %{}
      
  """
  @type delete_subscriber_response() :: %{}

  @typedoc """

  ## Example:
      
      create_aws_log_source_request() :: %{
        required("sources") => list(aws_log_source_configuration()())
      }
      
  """
  @type create_aws_log_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_lake_sources_response() :: %{
        "dataLakeArn" => String.t(),
        "dataLakeSources" => list(data_lake_source()()),
        "nextToken" => String.t()
      }
      
  """
  @type get_data_lake_sources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aws_log_source_resource() :: %{
        "sourceName" => list(any()),
        "sourceVersion" => String.t()
      }
      
  """
  @type aws_log_source_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_lake_encryption_configuration() :: %{
        "kmsKeyId" => [String.t()]
      }
      
  """
  @type data_lake_encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_data_lake_organization_configuration_response() :: %{}
      
  """
  @type delete_data_lake_organization_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      update_data_lake_response() :: %{
        "dataLakes" => list(data_lake_resource()())
      }
      
  """
  @type update_data_lake_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_lake_response() :: %{
        "dataLakes" => list(data_lake_resource()())
      }
      
  """
  @type create_data_lake_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => [String.t()],
        "resourceName" => [String.t()],
        "resourceType" => [String.t()]
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceName" => [String.t()],
        "resourceType" => [String.t()]
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_subscriber_request() :: %{
        optional("sources") => list(list()()),
        optional("subscriberDescription") => String.t(),
        optional("subscriberIdentity") => aws_identity(),
        optional("subscriberName") => String.t()
      }
      
  """
  @type update_subscriber_request() :: %{String.t() => any()}

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
      
      get_subscriber_response() :: %{
        "subscriber" => subscriber_resource()
      }
      
  """
  @type get_subscriber_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_lake_lifecycle_transition() :: %{
        "days" => [integer()],
        "storageClass" => String.t()
      }
      
  """
  @type data_lake_lifecycle_transition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_lake_configuration() :: %{
        "encryptionConfiguration" => data_lake_encryption_configuration(),
        "lifecycleConfiguration" => data_lake_lifecycle_configuration(),
        "region" => String.t(),
        "replicationConfiguration" => data_lake_replication_configuration()
      }
      
  """
  @type data_lake_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aws_identity() :: %{
        "externalId" => String.t(),
        "principal" => String.t()
      }
      
  """
  @type aws_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_subscriber_notification_response() :: %{}
      
  """
  @type delete_subscriber_notification_response() :: %{}

  @typedoc """

  ## Example:
      
      get_data_lake_exception_subscription_response() :: %{
        "exceptionTimeToLive" => [float()],
        "notificationEndpoint" => String.t(),
        "subscriptionProtocol" => String.t()
      }
      
  """
  @type get_data_lake_exception_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_subscriber_notification_request() :: %{
        required("configuration") => list()
      }
      
  """
  @type update_subscriber_notification_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_lake_exception_subscription_request() :: %{
        optional("exceptionTimeToLive") => [float()],
        required("notificationEndpoint") => String.t(),
        required("subscriptionProtocol") => String.t()
      }
      
  """
  @type create_data_lake_exception_subscription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sqs_notification_configuration() :: %{}
      
  """
  @type sqs_notification_configuration() :: %{}

  @typedoc """

  ## Example:
      
      create_subscriber_notification_request() :: %{
        required("configuration") => list()
      }
      
  """
  @type create_subscriber_notification_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscriber_resource() :: %{
        "accessTypes" => list(list(any())()),
        "createdAt" => [non_neg_integer()],
        "resourceShareArn" => String.t(),
        "resourceShareName" => String.t(),
        "roleArn" => String.t(),
        "s3BucketArn" => String.t(),
        "sources" => list(list()()),
        "subscriberArn" => String.t(),
        "subscriberDescription" => String.t(),
        "subscriberEndpoint" => String.t(),
        "subscriberId" => String.t(),
        "subscriberIdentity" => aws_identity(),
        "subscriberName" => String.t(),
        "subscriberStatus" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }
      
  """
  @type subscriber_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_lake_organization_configuration_request() :: %{
        optional("autoEnableNewAccount") => list(data_lake_auto_enable_new_account_configuration()())
      }
      
  """
  @type create_data_lake_organization_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_data_lake_delegated_administrator_response() :: %{}
      
  """
  @type deregister_data_lake_delegated_administrator_response() :: %{}

  @typedoc """

  ## Example:
      
      list_data_lake_exceptions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("regions") => list(String.t()())
      }
      
  """
  @type list_data_lake_exceptions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_data_lake_delegated_administrator_request() :: %{}
      
  """
  @type deregister_data_lake_delegated_administrator_request() :: %{}

  @typedoc """

  ## Example:
      
      list_subscribers_response() :: %{
        "nextToken" => String.t(),
        "subscribers" => list(subscriber_resource()())
      }
      
  """
  @type list_subscribers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_data_lake_organization_configuration_request() :: %{
        optional("autoEnableNewAccount") => list(data_lake_auto_enable_new_account_configuration()())
      }
      
  """
  @type delete_data_lake_organization_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aws_log_source_configuration() :: %{
        "accounts" => list(String.t()()),
        "regions" => list(String.t()()),
        "sourceName" => list(any()),
        "sourceVersion" => String.t()
      }
      
  """
  @type aws_log_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_log_source_crawler_configuration() :: %{
        "roleArn" => String.t()
      }
      
  """
  @type custom_log_source_crawler_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_lake_source() :: %{
        "account" => [String.t()],
        "eventClasses" => list(String.t()()),
        "sourceName" => [String.t()],
        "sourceStatuses" => list(data_lake_source_status()())
      }
      
  """
  @type data_lake_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_subscriber_request() :: %{}
      
  """
  @type get_subscriber_request() :: %{}

  @typedoc """

  ## Example:
      
      data_lake_lifecycle_expiration() :: %{
        "days" => [integer()]
      }
      
  """
  @type data_lake_lifecycle_expiration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      log_source() :: %{
        "account" => String.t(),
        "region" => String.t(),
        "sources" => list(list()())
      }
      
  """
  @type log_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_lake_resource() :: %{
        "createStatus" => list(any()),
        "dataLakeArn" => String.t(),
        "encryptionConfiguration" => data_lake_encryption_configuration(),
        "lifecycleConfiguration" => data_lake_lifecycle_configuration(),
        "region" => String.t(),
        "replicationConfiguration" => data_lake_replication_configuration(),
        "s3BucketArn" => String.t(),
        "updateStatus" => data_lake_update_status()
      }
      
  """
  @type data_lake_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_aws_log_source_response() :: %{
        "failed" => list(String.t()())
      }
      
  """
  @type delete_aws_log_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_lake_lifecycle_configuration() :: %{
        "expiration" => data_lake_lifecycle_expiration(),
        "transitions" => list(data_lake_lifecycle_transition()())
      }
      
  """
  @type data_lake_lifecycle_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_data_lake_response() :: %{}
      
  """
  @type delete_data_lake_response() :: %{}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "errorCode" => [String.t()],
        "message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_lake_organization_configuration_request() :: %{}
      
  """
  @type get_data_lake_organization_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      list_log_sources_response() :: %{
        "nextToken" => String.t(),
        "sources" => list(log_source()())
      }
      
  """
  @type list_log_sources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      data_lake_update_exception() :: %{
        "code" => [String.t()],
        "reason" => [String.t()]
      }
      
  """
  @type data_lake_update_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_custom_log_source_request() :: %{
        optional("eventClasses") => list(String.t()()),
        optional("sourceVersion") => String.t(),
        required("configuration") => custom_log_source_configuration(),
        required("sourceName") => String.t()
      }
      
  """
  @type create_custom_log_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_log_source_provider() :: %{
        "location" => String.t(),
        "roleArn" => String.t()
      }
      
  """
  @type custom_log_source_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_data_lake_request() :: %{
        required("regions") => list(String.t()())
      }
      
  """
  @type delete_data_lake_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_data_lake_exception_subscription_response() :: %{}
      
  """
  @type delete_data_lake_exception_subscription_response() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{}
      
  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "retryAfterSeconds" => [integer()],
        "serviceCode" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_lake_exception() :: %{
        "exception" => String.t(),
        "region" => String.t(),
        "remediation" => String.t(),
        "timestamp" => [non_neg_integer()]
      }
      
  """
  @type data_lake_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_subscriber_notification_response() :: %{
        "subscriberEndpoint" => String.t()
      }
      
  """
  @type update_subscriber_notification_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_subscriber_notification_response() :: %{
        "subscriberEndpoint" => String.t()
      }
      
  """
  @type create_subscriber_notification_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_data_lake_delegated_administrator_response() :: %{}
      
  """
  @type register_data_lake_delegated_administrator_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_custom_log_source_request() :: %{
        optional("sourceVersion") => String.t()
      }
      
  """
  @type delete_custom_log_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_log_source_resource() :: %{
        "attributes" => custom_log_source_attributes(),
        "provider" => custom_log_source_provider(),
        "sourceName" => String.t(),
        "sourceVersion" => String.t()
      }
      
  """
  @type custom_log_source_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bad_request_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_lake_organization_configuration_response() :: %{
        "autoEnableNewAccount" => list(data_lake_auto_enable_new_account_configuration()())
      }
      
  """
  @type get_data_lake_organization_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_lake_exception_subscription_request() :: %{}
      
  """
  @type get_data_lake_exception_subscription_request() :: %{}

  @typedoc """

  ## Example:
      
      register_data_lake_delegated_administrator_request() :: %{
        required("accountId") => String.t()
      }
      
  """
  @type register_data_lake_delegated_administrator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_subscriber_notification_request() :: %{}
      
  """
  @type delete_subscriber_notification_request() :: %{}

  @typedoc """

  ## Example:
      
      create_subscriber_request() :: %{
        optional("accessTypes") => list(list(any())()),
        optional("subscriberDescription") => String.t(),
        optional("tags") => list(tag()()),
        required("sources") => list(list()()),
        required("subscriberIdentity") => aws_identity(),
        required("subscriberName") => [String.t()]
      }
      
  """
  @type create_subscriber_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_aws_log_source_request() :: %{
        required("sources") => list(aws_log_source_configuration()())
      }
      
  """
  @type delete_aws_log_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_subscribers_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_subscribers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_lake_update_status() :: %{
        "exception" => data_lake_update_exception(),
        "requestId" => [String.t()],
        "status" => list(any())
      }
      
  """
  @type data_lake_update_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_data_lake_exception_subscription_request() :: %{}
      
  """
  @type delete_data_lake_exception_subscription_request() :: %{}

  @typedoc """

  ## Example:
      
      https_notification_configuration() :: %{
        "authorizationApiKeyName" => [String.t()],
        "authorizationApiKeyValue" => [String.t()],
        "endpoint" => [String.t()],
        "httpMethod" => list(any()),
        "targetRoleArn" => String.t()
      }
      
  """
  @type https_notification_configuration() :: %{String.t() => any()}

  @type create_aws_log_source_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_custom_log_source_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_data_lake_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_data_lake_exception_subscription_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_data_lake_organization_configuration_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_subscriber_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_subscriber_notification_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_aws_log_source_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_custom_log_source_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_data_lake_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_data_lake_exception_subscription_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_data_lake_organization_configuration_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_subscriber_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_subscriber_notification_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type deregister_data_lake_delegated_administrator_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_data_lake_exception_subscription_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_data_lake_organization_configuration_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_data_lake_sources_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_subscriber_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_data_lake_exceptions_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_data_lakes_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_log_sources_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_subscribers_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type register_data_lake_delegated_administrator_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_data_lake_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_data_lake_exception_subscription_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_subscriber_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_subscriber_notification_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "securitylake",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SecurityLake",
      signature_version: "v4",
      signing_name: "securitylake",
      target_prefix: nil
    }
  end

  @doc """
  Adds a natively supported Amazon Web Service as an Amazon Security Lake source.
  Enables source types for member accounts in required Amazon Web Services
  Regions, based on the parameters you specify. You can choose any source type
  in any Region for either accounts that are part of a trusted organization or
  standalone accounts. Once you add an Amazon Web Service as a source, Security
  Lake starts collecting logs and events from it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20CreateAwsLogSource&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_aws_log_source(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_aws_log_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_aws_log_source_errors()}
  def create_aws_log_source(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake/logsources/aws"

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
  Adds a third-party custom source in Amazon Security Lake, from the Amazon Web
  Services Region where you want to create a custom source. Security Lake can
  collect logs and events from third-party custom sources. After creating the
  appropriate IAM role to invoke Glue crawler, use this API to add a custom
  source name in Security Lake. This operation creates a partition in the Amazon
  S3 bucket for Security Lake as the target location for log files from the
  custom source. In addition, this operation also creates an associated Glue
  table and an Glue crawler.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20CreateCustomLogSource&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_custom_log_source(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_custom_log_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_custom_log_source_errors()}
  def create_custom_log_source(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake/logsources/custom"

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
  Initializes an Amazon Security Lake instance with the provided (or default)
  configuration. You can enable Security Lake in Amazon Web Services Regions
  with customized settings before enabling log collection in Regions. To specify
  particular Regions, configure these Regions using the `configurations`
  parameter. If you have already enabled Security Lake in a Region when you call
  this command, the command will update the Region if you provide new
  configuration parameters. If you have not already enabled Security Lake in the
  Region when you call this API, it will set up the data lake in the Region with
  the specified configurations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20CreateDataLake&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_data_lake(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_data_lake_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_lake_errors()}
  def create_data_lake(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake"

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
  Creates the specified notification subscription in Amazon Security Lake for the
  organization you specify.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20CreateDataLakeExceptionSubscription&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_data_lake_exception_subscription(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_data_lake_exception_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_lake_exception_subscription_errors()}
  def create_data_lake_exception_subscription(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake/exceptions/subscription"

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
  Automatically enables Amazon Security Lake for new member accounts in your
  organization. Security Lake is not automatically enabled for any existing
  member accounts in your organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20CreateDataLakeOrganizationConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_data_lake_organization_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_data_lake_organization_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_lake_organization_configuration_errors()}
  def create_data_lake_organization_configuration(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake/organization/configuration"

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
  Creates a subscription permission for accounts that are already enabled in
  Amazon Security Lake. You can create a subscriber with access to data in the
  current Amazon Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20CreateSubscriber&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec create_subscriber(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_subscriber_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_subscriber_errors()}
  def create_subscriber(%Client{} = client, options \\ []) do
    url_path = "/v1/subscribers"

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
  Notifies the subscriber when new data is written to the data lake for the
  sources that the subscriber consumes in Security Lake. You can create only one
  subscriber notification per subscriber.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20CreateSubscriberNotification&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:subscriber_id` (`t:string` required) The subscriber ID for the notification
  subscription.
  ## Keyword parameters:
  """
  @spec create_subscriber_notification(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_subscriber_notification_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_subscriber_notification_errors()}
  def create_subscriber_notification(%Client{} = client, subscriber_id, options \\ []) do
    url_path = "/v1/subscribers/#{AWS.Util.encode_uri(subscriber_id)}/notification"

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
  Removes a natively supported Amazon Web Service as an Amazon Security Lake
  source. You can remove a source for one or more Regions. When you remove the
  source, Security Lake stops collecting data from that source in the specified
  Regions and accounts, and subscribers can no longer consume new data from the
  source. However, subscribers can still consume data that Security Lake
  collected from the source before removal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20DeleteAwsLogSource&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec delete_aws_log_source(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_aws_log_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_aws_log_source_errors()}
  def delete_aws_log_source(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake/logsources/aws/delete"

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
  Removes a custom log source from Amazon Security Lake, to stop sending data from
  the custom source to Security Lake.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20DeleteCustomLogSource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:source_name` (`t:string` required) The source name of custom log source that
  you want to delete.
  ## Keyword parameters:
  * `:source_version` (`t:string`) The source version for the third-party custom
  source. You can limit the custom source removal to the specified source
  version.
  """
  @spec delete_custom_log_source(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_custom_log_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_custom_log_source_errors()}
  def delete_custom_log_source(%Client{} = client, source_name, options \\ []) do
    url_path = "/v1/datalake/logsources/custom/#{AWS.Util.encode_uri(source_name)}"

    # Validate optional parameters
    optional_params = [source_version: nil]

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
      if opt_val = Keyword.get(options, :source_version) do
        [{"sourceVersion", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:source_version])

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
  When you disable Amazon Security Lake from your account, Security Lake is
  disabled in all Amazon Web Services Regions and it stops collecting data from
  your sources. Also, this API automatically takes steps to remove the account
  from Security Lake. However, Security Lake retains all of your existing
  settings and the resources that it created in your Amazon Web Services account
  in the current Amazon Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20DeleteDataLake&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec delete_data_lake(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_data_lake_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_data_lake_errors()}
  def delete_data_lake(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake/delete"

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
  Deletes the specified notification subscription in Amazon Security Lake for the
  organization you specify.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20DeleteDataLakeExceptionSubscription&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec delete_data_lake_exception_subscription(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_data_lake_exception_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_data_lake_exception_subscription_errors()}
  def delete_data_lake_exception_subscription(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake/exceptions/subscription"

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
  Turns off automatic enablement of Amazon Security Lake for member accounts that
  are added to an organization in Organizations. Only the delegated Security
  Lake administrator for an organization can perform this operation. If the
  delegated Security Lake administrator performs this operation, new member
  accounts won't automatically contribute data to the data lake.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20DeleteDataLakeOrganizationConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec delete_data_lake_organization_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, delete_data_lake_organization_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_data_lake_organization_configuration_errors()}
  def delete_data_lake_organization_configuration(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake/organization/configuration/delete"

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
  Deletes the subscription permission and all notification settings for accounts
  that are already enabled in Amazon Security Lake. When you run
  `DeleteSubscriber`, the subscriber will no longer consume data from Security
  Lake and the subscriber is removed. This operation deletes the subscriber and
  removes access to data in the current Amazon Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20DeleteSubscriber&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:subscriber_id` (`t:string` required) A value created by Security Lake that
  uniquely identifies your DeleteSubscriber API request.
  ## Keyword parameters:
  """
  @spec delete_subscriber(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_subscriber_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_subscriber_errors()}
  def delete_subscriber(%Client{} = client, subscriber_id, options \\ []) do
    url_path = "/v1/subscribers/#{AWS.Util.encode_uri(subscriber_id)}"

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
  Deletes the specified notification subscription in Amazon Security Lake for the
  organization you specify.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20DeleteSubscriberNotification&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:subscriber_id` (`t:string` required) The ID of the Security Lake subscriber
  account.
  ## Keyword parameters:
  """
  @spec delete_subscriber_notification(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_subscriber_notification_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_subscriber_notification_errors()}
  def delete_subscriber_notification(%Client{} = client, subscriber_id, options \\ []) do
    url_path = "/v1/subscribers/#{AWS.Util.encode_uri(subscriber_id)}/notification"

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
  Deletes the Amazon Security Lake delegated administrator account for the
  organization. This API can only be called by the organization management
  account. The organization management account cannot be the delegated
  administrator account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20DeregisterDataLakeDelegatedAdministrator&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec deregister_data_lake_delegated_administrator(AWS.Client.t(), Keyword.t()) ::
          {:ok, deregister_data_lake_delegated_administrator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_data_lake_delegated_administrator_errors()}
  def deregister_data_lake_delegated_administrator(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake/delegate"

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
  Retrieves the details of exception notifications for the account in Amazon
  Security Lake.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20GetDataLakeExceptionSubscription&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_data_lake_exception_subscription(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_data_lake_exception_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_data_lake_exception_subscription_errors()}
  def get_data_lake_exception_subscription(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake/exceptions/subscription"

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
  Retrieves the configuration that will be automatically set up for accounts added
  to the organization after the organization has onboarded to Amazon Security
  Lake. This API does not take input parameters.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20GetDataLakeOrganizationConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_data_lake_organization_configuration(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_data_lake_organization_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_data_lake_organization_configuration_errors()}
  def get_data_lake_organization_configuration(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake/organization/configuration"

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
  Retrieves a snapshot of the current Region, including whether Amazon Security
  Lake is enabled for those accounts and which sources Security Lake is
  collecting data from.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20GetDataLakeSources&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec get_data_lake_sources(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_data_lake_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_data_lake_sources_errors()}
  def get_data_lake_sources(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake/sources"

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
  Retrieves the subscription information for the specified subscription ID. You
  can get information about a specific subscriber.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20GetSubscriber&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:subscriber_id` (`t:string` required) A value created by Amazon Security Lake
  that uniquely identifies your GetSubscriber API request.
  ## Keyword parameters:
  """
  @spec get_subscriber(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_subscriber_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_subscriber_errors()}
  def get_subscriber(%Client{} = client, subscriber_id, options \\ []) do
    url_path = "/v1/subscribers/#{AWS.Util.encode_uri(subscriber_id)}"

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
  Lists the Amazon Security Lake exceptions that you can use to find the source of
  problems and fix them.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20ListDataLakeExceptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_data_lake_exceptions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_data_lake_exceptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_data_lake_exceptions_errors()}
  def list_data_lake_exceptions(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake/exceptions"

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
  Retrieves the Amazon Security Lake configuration object for the specified Amazon
  Web Services Regions. You can use this operation to determine whether Security
  Lake is enabled for a Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20ListDataLakes&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:regions` (`t:list[com.amazonaws.securitylake#Region]`) The list of Regions
  where Security Lake is enabled.
  """
  @spec list_data_lakes(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_data_lakes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_data_lakes_errors()}
  def list_data_lakes(%Client{} = client, options \\ []) do
    url_path = "/v1/datalakes"

    # Validate optional parameters
    optional_params = [regions: nil]

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
      if opt_val = Keyword.get(options, :regions) do
        [{"regions", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:regions])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the log sources in the current Amazon Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20ListLogSources&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec list_log_sources(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_log_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_log_sources_errors()}
  def list_log_sources(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake/logsources/list"

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
  List all subscribers for the specific Amazon Security Lake account ID. You can
  retrieve a list of subscriptions associated with a specific organization or
  Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20ListSubscribers&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  * `:max_results` (`t:integer`) The maximum number of accounts for which the
  configuration is displayed.
  * `:next_token` (`t:string`) If nextToken is returned, there are more results
  available. You can repeat the call using the returned token to retrieve the
  next page.
  """
  @spec list_subscribers(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_subscribers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_subscribers_errors()}
  def list_subscribers(%Client{} = client, options \\ []) do
    url_path = "/v1/subscribers"

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
  Retrieves the tags (keys and values) that are associated with an Amazon Security
  Lake resource: a subscriber, or the data lake configuration for your Amazon
  Web Services account in a particular Amazon Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
  Amazon Security Lake resource for which you want to retrieve the tags.
  ## Keyword parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Designates the Amazon Security Lake delegated administrator account for the
  organization. This API can only be called by the organization management
  account. The organization management account cannot be the delegated
  administrator account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20RegisterDataLakeDelegatedAdministrator&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec register_data_lake_delegated_administrator(AWS.Client.t(), Keyword.t()) ::
          {:ok, register_data_lake_delegated_administrator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_data_lake_delegated_administrator_errors()}
  def register_data_lake_delegated_administrator(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake/delegate"

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
  Adds or updates one or more tags that are associated with an Amazon Security
  Lake resource: a subscriber, or the data lake configuration for your Amazon
  Web Services account in a particular Amazon Web Services Region. A *tag* is a
  label that you can define and associate with Amazon Web Services resources.
  Each tag consists of a required *tag key* and an associated *tag value*. A
  *tag key* is a general label that acts as a category for a more specific tag
  value. A *tag value* acts as a descriptor for a tag key. Tags can help you
  identify, categorize, and manage resources in different ways, such as by
  owner, environment, or other criteria. For more information, see [Tagging
  Amazon Security Lake
  resources](https://docs.aws.amazon.com/security-lake/latest/userguide/tagging-resources.html)
  in the *Amazon Security Lake User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
  Amazon Security Lake resource to add or update the tags for.
  ## Keyword parameters:
  """
  @spec tag_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Removes one or more tags (keys and values) from an Amazon Security Lake
  resource: a subscriber, or the data lake configuration for your Amazon Web
  Services account in a particular Amazon Web Services Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
  Amazon Security Lake resource to remove one or more tags from.
  * `:tag_keys` (`t:list[com.amazonaws.securitylake#TagKey]` required) A list of
  one or more tag keys. For each value in the list, specify the tag key for a
  tag to remove from the Amazon Security Lake resource.
  ## Keyword parameters:
  """
  @spec untag_resource(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, tag_keys, options \\ [])
      when is_binary(tag_keys) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"

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
  Specifies where to store your security data and for how long. You can add a
  rollup Region to consolidate data from multiple Amazon Web Services Regions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20UpdateDataLake&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec update_data_lake(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_data_lake_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_data_lake_errors()}
  def update_data_lake(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake"

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
  Updates the specified notification subscription in Amazon Security Lake for the
  organization you specify.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20UpdateDataLakeExceptionSubscription&this_doc_guide=API%2520Reference)

  ## Parameters:
  ## Keyword parameters:
  """
  @spec update_data_lake_exception_subscription(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_data_lake_exception_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_data_lake_exception_subscription_errors()}
  def update_data_lake_exception_subscription(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake/exceptions/subscription"

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
  Updates an existing subscription for the given Amazon Security Lake account ID.
  You can update a subscriber by changing the sources that the subscriber
  consumes data from.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20UpdateSubscriber&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:subscriber_id` (`t:string` required) A value created by Security Lake that
  uniquely identifies your subscription.
  ## Keyword parameters:
  """
  @spec update_subscriber(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_subscriber_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_subscriber_errors()}
  def update_subscriber(%Client{} = client, subscriber_id, options \\ []) do
    url_path = "/v1/subscribers/#{AWS.Util.encode_uri(subscriber_id)}"

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
  Updates an existing notification method for the subscription (SQS or HTTPs
  endpoint) or switches the notification subscription endpoint for a subscriber.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=securitylake%20UpdateSubscriberNotification&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:subscriber_id` (`t:string` required) The subscription ID for which the
  subscription notification is specified.
  ## Keyword parameters:
  """
  @spec update_subscriber_notification(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_subscriber_notification_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_subscriber_notification_errors()}
  def update_subscriber_notification(%Client{} = client, subscriber_id, options \\ []) do
    url_path = "/v1/subscribers/#{AWS.Util.encode_uri(subscriber_id)}/notification"

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
