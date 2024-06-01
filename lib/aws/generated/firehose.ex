# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Firehose do
  @moduledoc """
  Amazon Data Firehose Amazon Data Firehose was previously known as Amazon Kinesis
  Data Firehose.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      http_endpoint_request_configuration() :: %{
        "CommonAttributes" => list(http_endpoint_common_attribute()()),
        "ContentEncoding" => list(any())
      }
      
  """
  @type http_endpoint_request_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      record() :: %{
        "Data" => binary()
      }
      
  """
  @type record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encryption_configuration() :: %{
        "KMSEncryptionConfig" => kms_encryption_config(),
        "NoEncryptionConfig" => list(any())
      }
      
  """
  @type encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      http_endpoint_buffering_hints() :: %{
        "IntervalInSeconds" => integer(),
        "SizeInMBs" => integer()
      }
      
  """
  @type http_endpoint_buffering_hints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_kms_resource_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }
      
  """
  @type invalid_kms_resource_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failure_description() :: %{
        "Details" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type failure_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_retry_options() :: %{
        "DurationInSeconds" => integer()
      }
      
  """
  @type redshift_retry_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      amazon_open_search_serverless_buffering_hints() :: %{
        "IntervalInSeconds" => integer(),
        "SizeInMBs" => integer()
      }
      
  """
  @type amazon_open_search_serverless_buffering_hints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_configuration() :: %{
        "RoleARN" => String.t(),
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()())
      }
      
  """
  @type vpc_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snowflake_vpc_configuration() :: %{
        "PrivateLinkVpceId" => String.t()
      }
      
  """
  @type snowflake_vpc_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_destination_output() :: %{}
      
  """
  @type update_destination_output() :: %{}

  @typedoc """

  ## Example:
      
      start_delivery_stream_encryption_output() :: %{}
      
  """
  @type start_delivery_stream_encryption_output() :: %{}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      extended_s3_destination_description() :: %{
        "BucketARN" => String.t(),
        "BufferingHints" => buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "CompressionFormat" => list(any()),
        "CustomTimeZone" => String.t(),
        "DataFormatConversionConfiguration" => data_format_conversion_configuration(),
        "DynamicPartitioningConfiguration" => dynamic_partitioning_configuration(),
        "EncryptionConfiguration" => encryption_configuration(),
        "ErrorOutputPrefix" => String.t(),
        "FileExtension" => String.t(),
        "Prefix" => String.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RoleARN" => String.t(),
        "S3BackupDescription" => s3_destination_description(),
        "S3BackupMode" => list(any())
      }
      
  """
  @type extended_s3_destination_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_delivery_stream_output() :: %{
        "HasMoreTags" => boolean(),
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_delivery_stream_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snowflake_destination_update() :: %{
        "AccountUrl" => String.t(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ContentColumnName" => String.t(),
        "DataLoadingOption" => list(any()),
        "Database" => String.t(),
        "KeyPassphrase" => String.t(),
        "MetaDataColumnName" => String.t(),
        "PrivateKey" => String.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => snowflake_retry_options(),
        "RoleARN" => String.t(),
        "S3BackupMode" => list(any()),
        "S3Update" => s3_destination_update(),
        "Schema" => String.t(),
        "SnowflakeRoleConfiguration" => snowflake_role_configuration(),
        "Table" => String.t(),
        "User" => String.t()
      }
      
  """
  @type snowflake_destination_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_delivery_stream_encryption_input() :: %{
        optional("DeliveryStreamEncryptionConfigurationInput") => delivery_stream_encryption_configuration_input(),
        required("DeliveryStreamName") => String.t()
      }
      
  """
  @type start_delivery_stream_encryption_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      amazon_open_search_serverless_destination_description() :: %{
        "BufferingHints" => amazon_open_search_serverless_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "CollectionEndpoint" => String.t(),
        "IndexName" => String.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => amazon_open_search_serverless_retry_options(),
        "RoleARN" => String.t(),
        "S3BackupMode" => list(any()),
        "S3DestinationDescription" => s3_destination_description(),
        "VpcConfigurationDescription" => vpc_configuration_description()
      }
      
  """
  @type amazon_open_search_serverless_destination_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_destination_update() :: %{
        "BucketARN" => String.t(),
        "BufferingHints" => buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "CompressionFormat" => list(any()),
        "EncryptionConfiguration" => encryption_configuration(),
        "ErrorOutputPrefix" => String.t(),
        "Prefix" => String.t(),
        "RoleARN" => String.t()
      }
      
  """
  @type s3_destination_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_delivery_stream_input() :: %{
        optional("AmazonOpenSearchServerlessDestinationConfiguration") => amazon_open_search_serverless_destination_configuration(),
        optional("AmazonopensearchserviceDestinationConfiguration") => amazonopensearchservice_destination_configuration(),
        optional("DeliveryStreamEncryptionConfigurationInput") => delivery_stream_encryption_configuration_input(),
        optional("DeliveryStreamType") => list(any()),
        optional("ElasticsearchDestinationConfiguration") => elasticsearch_destination_configuration(),
        optional("ExtendedS3DestinationConfiguration") => extended_s3_destination_configuration(),
        optional("HttpEndpointDestinationConfiguration") => http_endpoint_destination_configuration(),
        optional("KinesisStreamSourceConfiguration") => kinesis_stream_source_configuration(),
        optional("MSKSourceConfiguration") => m_s_k_source_configuration(),
        optional("RedshiftDestinationConfiguration") => redshift_destination_configuration(),
        optional("S3DestinationConfiguration") => s3_destination_configuration(),
        optional("SnowflakeDestinationConfiguration") => snowflake_destination_configuration(),
        optional("SplunkDestinationConfiguration") => splunk_destination_configuration(),
        optional("Tags") => list(tag()()),
        required("DeliveryStreamName") => String.t()
      }
      
  """
  @type create_delivery_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_configuration_description() :: %{
        "RoleARN" => String.t(),
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()()),
        "VpcId" => String.t()
      }
      
  """
  @type vpc_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_description() :: %{
        "KinesisStreamSourceDescription" => kinesis_stream_source_description(),
        "MSKSourceDescription" => m_s_k_source_description()
      }
      
  """
  @type source_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      http_endpoint_configuration() :: %{
        "AccessKey" => String.t(),
        "Name" => String.t(),
        "Url" => String.t()
      }
      
  """
  @type http_endpoint_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      http_endpoint_destination_description() :: %{
        "BufferingHints" => http_endpoint_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "EndpointConfiguration" => http_endpoint_description(),
        "ProcessingConfiguration" => processing_configuration(),
        "RequestConfiguration" => http_endpoint_request_configuration(),
        "RetryOptions" => http_endpoint_retry_options(),
        "RoleARN" => String.t(),
        "S3BackupMode" => list(any()),
        "S3DestinationDescription" => s3_destination_description()
      }
      
  """
  @type http_endpoint_destination_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_record_batch_input() :: %{
        required("DeliveryStreamName") => String.t(),
        required("Records") => list(record()())
      }
      
  """
  @type put_record_batch_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      m_s_k_source_description() :: %{
        "AuthenticationConfiguration" => authentication_configuration(),
        "DeliveryStartTimestamp" => non_neg_integer(),
        "MSKClusterARN" => String.t(),
        "TopicName" => String.t()
      }
      
  """
  @type m_s_k_source_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      processor() :: %{
        "Parameters" => list(processor_parameter()()),
        "Type" => list(any())
      }
      
  """
  @type processor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      m_s_k_source_configuration() :: %{
        "AuthenticationConfiguration" => authentication_configuration(),
        "MSKClusterARN" => String.t(),
        "TopicName" => String.t()
      }
      
  """
  @type m_s_k_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snowflake_role_configuration() :: %{
        "Enabled" => boolean(),
        "SnowflakeRole" => String.t()
      }
      
  """
  @type snowflake_role_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_delivery_streams_output() :: %{
        "DeliveryStreamNames" => list(String.t()()),
        "HasMoreDeliveryStreams" => boolean()
      }
      
  """
  @type list_delivery_streams_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delivery_stream_encryption_configuration_input() :: %{
        "KeyARN" => String.t(),
        "KeyType" => list(any())
      }
      
  """
  @type delivery_stream_encryption_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      elasticsearch_destination_configuration() :: %{
        "BufferingHints" => elasticsearch_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ClusterEndpoint" => String.t(),
        "DocumentIdOptions" => document_id_options(),
        "DomainARN" => String.t(),
        "IndexName" => String.t(),
        "IndexRotationPeriod" => list(any()),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => elasticsearch_retry_options(),
        "RoleARN" => String.t(),
        "S3BackupMode" => list(any()),
        "S3Configuration" => s3_destination_configuration(),
        "TypeName" => String.t(),
        "VpcConfiguration" => vpc_configuration()
      }
      
  """
  @type elasticsearch_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      splunk_buffering_hints() :: %{
        "IntervalInSeconds" => integer(),
        "SizeInMBs" => integer()
      }
      
  """
  @type splunk_buffering_hints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      http_endpoint_destination_configuration() :: %{
        "BufferingHints" => http_endpoint_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "EndpointConfiguration" => http_endpoint_configuration(),
        "ProcessingConfiguration" => processing_configuration(),
        "RequestConfiguration" => http_endpoint_request_configuration(),
        "RetryOptions" => http_endpoint_retry_options(),
        "RoleARN" => String.t(),
        "S3BackupMode" => list(any()),
        "S3Configuration" => s3_destination_configuration()
      }
      
  """
  @type http_endpoint_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      destination_description() :: %{
        "AmazonOpenSearchServerlessDestinationDescription" => amazon_open_search_serverless_destination_description(),
        "AmazonopensearchserviceDestinationDescription" => amazonopensearchservice_destination_description(),
        "DestinationId" => String.t(),
        "ElasticsearchDestinationDescription" => elasticsearch_destination_description(),
        "ExtendedS3DestinationDescription" => extended_s3_destination_description(),
        "HttpEndpointDestinationDescription" => http_endpoint_destination_description(),
        "RedshiftDestinationDescription" => redshift_destination_description(),
        "S3DestinationDescription" => s3_destination_description(),
        "SnowflakeDestinationDescription" => snowflake_destination_description(),
        "SplunkDestinationDescription" => splunk_destination_description()
      }
      
  """
  @type destination_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snowflake_destination_description() :: %{
        "AccountUrl" => String.t(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ContentColumnName" => String.t(),
        "DataLoadingOption" => list(any()),
        "Database" => String.t(),
        "MetaDataColumnName" => String.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => snowflake_retry_options(),
        "RoleARN" => String.t(),
        "S3BackupMode" => list(any()),
        "S3DestinationDescription" => s3_destination_description(),
        "Schema" => String.t(),
        "SnowflakeRoleConfiguration" => snowflake_role_configuration(),
        "SnowflakeVpcConfiguration" => snowflake_vpc_configuration(),
        "Table" => String.t(),
        "User" => String.t()
      }
      
  """
  @type snowflake_destination_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_x_json_ser_de() :: %{
        "CaseInsensitive" => boolean(),
        "ColumnToJsonKeyMappings" => map(),
        "ConvertDotsInJsonKeysToUnderscores" => boolean()
      }
      
  """
  @type open_x_json_ser_de() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_destination_input() :: %{
        optional("AmazonOpenSearchServerlessDestinationUpdate") => amazon_open_search_serverless_destination_update(),
        optional("AmazonopensearchserviceDestinationUpdate") => amazonopensearchservice_destination_update(),
        optional("ElasticsearchDestinationUpdate") => elasticsearch_destination_update(),
        optional("ExtendedS3DestinationUpdate") => extended_s3_destination_update(),
        optional("HttpEndpointDestinationUpdate") => http_endpoint_destination_update(),
        optional("RedshiftDestinationUpdate") => redshift_destination_update(),
        optional("S3DestinationUpdate") => s3_destination_update(),
        optional("SnowflakeDestinationUpdate") => snowflake_destination_update(),
        optional("SplunkDestinationUpdate") => splunk_destination_update(),
        required("CurrentDeliveryStreamVersionId") => String.t(),
        required("DeliveryStreamName") => String.t(),
        required("DestinationId") => String.t()
      }
      
  """
  @type update_destination_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      elasticsearch_retry_options() :: %{
        "DurationInSeconds" => integer()
      }
      
  """
  @type elasticsearch_retry_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_source_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }
      
  """
  @type invalid_source_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_command() :: %{
        "CopyOptions" => String.t(),
        "DataTableColumns" => String.t(),
        "DataTableName" => String.t()
      }
      
  """
  @type copy_command() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      amazonopensearchservice_retry_options() :: %{
        "DurationInSeconds" => integer()
      }
      
  """
  @type amazonopensearchservice_retry_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_id_options() :: %{
        "DefaultDocumentIdFormat" => list(any())
      }
      
  """
  @type document_id_options() :: %{String.t() => any()}

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
      
      list_tags_for_delivery_stream_input() :: %{
        optional("ExclusiveStartTagKey") => String.t(),
        optional("Limit") => integer(),
        required("DeliveryStreamName") => String.t()
      }
      
  """
  @type list_tags_for_delivery_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snowflake_destination_configuration() :: %{
        "AccountUrl" => String.t(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ContentColumnName" => String.t(),
        "DataLoadingOption" => list(any()),
        "Database" => String.t(),
        "KeyPassphrase" => String.t(),
        "MetaDataColumnName" => String.t(),
        "PrivateKey" => String.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => snowflake_retry_options(),
        "RoleARN" => String.t(),
        "S3BackupMode" => list(any()),
        "S3Configuration" => s3_destination_configuration(),
        "Schema" => String.t(),
        "SnowflakeRoleConfiguration" => snowflake_role_configuration(),
        "SnowflakeVpcConfiguration" => snowflake_vpc_configuration(),
        "Table" => String.t(),
        "User" => String.t()
      }
      
  """
  @type snowflake_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      amazon_open_search_serverless_retry_options() :: %{
        "DurationInSeconds" => integer()
      }
      
  """
  @type amazon_open_search_serverless_retry_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_destination_configuration() :: %{
        "BucketARN" => String.t(),
        "BufferingHints" => buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "CompressionFormat" => list(any()),
        "EncryptionConfiguration" => encryption_configuration(),
        "ErrorOutputPrefix" => String.t(),
        "Prefix" => String.t(),
        "RoleARN" => String.t()
      }
      
  """
  @type s3_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      splunk_destination_update() :: %{
        "BufferingHints" => splunk_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "HECAcknowledgmentTimeoutInSeconds" => integer(),
        "HECEndpoint" => String.t(),
        "HECEndpointType" => list(any()),
        "HECToken" => String.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => splunk_retry_options(),
        "S3BackupMode" => list(any()),
        "S3Update" => s3_destination_update()
      }
      
  """
  @type splunk_destination_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_delivery_stream_input() :: %{
        optional("AllowForceDelete") => boolean(),
        required("DeliveryStreamName") => String.t()
      }
      
  """
  @type delete_delivery_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delivery_stream_encryption_configuration() :: %{
        "FailureDescription" => failure_description(),
        "KeyARN" => String.t(),
        "KeyType" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type delivery_stream_encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      amazon_open_search_serverless_destination_configuration() :: %{
        "BufferingHints" => amazon_open_search_serverless_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "CollectionEndpoint" => String.t(),
        "IndexName" => String.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => amazon_open_search_serverless_retry_options(),
        "RoleARN" => String.t(),
        "S3BackupMode" => list(any()),
        "S3Configuration" => s3_destination_configuration(),
        "VpcConfiguration" => vpc_configuration()
      }
      
  """
  @type amazon_open_search_serverless_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_delivery_stream_input() :: %{
        required("DeliveryStreamName") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_delivery_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_record_batch_response_entry() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "RecordId" => String.t()
      }
      
  """
  @type put_record_batch_response_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      processing_configuration() :: %{
        "Enabled" => boolean(),
        "Processors" => list(processor()())
      }
      
  """
  @type processing_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_delivery_stream_output() :: %{}
      
  """
  @type tag_delivery_stream_output() :: %{}

  @typedoc """

  ## Example:
      
      redshift_destination_update() :: %{
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ClusterJDBCURL" => String.t(),
        "CopyCommand" => copy_command(),
        "Password" => String.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => redshift_retry_options(),
        "RoleARN" => String.t(),
        "S3BackupMode" => list(any()),
        "S3BackupUpdate" => s3_destination_update(),
        "S3Update" => s3_destination_update(),
        "Username" => String.t()
      }
      
  """
  @type redshift_destination_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      buffering_hints() :: %{
        "IntervalInSeconds" => integer(),
        "SizeInMBs" => integer()
      }
      
  """
  @type buffering_hints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hive_json_ser_de() :: %{
        "TimestampFormats" => list(String.t()())
      }
      
  """
  @type hive_json_ser_de() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_record_batch_output() :: %{
        "Encrypted" => boolean(),
        "FailedPutCount" => integer(),
        "RequestResponses" => list(put_record_batch_response_entry()())
      }
      
  """
  @type put_record_batch_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_stream_source_description() :: %{
        "DeliveryStartTimestamp" => non_neg_integer(),
        "KinesisStreamARN" => String.t(),
        "RoleARN" => String.t()
      }
      
  """
  @type kinesis_stream_source_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      http_endpoint_retry_options() :: %{
        "DurationInSeconds" => integer()
      }
      
  """
  @type http_endpoint_retry_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      elasticsearch_destination_update() :: %{
        "BufferingHints" => elasticsearch_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ClusterEndpoint" => String.t(),
        "DocumentIdOptions" => document_id_options(),
        "DomainARN" => String.t(),
        "IndexName" => String.t(),
        "IndexRotationPeriod" => list(any()),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => elasticsearch_retry_options(),
        "RoleARN" => String.t(),
        "S3Update" => s3_destination_update(),
        "TypeName" => String.t()
      }
      
  """
  @type elasticsearch_destination_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      splunk_destination_configuration() :: %{
        "BufferingHints" => splunk_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "HECAcknowledgmentTimeoutInSeconds" => integer(),
        "HECEndpoint" => String.t(),
        "HECEndpointType" => list(any()),
        "HECToken" => String.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => splunk_retry_options(),
        "S3BackupMode" => list(any()),
        "S3Configuration" => s3_destination_configuration()
      }
      
  """
  @type splunk_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      amazonopensearchservice_destination_configuration() :: %{
        "BufferingHints" => amazonopensearchservice_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ClusterEndpoint" => String.t(),
        "DocumentIdOptions" => document_id_options(),
        "DomainARN" => String.t(),
        "IndexName" => String.t(),
        "IndexRotationPeriod" => list(any()),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => amazonopensearchservice_retry_options(),
        "RoleARN" => String.t(),
        "S3BackupMode" => list(any()),
        "S3Configuration" => s3_destination_configuration(),
        "TypeName" => String.t(),
        "VpcConfiguration" => vpc_configuration()
      }
      
  """
  @type amazonopensearchservice_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_delivery_stream_encryption_input() :: %{
        required("DeliveryStreamName") => String.t()
      }
      
  """
  @type stop_delivery_stream_encryption_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_delivery_stream_input() :: %{
        optional("ExclusiveStartDestinationId") => String.t(),
        optional("Limit") => integer(),
        required("DeliveryStreamName") => String.t()
      }
      
  """
  @type describe_delivery_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      elasticsearch_destination_description() :: %{
        "BufferingHints" => elasticsearch_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ClusterEndpoint" => String.t(),
        "DocumentIdOptions" => document_id_options(),
        "DomainARN" => String.t(),
        "IndexName" => String.t(),
        "IndexRotationPeriod" => list(any()),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => elasticsearch_retry_options(),
        "RoleARN" => String.t(),
        "S3BackupMode" => list(any()),
        "S3DestinationDescription" => s3_destination_description(),
        "TypeName" => String.t(),
        "VpcConfigurationDescription" => vpc_configuration_description()
      }
      
  """
  @type elasticsearch_destination_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      extended_s3_destination_configuration() :: %{
        "BucketARN" => String.t(),
        "BufferingHints" => buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "CompressionFormat" => list(any()),
        "CustomTimeZone" => String.t(),
        "DataFormatConversionConfiguration" => data_format_conversion_configuration(),
        "DynamicPartitioningConfiguration" => dynamic_partitioning_configuration(),
        "EncryptionConfiguration" => encryption_configuration(),
        "ErrorOutputPrefix" => String.t(),
        "FileExtension" => String.t(),
        "Prefix" => String.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RoleARN" => String.t(),
        "S3BackupConfiguration" => s3_destination_configuration(),
        "S3BackupMode" => list(any())
      }
      
  """
  @type extended_s3_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_record_output() :: %{
        "Encrypted" => boolean(),
        "RecordId" => String.t()
      }
      
  """
  @type put_record_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delivery_stream_description() :: %{
        "CreateTimestamp" => non_neg_integer(),
        "DeliveryStreamARN" => String.t(),
        "DeliveryStreamEncryptionConfiguration" => delivery_stream_encryption_configuration(),
        "DeliveryStreamName" => String.t(),
        "DeliveryStreamStatus" => list(any()),
        "DeliveryStreamType" => list(any()),
        "Destinations" => list(destination_description()()),
        "FailureDescription" => failure_description(),
        "HasMoreDestinations" => boolean(),
        "LastUpdateTimestamp" => non_neg_integer(),
        "Source" => source_description(),
        "VersionId" => String.t()
      }
      
  """
  @type delivery_stream_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      amazonopensearchservice_destination_description() :: %{
        "BufferingHints" => amazonopensearchservice_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ClusterEndpoint" => String.t(),
        "DocumentIdOptions" => document_id_options(),
        "DomainARN" => String.t(),
        "IndexName" => String.t(),
        "IndexRotationPeriod" => list(any()),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => amazonopensearchservice_retry_options(),
        "RoleARN" => String.t(),
        "S3BackupMode" => list(any()),
        "S3DestinationDescription" => s3_destination_description(),
        "TypeName" => String.t(),
        "VpcConfigurationDescription" => vpc_configuration_description()
      }
      
  """
  @type amazonopensearchservice_destination_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_format_configuration() :: %{
        "Serializer" => serializer()
      }
      
  """
  @type output_format_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snowflake_retry_options() :: %{
        "DurationInSeconds" => integer()
      }
      
  """
  @type snowflake_retry_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      http_endpoint_description() :: %{
        "Name" => String.t(),
        "Url" => String.t()
      }
      
  """
  @type http_endpoint_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_logging_options() :: %{
        "Enabled" => boolean(),
        "LogGroupName" => String.t(),
        "LogStreamName" => String.t()
      }
      
  """
  @type cloud_watch_logging_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_encryption_config() :: %{
        "AWSKMSKeyARN" => String.t()
      }
      
  """
  @type kms_encryption_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_delivery_stream_output() :: %{}
      
  """
  @type delete_delivery_stream_output() :: %{}

  @typedoc """

  ## Example:
      
      orc_ser_de() :: %{
        "BlockSizeBytes" => integer(),
        "BloomFilterColumns" => list(String.t()()),
        "BloomFilterFalsePositiveProbability" => float(),
        "Compression" => list(any()),
        "DictionaryKeyThreshold" => float(),
        "EnablePadding" => boolean(),
        "FormatVersion" => list(any()),
        "PaddingTolerance" => float(),
        "RowIndexStride" => integer(),
        "StripeSizeBytes" => integer()
      }
      
  """
  @type orc_ser_de() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_delivery_stream_encryption_output() :: %{}
      
  """
  @type stop_delivery_stream_encryption_output() :: %{}

  @typedoc """

  ## Example:
      
      amazonopensearchservice_destination_update() :: %{
        "BufferingHints" => amazonopensearchservice_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ClusterEndpoint" => String.t(),
        "DocumentIdOptions" => document_id_options(),
        "DomainARN" => String.t(),
        "IndexName" => String.t(),
        "IndexRotationPeriod" => list(any()),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => amazonopensearchservice_retry_options(),
        "RoleARN" => String.t(),
        "S3Update" => s3_destination_update(),
        "TypeName" => String.t()
      }
      
  """
  @type amazonopensearchservice_destination_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retry_options() :: %{
        "DurationInSeconds" => integer()
      }
      
  """
  @type retry_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_argument_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_argument_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parquet_ser_de() :: %{
        "BlockSizeBytes" => integer(),
        "Compression" => list(any()),
        "EnableDictionaryCompression" => boolean(),
        "MaxPaddingBytes" => integer(),
        "PageSizeBytes" => integer(),
        "WriterVersion" => list(any())
      }
      
  """
  @type parquet_ser_de() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      http_endpoint_common_attribute() :: %{
        "AttributeName" => String.t(),
        "AttributeValue" => String.t()
      }
      
  """
  @type http_endpoint_common_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_destination_description() :: %{
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ClusterJDBCURL" => String.t(),
        "CopyCommand" => copy_command(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => redshift_retry_options(),
        "RoleARN" => String.t(),
        "S3BackupDescription" => s3_destination_description(),
        "S3BackupMode" => list(any()),
        "S3DestinationDescription" => s3_destination_description(),
        "Username" => String.t()
      }
      
  """
  @type redshift_destination_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_destination_configuration() :: %{
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ClusterJDBCURL" => String.t(),
        "CopyCommand" => copy_command(),
        "Password" => String.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => redshift_retry_options(),
        "RoleARN" => String.t(),
        "S3BackupConfiguration" => s3_destination_configuration(),
        "S3BackupMode" => list(any()),
        "S3Configuration" => s3_destination_configuration(),
        "Username" => String.t()
      }
      
  """
  @type redshift_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_format_configuration() :: %{
        "Deserializer" => deserializer()
      }
      
  """
  @type input_format_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_delivery_streams_input() :: %{
        optional("DeliveryStreamType") => list(any()),
        optional("ExclusiveStartDeliveryStreamName") => String.t(),
        optional("Limit") => integer()
      }
      
  """
  @type list_delivery_streams_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schema_configuration() :: %{
        "CatalogId" => String.t(),
        "DatabaseName" => String.t(),
        "Region" => String.t(),
        "RoleARN" => String.t(),
        "TableName" => String.t(),
        "VersionId" => String.t()
      }
      
  """
  @type schema_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_format_conversion_configuration() :: %{
        "Enabled" => boolean(),
        "InputFormatConfiguration" => input_format_configuration(),
        "OutputFormatConfiguration" => output_format_configuration(),
        "SchemaConfiguration" => schema_configuration()
      }
      
  """
  @type data_format_conversion_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_delivery_stream_input() :: %{
        required("DeliveryStreamName") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_delivery_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      amazon_open_search_serverless_destination_update() :: %{
        "BufferingHints" => amazon_open_search_serverless_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "CollectionEndpoint" => String.t(),
        "IndexName" => String.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => amazon_open_search_serverless_retry_options(),
        "RoleARN" => String.t(),
        "S3Update" => s3_destination_update()
      }
      
  """
  @type amazon_open_search_serverless_destination_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_destination_description() :: %{
        "BucketARN" => String.t(),
        "BufferingHints" => buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "CompressionFormat" => list(any()),
        "EncryptionConfiguration" => encryption_configuration(),
        "ErrorOutputPrefix" => String.t(),
        "Prefix" => String.t(),
        "RoleARN" => String.t()
      }
      
  """
  @type s3_destination_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_delivery_stream_output() :: %{}
      
  """
  @type untag_delivery_stream_output() :: %{}

  @typedoc """

  ## Example:
      
      create_delivery_stream_output() :: %{
        "DeliveryStreamARN" => String.t()
      }
      
  """
  @type create_delivery_stream_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_stream_source_configuration() :: %{
        "KinesisStreamARN" => String.t(),
        "RoleARN" => String.t()
      }
      
  """
  @type kinesis_stream_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authentication_configuration() :: %{
        "Connectivity" => list(any()),
        "RoleARN" => String.t()
      }
      
  """
  @type authentication_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      elasticsearch_buffering_hints() :: %{
        "IntervalInSeconds" => integer(),
        "SizeInMBs" => integer()
      }
      
  """
  @type elasticsearch_buffering_hints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      extended_s3_destination_update() :: %{
        "BucketARN" => String.t(),
        "BufferingHints" => buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "CompressionFormat" => list(any()),
        "CustomTimeZone" => String.t(),
        "DataFormatConversionConfiguration" => data_format_conversion_configuration(),
        "DynamicPartitioningConfiguration" => dynamic_partitioning_configuration(),
        "EncryptionConfiguration" => encryption_configuration(),
        "ErrorOutputPrefix" => String.t(),
        "FileExtension" => String.t(),
        "Prefix" => String.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RoleARN" => String.t(),
        "S3BackupMode" => list(any()),
        "S3BackupUpdate" => s3_destination_update()
      }
      
  """
  @type extended_s3_destination_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_record_input() :: %{
        required("DeliveryStreamName") => String.t(),
        required("Record") => record()
      }
      
  """
  @type put_record_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deserializer() :: %{
        "HiveJsonSerDe" => hive_json_ser_de(),
        "OpenXJsonSerDe" => open_x_json_ser_de()
      }
      
  """
  @type deserializer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      amazonopensearchservice_buffering_hints() :: %{
        "IntervalInSeconds" => integer(),
        "SizeInMBs" => integer()
      }
      
  """
  @type amazonopensearchservice_buffering_hints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      splunk_retry_options() :: %{
        "DurationInSeconds" => integer()
      }
      
  """
  @type splunk_retry_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dynamic_partitioning_configuration() :: %{
        "Enabled" => boolean(),
        "RetryOptions" => retry_options()
      }
      
  """
  @type dynamic_partitioning_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      processor_parameter() :: %{
        "ParameterName" => list(any()),
        "ParameterValue" => String.t()
      }
      
  """
  @type processor_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_delivery_stream_output() :: %{
        "DeliveryStreamDescription" => delivery_stream_description()
      }
      
  """
  @type describe_delivery_stream_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      splunk_destination_description() :: %{
        "BufferingHints" => splunk_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "HECAcknowledgmentTimeoutInSeconds" => integer(),
        "HECEndpoint" => String.t(),
        "HECEndpointType" => list(any()),
        "HECToken" => String.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => splunk_retry_options(),
        "S3BackupMode" => list(any()),
        "S3DestinationDescription" => s3_destination_description()
      }
      
  """
  @type splunk_destination_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      serializer() :: %{
        "OrcSerDe" => orc_ser_de(),
        "ParquetSerDe" => parquet_ser_de()
      }
      
  """
  @type serializer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      http_endpoint_destination_update() :: %{
        "BufferingHints" => http_endpoint_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "EndpointConfiguration" => http_endpoint_configuration(),
        "ProcessingConfiguration" => processing_configuration(),
        "RequestConfiguration" => http_endpoint_request_configuration(),
        "RetryOptions" => http_endpoint_retry_options(),
        "RoleARN" => String.t(),
        "S3BackupMode" => list(any()),
        "S3Update" => s3_destination_update()
      }
      
  """
  @type http_endpoint_destination_update() :: %{String.t() => any()}

  @type create_delivery_stream_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | resource_in_use_exception()
          | invalid_kms_resource_exception()

  @type delete_delivery_stream_errors() ::
          resource_not_found_exception() | resource_in_use_exception()

  @type describe_delivery_stream_errors() :: resource_not_found_exception()

  @type list_tags_for_delivery_stream_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()

  @type put_record_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | invalid_source_exception()
          | invalid_kms_resource_exception()

  @type put_record_batch_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | invalid_source_exception()
          | invalid_kms_resource_exception()

  @type start_delivery_stream_encryption_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | invalid_kms_resource_exception()

  @type stop_delivery_stream_encryption_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type tag_delivery_stream_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type untag_delivery_stream_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type update_destination_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  def metadata do
    %{
      api_version: "2015-08-04",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "firehose",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Firehose",
      signature_version: "v4",
      signing_name: "firehose",
      target_prefix: "Firehose_20150804"
    }
  end

  @doc """
  Creates a Firehose delivery stream. By default, you can create up to 50 delivery
  streams per Amazon Web Services Region.
  """
  @spec create_delivery_stream(AWS.Client.t(), create_delivery_stream_input(), Keyword.t()) ::
          {:ok, create_delivery_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_delivery_stream_errors()}
  def create_delivery_stream(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDeliveryStream", input, options)
  end

  @doc """
  Deletes a delivery stream and its data. You can delete a delivery stream only if
  it is in one of the following states: `ACTIVE`, `DELETING`, `CREATING_FAILED`,
  or `DELETING_FAILED`. You can't delete a delivery stream that is in the
  `CREATING` state. To check the state of a delivery stream, use
  `DescribeDeliveryStream`.
  """
  @spec delete_delivery_stream(AWS.Client.t(), delete_delivery_stream_input(), Keyword.t()) ::
          {:ok, delete_delivery_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_delivery_stream_errors()}
  def delete_delivery_stream(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDeliveryStream", input, options)
  end

  @doc """
  Describes the specified delivery stream and its status. For example, after your
  delivery stream is created, call `DescribeDeliveryStream` to see whether the
  delivery stream is `ACTIVE` and therefore ready for data to be sent to it.
  """
  @spec describe_delivery_stream(AWS.Client.t(), describe_delivery_stream_input(), Keyword.t()) ::
          {:ok, describe_delivery_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_delivery_stream_errors()}
  def describe_delivery_stream(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDeliveryStream", input, options)
  end

  @doc """
  Lists your delivery streams in alphabetical order of their names.
  """
  @spec list_delivery_streams(AWS.Client.t(), list_delivery_streams_input(), Keyword.t()) ::
          {:ok, list_delivery_streams_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_delivery_streams(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDeliveryStreams", input, options)
  end

  @doc """
  Lists the tags for the specified delivery stream. This operation has a limit of
  five transactions per second per account.
  """
  @spec list_tags_for_delivery_stream(
          AWS.Client.t(),
          list_tags_for_delivery_stream_input(),
          Keyword.t()
        ) ::
          {:ok, list_tags_for_delivery_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_delivery_stream_errors()}
  def list_tags_for_delivery_stream(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForDeliveryStream", input, options)
  end

  @doc """
  Writes a single data record into an Amazon Firehose delivery stream. To write
  multiple data records into a delivery stream, use `PutRecordBatch`.
  Applications using these operations are referred to as producers. By default,
  each delivery stream can take in up to 2,000 transactions per second, 5,000
  records per second, or 5 MB per second. If you use `PutRecord` and
  `PutRecordBatch`, the limits are an aggregate across these two operations for
  each delivery stream. For more information about limits and how to request an
  increase, see [Amazon Firehose
  Limits](https://docs.aws.amazon.com/firehose/latest/dev/limits.html).
  """
  @spec put_record(AWS.Client.t(), put_record_input(), Keyword.t()) ::
          {:ok, put_record_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_record_errors()}
  def put_record(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutRecord", input, options)
  end

  @doc """
  Writes multiple data records into a delivery stream in a single call, which can
  achieve higher throughput per producer than when writing single records. To
  write single data records into a delivery stream, use `PutRecord`.
  Applications using these operations are referred to as producers. Firehose
  accumulates and publishes a particular metric for a customer account in one
  minute intervals. It is possible that the bursts of incoming bytes/records
  ingested to a delivery stream last only for a few seconds. Due to this, the
  actual spikes in the traffic might not be fully visible in the customer's 1
  minute CloudWatch metrics.
  """
  @spec put_record_batch(AWS.Client.t(), put_record_batch_input(), Keyword.t()) ::
          {:ok, put_record_batch_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_record_batch_errors()}
  def put_record_batch(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutRecordBatch", input, options)
  end

  @doc """
  Enables server-side encryption (SSE) for the delivery stream. This operation is
  asynchronous. It returns immediately. When you invoke it, Firehose first sets
  the encryption status of the stream to `ENABLING`, and then to `ENABLED`. The
  encryption status of a delivery stream is the `Status` property in
  `DeliveryStreamEncryptionConfiguration`. If the operation fails, the
  encryption status changes to `ENABLING_FAILED`. You can continue to read and
  write data to your delivery stream while the encryption status is `ENABLING`,
  but the data is not encrypted. It can take up to 5 seconds after the
  encryption status changes to `ENABLED` before all records written to the
  delivery stream are encrypted. To find out whether a record or a batch of
  records was encrypted, check the response elements `PutRecordOutput$Encrypted`
  and `PutRecordBatchOutput$Encrypted`, respectively.
  """
  @spec start_delivery_stream_encryption(
          AWS.Client.t(),
          start_delivery_stream_encryption_input(),
          Keyword.t()
        ) ::
          {:ok, start_delivery_stream_encryption_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_delivery_stream_encryption_errors()}
  def start_delivery_stream_encryption(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartDeliveryStreamEncryption", input, options)
  end

  @doc """
  Disables server-side encryption (SSE) for the delivery stream. This operation is
  asynchronous. It returns immediately. When you invoke it, Firehose first sets
  the encryption status of the stream to `DISABLING`, and then to `DISABLED`.
  You can continue to read and write data to your stream while its status is
  `DISABLING`. It can take up to 5 seconds after the encryption status changes
  to `DISABLED` before all records written to the delivery stream are no longer
  subject to encryption. To find out whether a record or a batch of records was
  encrypted, check the response elements `PutRecordOutput$Encrypted` and
  `PutRecordBatchOutput$Encrypted`, respectively.
  """
  @spec stop_delivery_stream_encryption(
          AWS.Client.t(),
          stop_delivery_stream_encryption_input(),
          Keyword.t()
        ) ::
          {:ok, stop_delivery_stream_encryption_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_delivery_stream_encryption_errors()}
  def stop_delivery_stream_encryption(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopDeliveryStreamEncryption", input, options)
  end

  @doc """
  Adds or updates tags for the specified delivery stream. A tag is a key-value
  pair that you can define and assign to Amazon Web Services resources. If you
  specify a tag that already exists, the tag value is replaced with the value
  that you specify in the request. Tags are metadata. For example, you can add
  friendly names and descriptions or other types of information that can help
  you distinguish the delivery stream. For more information about tags, see
  [Using Cost Allocation
  Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  in the *Amazon Web Services Billing and Cost Management User Guide*. Each
  delivery stream can have up to 50 tags.
  """
  @spec tag_delivery_stream(AWS.Client.t(), tag_delivery_stream_input(), Keyword.t()) ::
          {:ok, tag_delivery_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_delivery_stream_errors()}
  def tag_delivery_stream(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagDeliveryStream", input, options)
  end

  @doc """
  Removes tags from the specified delivery stream. Removed tags are deleted, and
  you can't recover them after this operation successfully completes. If you
  specify a tag that doesn't exist, the operation ignores it.
  """
  @spec untag_delivery_stream(AWS.Client.t(), untag_delivery_stream_input(), Keyword.t()) ::
          {:ok, untag_delivery_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_delivery_stream_errors()}
  def untag_delivery_stream(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagDeliveryStream", input, options)
  end

  @doc """
  Updates the specified destination of the specified delivery stream. Use this
  operation to change the destination type (for example, to replace the Amazon
  S3 destination with Amazon Redshift) or change the parameters associated with
  a destination (for example, to change the bucket name of the Amazon S3
  destination). The update might not occur immediately. The target delivery
  stream remains active while the configurations are updated, so data writes to
  the delivery stream can continue during this process. The updated
  configurations are usually effective within a few minutes.
  """
  @spec update_destination(AWS.Client.t(), update_destination_input(), Keyword.t()) ::
          {:ok, update_destination_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_destination_errors()}
  def update_destination(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDestination", input, options)
  end
end
