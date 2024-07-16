# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KinesisAnalyticsV2 do
  @moduledoc """
  Amazon Managed Service for Apache Flink was previously known as Amazon Kinesis
  Data Analytics for Apache Flink.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      monitoring_configuration_description() :: %{
        "ConfigurationType" => list(any()),
        "LogLevel" => list(any()),
        "MetricsLevel" => list(any())
      }
      
  """
  @type monitoring_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_parallelism_update() :: %{
        "CountUpdate" => integer()
      }
      
  """
  @type input_parallelism_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_application_vpc_configuration_response() :: %{
        "ApplicationARN" => String.t(),
        "ApplicationVersionId" => float(),
        "OperationId" => String.t(),
        "VpcConfigurationDescription" => vpc_configuration_description()
      }
      
  """
  @type add_application_vpc_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_maintenance_configuration_update() :: %{
        "ApplicationMaintenanceWindowStartTimeUpdate" => String.t()
      }
      
  """
  @type application_maintenance_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_update() :: %{
        "InputId" => String.t(),
        "InputParallelismUpdate" => input_parallelism_update(),
        "InputProcessingConfigurationUpdate" => input_processing_configuration_update(),
        "InputSchemaUpdate" => input_schema_update(),
        "KinesisFirehoseInputUpdate" => kinesis_firehose_input_update(),
        "KinesisStreamsInputUpdate" => kinesis_streams_input_update(),
        "NamePrefixUpdate" => String.t()
      }
      
  """
  @type input_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      zeppelin_monitoring_configuration() :: %{
        "LogLevel" => list(any())
      }
      
  """
  @type zeppelin_monitoring_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_detail() :: %{
        "ApplicationARN" => String.t(),
        "ApplicationConfigurationDescription" => application_configuration_description(),
        "ApplicationDescription" => String.t(),
        "ApplicationMaintenanceConfigurationDescription" => application_maintenance_configuration_description(),
        "ApplicationMode" => list(any()),
        "ApplicationName" => String.t(),
        "ApplicationStatus" => list(any()),
        "ApplicationVersionCreateTimestamp" => non_neg_integer(),
        "ApplicationVersionId" => float(),
        "ApplicationVersionRolledBackFrom" => float(),
        "ApplicationVersionRolledBackTo" => float(),
        "ApplicationVersionUpdatedFrom" => float(),
        "CloudWatchLoggingOptionDescriptions" => list(cloud_watch_logging_option_description()()),
        "ConditionalToken" => String.t(),
        "CreateTimestamp" => non_neg_integer(),
        "LastUpdateTimestamp" => non_neg_integer(),
        "RuntimeEnvironment" => list(any()),
        "ServiceExecutionRole" => String.t()
      }
      
  """
  @type application_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_snapshot_configuration() :: %{
        "SnapshotsEnabled" => boolean()
      }
      
  """
  @type application_snapshot_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_operation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type unsupported_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      glue_data_catalog_configuration_description() :: %{
        "DatabaseARN" => String.t()
      }
      
  """
  @type glue_data_catalog_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parallelism_configuration_update() :: %{
        "AutoScalingEnabledUpdate" => boolean(),
        "ConfigurationTypeUpdate" => list(any()),
        "ParallelismPerKPUUpdate" => integer(),
        "ParallelismUpdate" => integer()
      }
      
  """
  @type parallelism_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deploy_as_application_configuration_update() :: %{
        "S3ContentLocationUpdate" => s3_content_base_location_update()
      }
      
  """
  @type deploy_as_application_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      glue_data_catalog_configuration() :: %{
        "DatabaseARN" => String.t()
      }
      
  """
  @type glue_data_catalog_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_configuration() :: %{
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()())
      }
      
  """
  @type vpc_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_artifact_configuration() :: %{
        "ArtifactType" => list(any()),
        "MavenReference" => maven_reference(),
        "S3ContentLocation" => s3_content_location()
      }
      
  """
  @type custom_artifact_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      add_application_input_processing_configuration_response() :: %{
        "ApplicationARN" => String.t(),
        "ApplicationVersionId" => float(),
        "InputId" => String.t(),
        "InputProcessingConfigurationDescription" => input_processing_configuration_description()
      }
      
  """
  @type add_application_input_processing_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      property_group() :: %{
        "PropertyGroupId" => String.t(),
        "PropertyMap" => map()
      }
      
  """
  @type property_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      flink_run_configuration() :: %{
        "AllowNonRestoredState" => boolean()
      }
      
  """
  @type flink_run_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      catalog_configuration_description() :: %{
        "GlueDataCatalogConfigurationDescription" => glue_data_catalog_configuration_description()
      }
      
  """
  @type catalog_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_logging_option_description() :: %{
        "CloudWatchLoggingOptionId" => String.t(),
        "LogStreamARN" => String.t(),
        "RoleARN" => String.t()
      }
      
  """
  @type cloud_watch_logging_option_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_application_cloud_watch_logging_option_response() :: %{
        "ApplicationARN" => String.t(),
        "ApplicationVersionId" => float(),
        "CloudWatchLoggingOptionDescriptions" => list(cloud_watch_logging_option_description()()),
        "OperationId" => String.t()
      }
      
  """
  @type add_application_cloud_watch_logging_option_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_schema_update() :: %{
        "RecordColumnUpdates" => list(record_column()()),
        "RecordEncodingUpdate" => String.t(),
        "RecordFormatUpdate" => record_format()
      }
      
  """
  @type input_schema_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      discover_input_schema_response() :: %{
        "InputSchema" => source_schema(),
        "ParsedInputRecords" => list(list(String.t()())()),
        "ProcessedInputRecords" => list(String.t()()),
        "RawInputRecords" => list(String.t()())
      }
      
  """
  @type discover_input_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sql_application_configuration_update() :: %{
        "InputUpdates" => list(input_update()()),
        "OutputUpdates" => list(output_update()()),
        "ReferenceDataSourceUpdates" => list(reference_data_source_update()())
      }
      
  """
  @type sql_application_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_application_vpc_configuration_request() :: %{
        optional("ConditionalToken") => String.t(),
        optional("CurrentApplicationVersionId") => float(),
        required("ApplicationName") => String.t(),
        required("VpcConfiguration") => vpc_configuration()
      }
      
  """
  @type add_application_vpc_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_provisioned_throughput_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_provisioned_throughput_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_artifact_configuration_description() :: %{
        "ArtifactType" => list(any()),
        "MavenReferenceDescription" => maven_reference(),
        "S3ContentLocationDescription" => s3_content_location()
      }
      
  """
  @type custom_artifact_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_application_operation_request() :: %{
        required("ApplicationName") => String.t(),
        required("OperationId") => String.t()
      }
      
  """
  @type describe_application_operation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_application_version_response() :: %{
        "ApplicationVersionDetail" => application_detail()
      }
      
  """
  @type describe_application_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_reference_data_source_response() :: %{
        "ApplicationARN" => String.t(),
        "ApplicationVersionId" => float()
      }
      
  """
  @type delete_application_reference_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_starting_position_configuration() :: %{
        "InputStartingPosition" => list(any())
      }
      
  """
  @type input_starting_position_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_configuration_description() :: %{
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()()),
        "VpcConfigurationId" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type vpc_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      zeppelin_monitoring_configuration_description() :: %{
        "LogLevel" => list(any())
      }
      
  """
  @type zeppelin_monitoring_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_application_input_response() :: %{
        "ApplicationARN" => String.t(),
        "ApplicationVersionId" => float(),
        "InputDescriptions" => list(input_description()())
      }
      
  """
  @type add_application_input_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      zeppelin_application_configuration_description() :: %{
        "CatalogConfigurationDescription" => catalog_configuration_description(),
        "CustomArtifactsConfigurationDescription" => list(custom_artifact_configuration_description()()),
        "DeployAsApplicationConfigurationDescription" => deploy_as_application_configuration_description(),
        "MonitoringConfigurationDescription" => zeppelin_monitoring_configuration_description()
      }
      
  """
  @type zeppelin_application_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_firehose_input_description() :: %{
        "ResourceARN" => String.t(),
        "RoleARN" => String.t()
      }
      
  """
  @type kinesis_firehose_input_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_configuration_update() :: %{
        "SecurityGroupIdUpdates" => list(String.t()()),
        "SubnetIdUpdates" => list(String.t()()),
        "VpcConfigurationId" => String.t()
      }
      
  """
  @type vpc_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_firehose_output_description() :: %{
        "ResourceARN" => String.t(),
        "RoleARN" => String.t()
      }
      
  """
  @type kinesis_firehose_output_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_firehose_input_update() :: %{
        "ResourceARNUpdate" => String.t()
      }
      
  """
  @type kinesis_firehose_input_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_logging_option_update() :: %{
        "CloudWatchLoggingOptionId" => String.t(),
        "LogStreamARNUpdate" => String.t()
      }
      
  """
  @type cloud_watch_logging_option_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_content_description() :: %{
        "CodeMD5" => String.t(),
        "CodeSize" => float(),
        "S3ApplicationCodeLocationDescription" => s3_application_code_location_description(),
        "TextContent" => String.t()
      }
      
  """
  @type code_content_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_system_rollback_configuration() :: %{
        "RollbackEnabled" => boolean()
      }
      
  """
  @type application_system_rollback_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_application_operation_response() :: %{
        "ApplicationOperationInfoDetails" => application_operation_info_details()
      }
      
  """
  @type describe_application_operation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_version_summary() :: %{
        "ApplicationStatus" => list(any()),
        "ApplicationVersionId" => float()
      }
      
  """
  @type application_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_streams_input_update() :: %{
        "ResourceARNUpdate" => String.t()
      }
      
  """
  @type kinesis_streams_input_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_application_snapshots_response() :: %{
        "NextToken" => String.t(),
        "SnapshotSummaries" => list(snapshot_details()())
      }
      
  """
  @type list_application_snapshots_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_processing_configuration() :: %{
        "InputLambdaProcessor" => input_lambda_processor()
      }
      
  """
  @type input_processing_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_input_processing_configuration_request() :: %{
        required("ApplicationName") => String.t(),
        required("CurrentApplicationVersionId") => float(),
        required("InputId") => String.t()
      }
      
  """
  @type delete_application_input_processing_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_description() :: %{
        "DestinationSchema" => destination_schema(),
        "KinesisFirehoseOutputDescription" => kinesis_firehose_output_description(),
        "KinesisStreamsOutputDescription" => kinesis_streams_output_description(),
        "LambdaOutputDescription" => lambda_output_description(),
        "Name" => String.t(),
        "OutputId" => String.t()
      }
      
  """
  @type output_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_configuration() :: %{
        "ConfigurationType" => list(any()),
        "LogLevel" => list(any()),
        "MetricsLevel" => list(any())
      }
      
  """
  @type monitoring_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      error_info() :: %{
        "ErrorString" => String.t()
      }
      
  """
  @type error_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_cloud_watch_logging_option_request() :: %{
        optional("ConditionalToken") => String.t(),
        optional("CurrentApplicationVersionId") => float(),
        required("ApplicationName") => String.t(),
        required("CloudWatchLoggingOptionId") => String.t()
      }
      
  """
  @type delete_application_cloud_watch_logging_option_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_streams_output() :: %{
        "ResourceARN" => String.t()
      }
      
  """
  @type kinesis_streams_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_firehose_output() :: %{
        "ResourceARN" => String.t()
      }
      
  """
  @type kinesis_firehose_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unable_to_detect_schema_exception() :: %{
        "Message" => String.t(),
        "ProcessedInputRecords" => list(String.t()()),
        "RawInputRecords" => list(String.t()())
      }
      
  """
  @type unable_to_detect_schema_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_application_presigned_url_response() :: %{
        "AuthorizedUrl" => String.t()
      }
      
  """
  @type create_application_presigned_url_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_application_snapshot_response() :: %{
        "SnapshotDetails" => snapshot_details()
      }
      
  """
  @type describe_application_snapshot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_application_snapshot_request() :: %{
        required("ApplicationName") => String.t(),
        required("SnapshotName") => String.t()
      }
      
  """
  @type create_application_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reference_data_source() :: %{
        "ReferenceSchema" => source_schema(),
        "S3ReferenceDataSource" => s3_reference_data_source(),
        "TableName" => String.t()
      }
      
  """
  @type reference_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      destination_schema() :: %{
        "RecordFormatType" => list(any())
      }
      
  """
  @type destination_schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_output_update() :: %{
        "ResourceARNUpdate" => String.t()
      }
      
  """
  @type lambda_output_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      discover_input_schema_request() :: %{
        optional("InputProcessingConfiguration") => input_processing_configuration(),
        optional("InputStartingPositionConfiguration") => input_starting_position_configuration(),
        optional("ResourceARN") => String.t(),
        optional("S3Configuration") => s3_configuration(),
        required("ServiceExecutionRole") => String.t()
      }
      
  """
  @type discover_input_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_lambda_processor() :: %{
        "ResourceARN" => String.t()
      }
      
  """
  @type input_lambda_processor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_code_configuration_description() :: %{
        "CodeContentDescription" => code_content_description(),
        "CodeContentType" => list(any())
      }
      
  """
  @type application_code_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input() :: %{
        "InputParallelism" => input_parallelism(),
        "InputProcessingConfiguration" => input_processing_configuration(),
        "InputSchema" => source_schema(),
        "KinesisFirehoseInput" => kinesis_firehose_input(),
        "KinesisStreamsInput" => kinesis_streams_input(),
        "NamePrefix" => String.t()
      }
      
  """
  @type input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_restore_configuration() :: %{
        "ApplicationRestoreType" => list(any()),
        "SnapshotName" => String.t()
      }
      
  """
  @type application_restore_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_snapshot_configuration_description() :: %{
        "SnapshotsEnabled" => boolean()
      }
      
  """
  @type application_snapshot_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_application_presigned_url_request() :: %{
        optional("SessionExpirationDurationInSeconds") => float(),
        required("ApplicationName") => String.t(),
        required("UrlType") => list(any())
      }
      
  """
  @type create_application_presigned_url_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_reference_data_source() :: %{
        "BucketARN" => String.t(),
        "FileKey" => String.t()
      }
      
  """
  @type s3_reference_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      flink_application_configuration_update() :: %{
        "CheckpointConfigurationUpdate" => checkpoint_configuration_update(),
        "MonitoringConfigurationUpdate" => monitoring_configuration_update(),
        "ParallelismConfigurationUpdate" => parallelism_configuration_update()
      }
      
  """
  @type flink_application_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      run_configuration() :: %{
        "ApplicationRestoreConfiguration" => application_restore_configuration(),
        "FlinkRunConfiguration" => flink_run_configuration(),
        "SqlRunConfigurations" => list(sql_run_configuration()())
      }
      
  """
  @type run_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_properties() :: %{
        "PropertyGroups" => list(property_group()())
      }
      
  """
  @type environment_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_application_code_location_description() :: %{
        "BucketARN" => String.t(),
        "FileKey" => String.t(),
        "ObjectVersion" => String.t()
      }
      
  """
  @type s3_application_code_location_description() :: %{String.t() => any()}

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
        "Message" => String.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      flink_application_configuration() :: %{
        "CheckpointConfiguration" => checkpoint_configuration(),
        "MonitoringConfiguration" => monitoring_configuration(),
        "ParallelismConfiguration" => parallelism_configuration()
      }
      
  """
  @type flink_application_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      run_configuration_update() :: %{
        "ApplicationRestoreConfiguration" => application_restore_configuration(),
        "FlinkRunConfiguration" => flink_run_configuration()
      }
      
  """
  @type run_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_configuration() :: %{
        "ApplicationCodeConfiguration" => application_code_configuration(),
        "ApplicationSnapshotConfiguration" => application_snapshot_configuration(),
        "ApplicationSystemRollbackConfiguration" => application_system_rollback_configuration(),
        "EnvironmentProperties" => environment_properties(),
        "FlinkApplicationConfiguration" => flink_application_configuration(),
        "SqlApplicationConfiguration" => sql_application_configuration(),
        "VpcConfigurations" => list(vpc_configuration()()),
        "ZeppelinApplicationConfiguration" => zeppelin_application_configuration()
      }
      
  """
  @type application_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_application_request() :: %{
        optional("Force") => boolean(),
        required("ApplicationName") => String.t()
      }
      
  """
  @type stop_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_lambda_processor_update() :: %{
        "ResourceARNUpdate" => String.t()
      }
      
  """
  @type input_lambda_processor_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      checkpoint_configuration_update() :: %{
        "CheckpointIntervalUpdate" => float(),
        "CheckpointingEnabledUpdate" => boolean(),
        "ConfigurationTypeUpdate" => list(any()),
        "MinPauseBetweenCheckpointsUpdate" => float()
      }
      
  """
  @type checkpoint_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rollback_application_response() :: %{
        "ApplicationDetail" => application_detail(),
        "OperationId" => String.t()
      }
      
  """
  @type rollback_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      csv_mapping_parameters() :: %{
        "RecordColumnDelimiter" => String.t(),
        "RecordRowDelimiter" => String.t()
      }
      
  """
  @type csv_mapping_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_operation_info_details() :: %{
        "ApplicationVersionChangeDetails" => application_version_change_details(),
        "EndTime" => non_neg_integer(),
        "Operation" => String.t(),
        "OperationFailureDetails" => operation_failure_details(),
        "OperationStatus" => list(any()),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type application_operation_info_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_update() :: %{
        "DestinationSchemaUpdate" => destination_schema(),
        "KinesisFirehoseOutputUpdate" => kinesis_firehose_output_update(),
        "KinesisStreamsOutputUpdate" => kinesis_streams_output_update(),
        "LambdaOutputUpdate" => lambda_output_update(),
        "NameUpdate" => String.t(),
        "OutputId" => String.t()
      }
      
  """
  @type output_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_snapshot_request() :: %{
        required("ApplicationName") => String.t(),
        required("SnapshotCreationTimestamp") => non_neg_integer(),
        required("SnapshotName") => String.t()
      }
      
  """
  @type delete_application_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      json_mapping_parameters() :: %{
        "RecordRowPath" => String.t()
      }
      
  """
  @type json_mapping_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_cloud_watch_logging_option_response() :: %{
        "ApplicationARN" => String.t(),
        "ApplicationVersionId" => float(),
        "CloudWatchLoggingOptionDescriptions" => list(cloud_watch_logging_option_description()()),
        "OperationId" => String.t()
      }
      
  """
  @type delete_application_cloud_watch_logging_option_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sql_run_configuration() :: %{
        "InputId" => String.t(),
        "InputStartingPositionConfiguration" => input_starting_position_configuration()
      }
      
  """
  @type sql_run_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_application_request() :: %{
        optional("ApplicationConfiguration") => application_configuration(),
        optional("ApplicationDescription") => String.t(),
        optional("ApplicationMode") => list(any()),
        optional("CloudWatchLoggingOptions") => list(cloud_watch_logging_option()()),
        optional("Tags") => list(tag()()),
        required("ApplicationName") => String.t(),
        required("RuntimeEnvironment") => list(any()),
        required("ServiceExecutionRole") => String.t()
      }
      
  """
  @type create_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_vpc_configuration_response() :: %{
        "ApplicationARN" => String.t(),
        "ApplicationVersionId" => float(),
        "OperationId" => String.t()
      }
      
  """
  @type delete_application_vpc_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_application_reference_data_source_request() :: %{
        required("ApplicationName") => String.t(),
        required("CurrentApplicationVersionId") => float(),
        required("ReferenceDataSource") => reference_data_source()
      }
      
  """
  @type add_application_reference_data_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_reference_data_source_request() :: %{
        required("ApplicationName") => String.t(),
        required("CurrentApplicationVersionId") => float(),
        required("ReferenceId") => String.t()
      }
      
  """
  @type delete_application_reference_data_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_application_response() :: %{
        "ApplicationDetail" => application_detail()
      }
      
  """
  @type create_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_application_output_response() :: %{
        "ApplicationARN" => String.t(),
        "ApplicationVersionId" => float(),
        "OutputDescriptions" => list(output_description()())
      }
      
  """
  @type add_application_output_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_streams_input_description() :: %{
        "ResourceARN" => String.t(),
        "RoleARN" => String.t()
      }
      
  """
  @type kinesis_streams_input_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_application_snapshot_request() :: %{
        required("ApplicationName") => String.t(),
        required("SnapshotName") => String.t()
      }
      
  """
  @type describe_application_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_application_operations_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("Operation") => String.t(),
        optional("OperationStatus") => list(any()),
        required("ApplicationName") => String.t()
      }
      
  """
  @type list_application_operations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_application_input_request() :: %{
        required("ApplicationName") => String.t(),
        required("CurrentApplicationVersionId") => float(),
        required("Input") => input()
      }
      
  """
  @type add_application_input_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_response() :: %{}
      
  """
  @type delete_application_response() :: %{}

  @typedoc """

  ## Example:
      
      application_system_rollback_configuration_update() :: %{
        "RollbackEnabledUpdate" => boolean()
      }
      
  """
  @type application_system_rollback_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_application_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type start_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_content_base_location_description() :: %{
        "BasePath" => String.t(),
        "BucketARN" => String.t()
      }
      
  """
  @type s3_content_base_location_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      zeppelin_application_configuration() :: %{
        "CatalogConfiguration" => catalog_configuration(),
        "CustomArtifactsConfiguration" => list(custom_artifact_configuration()()),
        "DeployAsApplicationConfiguration" => deploy_as_application_configuration(),
        "MonitoringConfiguration" => zeppelin_monitoring_configuration()
      }
      
  """
  @type zeppelin_application_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_content_location_update() :: %{
        "BucketARNUpdate" => String.t(),
        "FileKeyUpdate" => String.t(),
        "ObjectVersionUpdate" => String.t()
      }
      
  """
  @type s3_content_location_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_application_operations_response() :: %{
        "ApplicationOperationInfoList" => list(application_operation_info()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_application_operations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_application_version_request() :: %{
        required("ApplicationName") => String.t(),
        required("ApplicationVersionId") => float()
      }
      
  """
  @type describe_application_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_application_request() :: %{
        optional("ApplicationConfigurationUpdate") => application_configuration_update(),
        optional("CloudWatchLoggingOptionUpdates") => list(cloud_watch_logging_option_update()()),
        optional("ConditionalToken") => String.t(),
        optional("CurrentApplicationVersionId") => float(),
        optional("RunConfigurationUpdate") => run_configuration_update(),
        optional("RuntimeEnvironmentUpdate") => list(any()),
        optional("ServiceExecutionRoleUpdate") => String.t(),
        required("ApplicationName") => String.t()
      }
      
  """
  @type update_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_application_response() :: %{
        "ApplicationDetail" => application_detail(),
        "OperationId" => String.t()
      }
      
  """
  @type update_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parallelism_configuration() :: %{
        "AutoScalingEnabled" => boolean(),
        "ConfigurationType" => list(any()),
        "Parallelism" => integer(),
        "ParallelismPerKPU" => integer()
      }
      
  """
  @type parallelism_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_application_request() :: %{
        optional("IncludeAdditionalDetails") => boolean(),
        required("ApplicationName") => String.t()
      }
      
  """
  @type describe_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      zeppelin_monitoring_configuration_update() :: %{
        "LogLevelUpdate" => list(any())
      }
      
  """
  @type zeppelin_monitoring_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_application_request() :: %{
        optional("RunConfiguration") => run_configuration(),
        required("ApplicationName") => String.t()
      }
      
  """
  @type start_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_validation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type code_validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_lambda_processor_description() :: %{
        "ResourceARN" => String.t(),
        "RoleARN" => String.t()
      }
      
  """
  @type input_lambda_processor_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      checkpoint_configuration() :: %{
        "CheckpointInterval" => float(),
        "CheckpointingEnabled" => boolean(),
        "ConfigurationType" => list(any()),
        "MinPauseBetweenCheckpoints" => float()
      }
      
  """
  @type checkpoint_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_parallelism() :: %{
        "Count" => integer()
      }
      
  """
  @type input_parallelism() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_logging_option() :: %{
        "LogStreamARN" => String.t()
      }
      
  """
  @type cloud_watch_logging_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_applications_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_content() :: %{
        "S3ContentLocation" => s3_content_location(),
        "TextContent" => String.t(),
        "ZipFileContent" => binary()
      }
      
  """
  @type code_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reference_data_source_update() :: %{
        "ReferenceId" => String.t(),
        "ReferenceSchemaUpdate" => source_schema(),
        "S3ReferenceDataSourceUpdate" => s3_reference_data_source_update(),
        "TableNameUpdate" => String.t()
      }
      
  """
  @type reference_data_source_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_reference_data_source_description() :: %{
        "BucketARN" => String.t(),
        "FileKey" => String.t(),
        "ReferenceRoleARN" => String.t()
      }
      
  """
  @type s3_reference_data_source_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_property_descriptions() :: %{
        "PropertyGroupDescriptions" => list(property_group()())
      }
      
  """
  @type environment_property_descriptions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      zeppelin_application_configuration_update() :: %{
        "CatalogConfigurationUpdate" => catalog_configuration_update(),
        "CustomArtifactsConfigurationUpdate" => list(custom_artifact_configuration()()),
        "DeployAsApplicationConfigurationUpdate" => deploy_as_application_configuration_update(),
        "MonitoringConfigurationUpdate" => zeppelin_monitoring_configuration_update()
      }
      
  """
  @type zeppelin_application_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_streams_output_update() :: %{
        "ResourceARNUpdate" => String.t()
      }
      
  """
  @type kinesis_streams_output_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_application_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type stop_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_code_configuration() :: %{
        "CodeContent" => code_content(),
        "CodeContentType" => list(any())
      }
      
  """
  @type application_code_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      catalog_configuration() :: %{
        "GlueDataCatalogConfiguration" => glue_data_catalog_configuration()
      }
      
  """
  @type catalog_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deploy_as_application_configuration() :: %{
        "S3ContentLocation" => s3_content_base_location()
      }
      
  """
  @type deploy_as_application_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_application_cloud_watch_logging_option_request() :: %{
        optional("ConditionalToken") => String.t(),
        optional("CurrentApplicationVersionId") => float(),
        required("ApplicationName") => String.t(),
        required("CloudWatchLoggingOption") => cloud_watch_logging_option()
      }
      
  """
  @type add_application_cloud_watch_logging_option_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_application_maintenance_configuration_response() :: %{
        "ApplicationARN" => String.t(),
        "ApplicationMaintenanceConfigurationDescription" => application_maintenance_configuration_description()
      }
      
  """
  @type update_application_maintenance_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_argument_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_argument_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_snapshot_configuration_update() :: %{
        "SnapshotsEnabledUpdate" => boolean()
      }
      
  """
  @type application_snapshot_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_application_configuration_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_application_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_snapshot_response() :: %{}
      
  """
  @type delete_application_snapshot_response() :: %{}

  @typedoc """

  ## Example:
      
      operation_failure_details() :: %{
        "ErrorInfo" => error_info(),
        "RollbackOperationId" => String.t()
      }
      
  """
  @type operation_failure_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_maintenance_configuration_description() :: %{
        "ApplicationMaintenanceWindowEndTime" => String.t(),
        "ApplicationMaintenanceWindowStartTime" => String.t()
      }
      
  """
  @type application_maintenance_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_property_updates() :: %{
        "PropertyGroups" => list(property_group()())
      }
      
  """
  @type environment_property_updates() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_processing_configuration_description() :: %{
        "InputLambdaProcessorDescription" => input_lambda_processor_description()
      }
      
  """
  @type input_processing_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_system_rollback_configuration_description() :: %{
        "RollbackEnabled" => boolean()
      }
      
  """
  @type application_system_rollback_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      checkpoint_configuration_description() :: %{
        "CheckpointInterval" => float(),
        "CheckpointingEnabled" => boolean(),
        "ConfigurationType" => list(any()),
        "MinPauseBetweenCheckpoints" => float()
      }
      
  """
  @type checkpoint_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rollback_application_request() :: %{
        required("ApplicationName") => String.t(),
        required("CurrentApplicationVersionId") => float()
      }
      
  """
  @type rollback_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_schema() :: %{
        "RecordColumns" => list(record_column()()),
        "RecordEncoding" => String.t(),
        "RecordFormat" => record_format()
      }
      
  """
  @type source_schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mapping_parameters() :: %{
        "CSVMappingParameters" => csv_mapping_parameters(),
        "JSONMappingParameters" => json_mapping_parameters()
      }
      
  """
  @type mapping_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_input_processing_configuration_response() :: %{
        "ApplicationARN" => String.t(),
        "ApplicationVersionId" => float()
      }
      
  """
  @type delete_application_input_processing_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_application_versions_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ApplicationName") => String.t()
      }
      
  """
  @type list_application_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_description() :: %{
        "InAppStreamNames" => list(String.t()()),
        "InputId" => String.t(),
        "InputParallelism" => input_parallelism(),
        "InputProcessingConfigurationDescription" => input_processing_configuration_description(),
        "InputSchema" => source_schema(),
        "InputStartingPositionConfiguration" => input_starting_position_configuration(),
        "KinesisFirehoseInputDescription" => kinesis_firehose_input_description(),
        "KinesisStreamsInputDescription" => kinesis_streams_input_description(),
        "NamePrefix" => String.t()
      }
      
  """
  @type input_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_vpc_configuration_request() :: %{
        optional("ConditionalToken") => String.t(),
        optional("CurrentApplicationVersionId") => float(),
        required("ApplicationName") => String.t(),
        required("VpcConfigurationId") => String.t()
      }
      
  """
  @type delete_application_vpc_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_output() :: %{
        "ResourceARN" => String.t()
      }
      
  """
  @type lambda_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_configuration() :: %{
        "BucketARN" => String.t(),
        "FileKey" => String.t()
      }
      
  """
  @type s3_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_version_change_details() :: %{
        "ApplicationVersionUpdatedFrom" => float(),
        "ApplicationVersionUpdatedTo" => float()
      }
      
  """
  @type application_version_change_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_summary() :: %{
        "ApplicationARN" => String.t(),
        "ApplicationMode" => list(any()),
        "ApplicationName" => String.t(),
        "ApplicationStatus" => list(any()),
        "ApplicationVersionId" => float(),
        "RuntimeEnvironment" => list(any())
      }
      
  """
  @type application_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_streams_output_description() :: %{
        "ResourceARN" => String.t(),
        "RoleARN" => String.t()
      }
      
  """
  @type kinesis_streams_output_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_operation_info() :: %{
        "EndTime" => non_neg_integer(),
        "Operation" => String.t(),
        "OperationId" => String.t(),
        "OperationStatus" => list(any()),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type application_operation_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_configuration_description() :: %{
        "ApplicationCodeConfigurationDescription" => application_code_configuration_description(),
        "ApplicationSnapshotConfigurationDescription" => application_snapshot_configuration_description(),
        "ApplicationSystemRollbackConfigurationDescription" => application_system_rollback_configuration_description(),
        "EnvironmentPropertyDescriptions" => environment_property_descriptions(),
        "FlinkApplicationConfigurationDescription" => flink_application_configuration_description(),
        "RunConfigurationDescription" => run_configuration_description(),
        "SqlApplicationConfigurationDescription" => sql_application_configuration_description(),
        "VpcConfigurationDescriptions" => list(vpc_configuration_description()()),
        "ZeppelinApplicationConfigurationDescription" => zeppelin_application_configuration_description()
      }
      
  """
  @type application_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_code_configuration_update() :: %{
        "CodeContentTypeUpdate" => list(any()),
        "CodeContentUpdate" => code_content_update()
      }
      
  """
  @type application_code_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      record_format() :: %{
        "MappingParameters" => mapping_parameters(),
        "RecordFormatType" => list(any())
      }
      
  """
  @type record_format() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      maven_reference() :: %{
        "ArtifactId" => String.t(),
        "GroupId" => String.t(),
        "Version" => String.t()
      }
      
  """
  @type maven_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_applications_response() :: %{
        "ApplicationSummaries" => list(application_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_output_description() :: %{
        "ResourceARN" => String.t(),
        "RoleARN" => String.t()
      }
      
  """
  @type lambda_output_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parallelism_configuration_description() :: %{
        "AutoScalingEnabled" => boolean(),
        "ConfigurationType" => list(any()),
        "CurrentParallelism" => integer(),
        "Parallelism" => integer(),
        "ParallelismPerKPU" => integer()
      }
      
  """
  @type parallelism_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_application_versions_response() :: %{
        "ApplicationVersionSummaries" => list(application_version_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_application_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_application_snapshot_response() :: %{}
      
  """
  @type create_application_snapshot_response() :: %{}

  @typedoc """

  ## Example:
      
      glue_data_catalog_configuration_update() :: %{
        "DatabaseARNUpdate" => String.t()
      }
      
  """
  @type glue_data_catalog_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_output_request() :: %{
        required("ApplicationName") => String.t(),
        required("CurrentApplicationVersionId") => float(),
        required("OutputId") => String.t()
      }
      
  """
  @type delete_application_output_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monitoring_configuration_update() :: %{
        "ConfigurationTypeUpdate" => list(any()),
        "LogLevelUpdate" => list(any()),
        "MetricsLevelUpdate" => list(any())
      }
      
  """
  @type monitoring_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_streams_input() :: %{
        "ResourceARN" => String.t()
      }
      
  """
  @type kinesis_streams_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_reference_data_source_update() :: %{
        "BucketARNUpdate" => String.t(),
        "FileKeyUpdate" => String.t()
      }
      
  """
  @type s3_reference_data_source_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_firehose_input() :: %{
        "ResourceARN" => String.t()
      }
      
  """
  @type kinesis_firehose_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_application_output_request() :: %{
        required("ApplicationName") => String.t(),
        required("CurrentApplicationVersionId") => float(),
        required("Output") => output()
      }
      
  """
  @type add_application_output_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sql_application_configuration() :: %{
        "Inputs" => list(input()()),
        "Outputs" => list(output()()),
        "ReferenceDataSources" => list(reference_data_source()())
      }
      
  """
  @type sql_application_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_processing_configuration_update() :: %{
        "InputLambdaProcessorUpdate" => input_lambda_processor_update()
      }
      
  """
  @type input_processing_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_details() :: %{
        "ApplicationVersionId" => float(),
        "RuntimeEnvironment" => list(any()),
        "SnapshotCreationTimestamp" => non_neg_integer(),
        "SnapshotName" => String.t(),
        "SnapshotStatus" => list(any())
      }
      
  """
  @type snapshot_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_content_location() :: %{
        "BucketARN" => String.t(),
        "FileKey" => String.t(),
        "ObjectVersion" => String.t()
      }
      
  """
  @type s3_content_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      record_column() :: %{
        "Mapping" => String.t(),
        "Name" => String.t(),
        "SqlType" => String.t()
      }
      
  """
  @type record_column() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_application_input_processing_configuration_request() :: %{
        required("ApplicationName") => String.t(),
        required("CurrentApplicationVersionId") => float(),
        required("InputId") => String.t(),
        required("InputProcessingConfiguration") => input_processing_configuration()
      }
      
  """
  @type add_application_input_processing_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deploy_as_application_configuration_description() :: %{
        "S3ContentLocationDescription" => s3_content_base_location_description()
      }
      
  """
  @type deploy_as_application_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_content_base_location() :: %{
        "BasePath" => String.t(),
        "BucketARN" => String.t()
      }
      
  """
  @type s3_content_base_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      run_configuration_description() :: %{
        "ApplicationRestoreConfigurationDescription" => application_restore_configuration(),
        "FlinkRunConfigurationDescription" => flink_run_configuration()
      }
      
  """
  @type run_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_content_update() :: %{
        "S3ContentLocationUpdate" => s3_content_location_update(),
        "TextContentUpdate" => String.t(),
        "ZipFileContentUpdate" => binary()
      }
      
  """
  @type code_content_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_application_reference_data_source_response() :: %{
        "ApplicationARN" => String.t(),
        "ApplicationVersionId" => float(),
        "ReferenceDataSourceDescriptions" => list(reference_data_source_description()())
      }
      
  """
  @type add_application_reference_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sql_application_configuration_description() :: %{
        "InputDescriptions" => list(input_description()()),
        "OutputDescriptions" => list(output_description()()),
        "ReferenceDataSourceDescriptions" => list(reference_data_source_description()())
      }
      
  """
  @type sql_application_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_application_snapshots_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("ApplicationName") => String.t()
      }
      
  """
  @type list_application_snapshots_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_firehose_output_update() :: %{
        "ResourceARNUpdate" => String.t()
      }
      
  """
  @type kinesis_firehose_output_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      flink_application_configuration_description() :: %{
        "CheckpointConfigurationDescription" => checkpoint_configuration_description(),
        "JobPlanDescription" => String.t(),
        "MonitoringConfigurationDescription" => monitoring_configuration_description(),
        "ParallelismConfigurationDescription" => parallelism_configuration_description()
      }
      
  """
  @type flink_application_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      catalog_configuration_update() :: %{
        "GlueDataCatalogConfigurationUpdate" => glue_data_catalog_configuration_update()
      }
      
  """
  @type catalog_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_configuration_update() :: %{
        "ApplicationCodeConfigurationUpdate" => application_code_configuration_update(),
        "ApplicationSnapshotConfigurationUpdate" => application_snapshot_configuration_update(),
        "ApplicationSystemRollbackConfigurationUpdate" => application_system_rollback_configuration_update(),
        "EnvironmentPropertyUpdates" => environment_property_updates(),
        "FlinkApplicationConfigurationUpdate" => flink_application_configuration_update(),
        "SqlApplicationConfigurationUpdate" => sql_application_configuration_update(),
        "VpcConfigurationUpdates" => list(vpc_configuration_update()()),
        "ZeppelinApplicationConfigurationUpdate" => zeppelin_application_configuration_update()
      }
      
  """
  @type application_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_content_base_location_update() :: %{
        "BasePathUpdate" => String.t(),
        "BucketARNUpdate" => String.t()
      }
      
  """
  @type s3_content_base_location_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reference_data_source_description() :: %{
        "ReferenceId" => String.t(),
        "ReferenceSchema" => source_schema(),
        "S3ReferenceDataSourceDescription" => s3_reference_data_source_description(),
        "TableName" => String.t()
      }
      
  """
  @type reference_data_source_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_application_response() :: %{
        "ApplicationDetail" => application_detail()
      }
      
  """
  @type describe_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_application_maintenance_configuration_request() :: %{
        required("ApplicationMaintenanceConfigurationUpdate") => application_maintenance_configuration_update(),
        required("ApplicationName") => String.t()
      }
      
  """
  @type update_application_maintenance_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output() :: %{
        "DestinationSchema" => destination_schema(),
        "KinesisFirehoseOutput" => kinesis_firehose_output(),
        "KinesisStreamsOutput" => kinesis_streams_output(),
        "LambdaOutput" => lambda_output(),
        "Name" => String.t()
      }
      
  """
  @type output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_request() :: %{
        required("ApplicationName") => String.t(),
        required("CreateTimestamp") => non_neg_integer()
      }
      
  """
  @type delete_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_output_response() :: %{
        "ApplicationARN" => String.t(),
        "ApplicationVersionId" => float()
      }
      
  """
  @type delete_application_output_response() :: %{String.t() => any()}

  @type add_application_cloud_watch_logging_option_errors() ::
          concurrent_modification_exception()
          | invalid_application_configuration_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type add_application_input_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | code_validation_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type add_application_input_processing_configuration_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type add_application_output_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type add_application_reference_data_source_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type add_application_vpc_configuration_errors() ::
          concurrent_modification_exception()
          | invalid_application_configuration_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_application_errors() ::
          too_many_tags_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_argument_exception()
          | code_validation_exception()
          | invalid_request_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()

  @type create_application_presigned_url_errors() ::
          invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_application_snapshot_errors() ::
          limit_exceeded_exception()
          | invalid_application_configuration_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()

  @type delete_application_errors() ::
          concurrent_modification_exception()
          | invalid_application_configuration_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_application_cloud_watch_logging_option_errors() ::
          concurrent_modification_exception()
          | invalid_application_configuration_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_application_input_processing_configuration_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_application_output_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_application_reference_data_source_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_application_snapshot_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()

  @type delete_application_vpc_configuration_errors() ::
          concurrent_modification_exception()
          | invalid_application_configuration_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type describe_application_errors() ::
          invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_application_operation_errors() ::
          invalid_argument_exception()
          | resource_not_found_exception()
          | unsupported_operation_exception()

  @type describe_application_snapshot_errors() ::
          invalid_argument_exception()
          | resource_not_found_exception()
          | unsupported_operation_exception()

  @type describe_application_version_errors() ::
          invalid_argument_exception()
          | resource_not_found_exception()
          | unsupported_operation_exception()

  @type discover_input_schema_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unable_to_detect_schema_exception()
          | resource_provisioned_throughput_exceeded_exception()
          | unsupported_operation_exception()

  @type list_application_operations_errors() ::
          invalid_argument_exception()
          | resource_not_found_exception()
          | unsupported_operation_exception()

  @type list_application_snapshots_errors() ::
          invalid_argument_exception() | unsupported_operation_exception()

  @type list_application_versions_errors() ::
          invalid_argument_exception()
          | resource_not_found_exception()
          | unsupported_operation_exception()

  @type list_applications_errors() :: invalid_request_exception()

  @type list_tags_for_resource_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()

  @type rollback_application_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()

  @type start_application_errors() ::
          invalid_application_configuration_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type stop_application_errors() ::
          concurrent_modification_exception()
          | invalid_application_configuration_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | concurrent_modification_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type untag_resource_errors() ::
          too_many_tags_exception()
          | concurrent_modification_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type update_application_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_application_configuration_exception()
          | invalid_argument_exception()
          | code_validation_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type update_application_maintenance_configuration_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()

  def metadata do
    %{
      api_version: "2018-05-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "kinesisanalytics",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Kinesis Analytics V2",
      signature_version: "v4",
      signing_name: "kinesisanalytics",
      target_prefix: "KinesisAnalytics_20180523"
    }
  end

  @doc """
  Adds an Amazon CloudWatch log stream to monitor application configuration
  errors.
  """
  @spec add_application_cloud_watch_logging_option(
          AWS.Client.t(),
          add_application_cloud_watch_logging_option_request(),
          Keyword.t()
        ) ::
          {:ok, add_application_cloud_watch_logging_option_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_application_cloud_watch_logging_option_errors()}
  def add_application_cloud_watch_logging_option(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddApplicationCloudWatchLoggingOption", input, options)
  end

  @doc """
  Adds a streaming source to your SQL-based Kinesis Data Analytics application.
  You can add a streaming source when you create an application, or you can use
  this operation to add a streaming source after you create an application. For
  more information, see `CreateApplication`.
  """
  @spec add_application_input(AWS.Client.t(), add_application_input_request(), Keyword.t()) ::
          {:ok, add_application_input_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_application_input_errors()}
  def add_application_input(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddApplicationInput", input, options)
  end

  @doc """
  Adds an `InputProcessingConfiguration` to a SQL-based Kinesis Data Analytics
  application. An input processor pre-processes records on the input stream
  before the application's SQL code executes. Currently, the only input
  processor available is [Amazon Lambda](https://docs.aws.amazon.com/lambda/).
  """
  @spec add_application_input_processing_configuration(
          AWS.Client.t(),
          add_application_input_processing_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, add_application_input_processing_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_application_input_processing_configuration_errors()}
  def add_application_input_processing_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "AddApplicationInputProcessingConfiguration",
      input,
      options
    )
  end

  @doc """
  Adds an external destination to your SQL-based Kinesis Data Analytics
  application. If you want Kinesis Data Analytics to deliver data from an
  in-application stream within your application to an external destination (such
  as an Kinesis data stream, a Kinesis Data Firehose delivery stream, or an
  Amazon Lambda function), you add the relevant configuration to your
  application using this operation. You can configure one or more outputs for
  your application. Each output configuration maps an in-application stream and
  an external destination.
  """
  @spec add_application_output(AWS.Client.t(), add_application_output_request(), Keyword.t()) ::
          {:ok, add_application_output_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_application_output_errors()}
  def add_application_output(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddApplicationOutput", input, options)
  end

  @doc """
  Adds a reference data source to an existing SQL-based Kinesis Data Analytics
  application.
  """
  @spec add_application_reference_data_source(
          AWS.Client.t(),
          add_application_reference_data_source_request(),
          Keyword.t()
        ) ::
          {:ok, add_application_reference_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_application_reference_data_source_errors()}
  def add_application_reference_data_source(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddApplicationReferenceDataSource", input, options)
  end

  @doc """
  Adds a Virtual Private Cloud (VPC) configuration to the application.
  Applications can use VPCs to store and access resources securely. Note the
  following about VPC configurations for Managed Service for Apache Flink
  applications:
  """
  @spec add_application_vpc_configuration(
          AWS.Client.t(),
          add_application_vpc_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, add_application_vpc_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_application_vpc_configuration_errors()}
  def add_application_vpc_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddApplicationVpcConfiguration", input, options)
  end

  @doc """
  Creates a Managed Service for Apache Flink application. For information about
  creating a Managed Service for Apache Flink application, see [Creating an
  Application](https://docs.aws.amazon.com/kinesisanalytics/latest/java/getting-started.html).
  """
  @spec create_application(AWS.Client.t(), create_application_request(), Keyword.t()) ::
          {:ok, create_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateApplication", input, options)
  end

  @doc """
  Creates and returns a URL that you can use to connect to an application's
  extension. The IAM role or user used to call this API defines the permissions
  to access the extension. After the presigned URL is created, no additional
  permission is required to access this URL. IAM authorization policies for this
  API are also enforced for every HTTP request that attempts to connect to the
  extension.
  """
  @spec create_application_presigned_url(
          AWS.Client.t(),
          create_application_presigned_url_request(),
          Keyword.t()
        ) ::
          {:ok, create_application_presigned_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_application_presigned_url_errors()}
  def create_application_presigned_url(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateApplicationPresignedUrl", input, options)
  end

  @doc """
  Creates a snapshot of the application's state data.
  """
  @spec create_application_snapshot(
          AWS.Client.t(),
          create_application_snapshot_request(),
          Keyword.t()
        ) ::
          {:ok, create_application_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_application_snapshot_errors()}
  def create_application_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateApplicationSnapshot", input, options)
  end

  @doc """
  Deletes the specified application. Managed Service for Apache Flink halts
  application execution and deletes the application.
  """
  @spec delete_application(AWS.Client.t(), delete_application_request(), Keyword.t()) ::
          {:ok, delete_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteApplication", input, options)
  end

  @doc """
  Deletes an Amazon CloudWatch log stream from an SQL-based Kinesis Data Analytics
  application.
  """
  @spec delete_application_cloud_watch_logging_option(
          AWS.Client.t(),
          delete_application_cloud_watch_logging_option_request(),
          Keyword.t()
        ) ::
          {:ok, delete_application_cloud_watch_logging_option_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_application_cloud_watch_logging_option_errors()}
  def delete_application_cloud_watch_logging_option(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteApplicationCloudWatchLoggingOption", input, options)
  end

  @doc """
  Deletes an `InputProcessingConfiguration` from an input.
  """
  @spec delete_application_input_processing_configuration(
          AWS.Client.t(),
          delete_application_input_processing_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, delete_application_input_processing_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_application_input_processing_configuration_errors()}
  def delete_application_input_processing_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "DeleteApplicationInputProcessingConfiguration",
      input,
      options
    )
  end

  @doc """
  Deletes the output destination configuration from your SQL-based Kinesis Data
  Analytics application's configuration. Kinesis Data Analytics will no longer
  write data from the corresponding in-application stream to the external output
  destination.
  """
  @spec delete_application_output(
          AWS.Client.t(),
          delete_application_output_request(),
          Keyword.t()
        ) ::
          {:ok, delete_application_output_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_application_output_errors()}
  def delete_application_output(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteApplicationOutput", input, options)
  end

  @doc """
  Deletes a reference data source configuration from the specified SQL-based
  Kinesis Data Analytics application's configuration.
  """
  @spec delete_application_reference_data_source(
          AWS.Client.t(),
          delete_application_reference_data_source_request(),
          Keyword.t()
        ) ::
          {:ok, delete_application_reference_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_application_reference_data_source_errors()}
  def delete_application_reference_data_source(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteApplicationReferenceDataSource", input, options)
  end

  @doc """
  Deletes a snapshot of application state.
  """
  @spec delete_application_snapshot(
          AWS.Client.t(),
          delete_application_snapshot_request(),
          Keyword.t()
        ) ::
          {:ok, delete_application_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_application_snapshot_errors()}
  def delete_application_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteApplicationSnapshot", input, options)
  end

  @doc """
  Removes a VPC configuration from a Managed Service for Apache Flink application.
  """
  @spec delete_application_vpc_configuration(
          AWS.Client.t(),
          delete_application_vpc_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, delete_application_vpc_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_application_vpc_configuration_errors()}
  def delete_application_vpc_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteApplicationVpcConfiguration", input, options)
  end

  @doc """
  Returns information about a specific Managed Service for Apache Flink
  application.
  """
  @spec describe_application(AWS.Client.t(), describe_application_request(), Keyword.t()) ::
          {:ok, describe_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_application_errors()}
  def describe_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeApplication", input, options)
  end

  @doc """
  Returns information about a specific operation performed on a Managed Service
  for Apache Flink application
  """
  @spec describe_application_operation(
          AWS.Client.t(),
          describe_application_operation_request(),
          Keyword.t()
        ) ::
          {:ok, describe_application_operation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_application_operation_errors()}
  def describe_application_operation(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeApplicationOperation", input, options)
  end

  @doc """
  Returns information about a snapshot of application state data.
  """
  @spec describe_application_snapshot(
          AWS.Client.t(),
          describe_application_snapshot_request(),
          Keyword.t()
        ) ::
          {:ok, describe_application_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_application_snapshot_errors()}
  def describe_application_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeApplicationSnapshot", input, options)
  end

  @doc """
  Provides a detailed description of a specified version of the application. To
  see a list of all the versions of an application, invoke the
  `ListApplicationVersions` operation.
  """
  @spec describe_application_version(
          AWS.Client.t(),
          describe_application_version_request(),
          Keyword.t()
        ) ::
          {:ok, describe_application_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_application_version_errors()}
  def describe_application_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeApplicationVersion", input, options)
  end

  @doc """
  Infers a schema for a SQL-based Kinesis Data Analytics application by evaluating
  sample records on the specified streaming source (Kinesis data stream or
  Kinesis Data Firehose delivery stream) or Amazon S3 object. In the response,
  the operation returns the inferred schema and also the sample records that the
  operation used to infer the schema.
  """
  @spec discover_input_schema(AWS.Client.t(), discover_input_schema_request(), Keyword.t()) ::
          {:ok, discover_input_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, discover_input_schema_errors()}
  def discover_input_schema(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DiscoverInputSchema", input, options)
  end

  @doc """
  Lists information about operations performed on a Managed Service for Apache
  Flink application
  """
  @spec list_application_operations(
          AWS.Client.t(),
          list_application_operations_request(),
          Keyword.t()
        ) ::
          {:ok, list_application_operations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_application_operations_errors()}
  def list_application_operations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListApplicationOperations", input, options)
  end

  @doc """
  Lists information about the current application snapshots.
  """
  @spec list_application_snapshots(
          AWS.Client.t(),
          list_application_snapshots_request(),
          Keyword.t()
        ) ::
          {:ok, list_application_snapshots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_application_snapshots_errors()}
  def list_application_snapshots(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListApplicationSnapshots", input, options)
  end

  @doc """
  Lists all the versions for the specified application, including versions that
  were rolled back. The response also includes a summary of the configuration
  associated with each version. To get the complete description of a specific
  application version, invoke the `DescribeApplicationVersion` operation.
  """
  @spec list_application_versions(
          AWS.Client.t(),
          list_application_versions_request(),
          Keyword.t()
        ) ::
          {:ok, list_application_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_application_versions_errors()}
  def list_application_versions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListApplicationVersions", input, options)
  end

  @doc """
  Returns a list of Managed Service for Apache Flink applications in your account.
  For each application, the response includes the application name, Amazon
  Resource Name (ARN), and status.
  """
  @spec list_applications(AWS.Client.t(), list_applications_request(), Keyword.t()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_applications_errors()}
  def list_applications(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListApplications", input, options)
  end

  @doc """
  Retrieves the list of key-value tags assigned to the application. For more
  information, see [Using
  Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html).
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
  Reverts the application to the previous running version. You can roll back an
  application if you suspect it is stuck in a transient status or in the running
  status. You can roll back an application only if it is in the `UPDATING`,
  `AUTOSCALING`, or `RUNNING` statuses.
  """
  @spec rollback_application(AWS.Client.t(), rollback_application_request(), Keyword.t()) ::
          {:ok, rollback_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, rollback_application_errors()}
  def rollback_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RollbackApplication", input, options)
  end

  @doc """
  Starts the specified Managed Service for Apache Flink application. After
  creating an application, you must exclusively call this operation to start
  your application.
  """
  @spec start_application(AWS.Client.t(), start_application_request(), Keyword.t()) ::
          {:ok, start_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_application_errors()}
  def start_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartApplication", input, options)
  end

  @doc """
  Stops the application from processing data. You can stop an application only if
  it is in the running status, unless you set the `Force` parameter to `true`.
  You can use the `DescribeApplication` operation to find the application
  status.
  """
  @spec stop_application(AWS.Client.t(), stop_application_request(), Keyword.t()) ::
          {:ok, stop_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_application_errors()}
  def stop_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopApplication", input, options)
  end

  @doc """
  Adds one or more key-value tags to a Managed Service for Apache Flink
  application. Note that the maximum number of application tags includes system
  tags. The maximum number of user-defined application tags is 50. For more
  information, see [Using
  Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html).
  """
  @spec tag_resource(AWS.Client.t(), tag_resource_request(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from a Managed Service for Apache Flink application.
  For more information, see [Using
  Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html).
  """
  @spec untag_resource(AWS.Client.t(), untag_resource_request(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an existing Managed Service for Apache Flink application. Using this
  operation, you can update application code, input configuration, and output
  configuration.
  """
  @spec update_application(AWS.Client.t(), update_application_request(), Keyword.t()) ::
          {:ok, update_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_application_errors()}
  def update_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateApplication", input, options)
  end

  @doc """
  Updates the maintenance configuration of the Managed Service for Apache Flink
  application. You can invoke this operation on an application that is in one of
  the two following states: `READY` or `RUNNING`. If you invoke it when the
  application is in a state other than these two states, it throws a
  `ResourceInUseException`. The service makes use of the updated configuration
  the next time it schedules maintenance for the application. If you invoke this
  operation after the service schedules maintenance, the service will apply the
  configuration update the next time it schedules maintenance for the
  application. This means that you might not see the maintenance configuration
  update applied to the maintenance process that follows a successful invocation
  of this operation, but to the following maintenance process instead.
  """
  @spec update_application_maintenance_configuration(
          AWS.Client.t(),
          update_application_maintenance_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, update_application_maintenance_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_application_maintenance_configuration_errors()}
  def update_application_maintenance_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "UpdateApplicationMaintenanceConfiguration",
      input,
      options
    )
  end
end
