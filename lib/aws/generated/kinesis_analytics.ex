# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KinesisAnalytics do
  @moduledoc """
  Amazon Kinesis Analytics **Overview**
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      input_parallelism_update() :: %{
        "CountUpdate" => integer()
      }
      
  """
  @type input_parallelism_update() :: %{String.t() => any()}

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
        "ApplicationCode" => String.t(),
        "ApplicationDescription" => String.t(),
        "ApplicationName" => String.t(),
        "ApplicationStatus" => list(any()),
        "ApplicationVersionId" => float(),
        "CloudWatchLoggingOptionDescriptions" => list(cloud_watch_logging_option_description()()),
        "CreateTimestamp" => non_neg_integer(),
        "InputDescriptions" => list(input_description()()),
        "LastUpdateTimestamp" => non_neg_integer(),
        "OutputDescriptions" => list(output_description()()),
        "ReferenceDataSourceDescriptions" => list(reference_data_source_description()())
      }
      
  """
  @type application_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_operation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unsupported_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      add_application_input_processing_configuration_response() :: %{}
      
  """
  @type add_application_input_processing_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

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
      
      add_application_cloud_watch_logging_option_response() :: %{}
      
  """
  @type add_application_cloud_watch_logging_option_response() :: %{}

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
      
      resource_provisioned_throughput_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_provisioned_throughput_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_reference_data_source_response() :: %{}
      
  """
  @type delete_application_reference_data_source_response() :: %{}

  @typedoc """

  ## Example:
      
      input_starting_position_configuration() :: %{
        "InputStartingPosition" => list(any())
      }
      
  """
  @type input_starting_position_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_application_input_response() :: %{}
      
  """
  @type add_application_input_response() :: %{}

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
      
      kinesis_firehose_output_description() :: %{
        "ResourceARN" => String.t(),
        "RoleARN" => String.t()
      }
      
  """
  @type kinesis_firehose_output_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_firehose_input_update() :: %{
        "ResourceARNUpdate" => String.t(),
        "RoleARNUpdate" => String.t()
      }
      
  """
  @type kinesis_firehose_input_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_logging_option_update() :: %{
        "CloudWatchLoggingOptionId" => String.t(),
        "LogStreamARNUpdate" => String.t(),
        "RoleARNUpdate" => String.t()
      }
      
  """
  @type cloud_watch_logging_option_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_streams_input_update() :: %{
        "ResourceARNUpdate" => String.t(),
        "RoleARNUpdate" => String.t()
      }
      
  """
  @type kinesis_streams_input_update() :: %{String.t() => any()}

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
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_cloud_watch_logging_option_request() :: %{
        required("ApplicationName") => String.t(),
        required("CloudWatchLoggingOptionId") => String.t(),
        required("CurrentApplicationVersionId") => float()
      }
      
  """
  @type delete_application_cloud_watch_logging_option_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_streams_output() :: %{
        "ResourceARN" => String.t(),
        "RoleARN" => String.t()
      }
      
  """
  @type kinesis_streams_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_firehose_output() :: %{
        "ResourceARN" => String.t(),
        "RoleARN" => String.t()
      }
      
  """
  @type kinesis_firehose_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unable_to_detect_schema_exception() :: %{
        "ProcessedInputRecords" => list(String.t()()),
        "RawInputRecords" => list(String.t()()),
        "message" => String.t()
      }
      
  """
  @type unable_to_detect_schema_exception() :: %{String.t() => any()}

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
      
      application_update() :: %{
        "ApplicationCodeUpdate" => String.t(),
        "CloudWatchLoggingOptionUpdates" => list(cloud_watch_logging_option_update()()),
        "InputUpdates" => list(input_update()()),
        "OutputUpdates" => list(output_update()()),
        "ReferenceDataSourceUpdates" => list(reference_data_source_update()())
      }
      
  """
  @type application_update() :: %{String.t() => any()}

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
        "ResourceARNUpdate" => String.t(),
        "RoleARNUpdate" => String.t()
      }
      
  """
  @type lambda_output_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      discover_input_schema_request() :: %{
        optional("InputProcessingConfiguration") => input_processing_configuration(),
        optional("InputStartingPositionConfiguration") => input_starting_position_configuration(),
        optional("ResourceARN") => String.t(),
        optional("RoleARN") => String.t(),
        optional("S3Configuration") => s3_configuration()
      }
      
  """
  @type discover_input_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_lambda_processor() :: %{
        "ResourceARN" => String.t(),
        "RoleARN" => String.t()
      }
      
  """
  @type input_lambda_processor() :: %{String.t() => any()}

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
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_reference_data_source() :: %{
        "BucketARN" => String.t(),
        "FileKey" => String.t(),
        "ReferenceRoleARN" => String.t()
      }
      
  """
  @type s3_reference_data_source() :: %{String.t() => any()}

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
      
      stop_application_request() :: %{
        required("ApplicationName") => String.t()
      }
      
  """
  @type stop_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_lambda_processor_update() :: %{
        "ResourceARNUpdate" => String.t(),
        "RoleARNUpdate" => String.t()
      }
      
  """
  @type input_lambda_processor_update() :: %{String.t() => any()}

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
      
      json_mapping_parameters() :: %{
        "RecordRowPath" => String.t()
      }
      
  """
  @type json_mapping_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_cloud_watch_logging_option_response() :: %{}
      
  """
  @type delete_application_cloud_watch_logging_option_response() :: %{}

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
        optional("ApplicationCode") => String.t(),
        optional("ApplicationDescription") => String.t(),
        optional("CloudWatchLoggingOptions") => list(cloud_watch_logging_option()()),
        optional("Inputs") => list(input()()),
        optional("Outputs") => list(output()()),
        optional("Tags") => list(tag()()),
        required("ApplicationName") => String.t()
      }
      
  """
  @type create_application_request() :: %{String.t() => any()}

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
        "message" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_application_response() :: %{
        "ApplicationSummary" => application_summary()
      }
      
  """
  @type create_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_application_output_response() :: %{}
      
  """
  @type add_application_output_response() :: %{}

  @typedoc """

  ## Example:
      
      input_configuration() :: %{
        "Id" => String.t(),
        "InputStartingPositionConfiguration" => input_starting_position_configuration()
      }
      
  """
  @type input_configuration() :: %{String.t() => any()}

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
      
      start_application_response() :: %{}
      
  """
  @type start_application_response() :: %{}

  @typedoc """

  ## Example:
      
      update_application_request() :: %{
        required("ApplicationName") => String.t(),
        required("ApplicationUpdate") => application_update(),
        required("CurrentApplicationVersionId") => float()
      }
      
  """
  @type update_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_application_response() :: %{}
      
  """
  @type update_application_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_application_request() :: %{
        required("ApplicationName") => String.t()
      }
      
  """
  @type describe_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_application_request() :: %{
        required("ApplicationName") => String.t(),
        required("InputConfigurations") => list(input_configuration()())
      }
      
  """
  @type start_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_validation_exception() :: %{
        "message" => String.t()
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
      
      input_parallelism() :: %{
        "Count" => integer()
      }
      
  """
  @type input_parallelism() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_logging_option() :: %{
        "LogStreamARN" => String.t(),
        "RoleARN" => String.t()
      }
      
  """
  @type cloud_watch_logging_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_applications_request() :: %{
        optional("ExclusiveStartApplicationName") => String.t(),
        optional("Limit") => integer()
      }
      
  """
  @type list_applications_request() :: %{String.t() => any()}

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
      
      kinesis_streams_output_update() :: %{
        "ResourceARNUpdate" => String.t(),
        "RoleARNUpdate" => String.t()
      }
      
  """
  @type kinesis_streams_output_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_application_response() :: %{}
      
  """
  @type stop_application_response() :: %{}

  @typedoc """

  ## Example:
      
      add_application_cloud_watch_logging_option_request() :: %{
        required("ApplicationName") => String.t(),
        required("CloudWatchLoggingOption") => cloud_watch_logging_option(),
        required("CurrentApplicationVersionId") => float()
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
      
      invalid_argument_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_argument_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_application_configuration_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_application_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

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
      
      delete_application_input_processing_configuration_response() :: %{}
      
  """
  @type delete_application_input_processing_configuration_response() :: %{}

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
      
      lambda_output() :: %{
        "ResourceARN" => String.t(),
        "RoleARN" => String.t()
      }
      
  """
  @type lambda_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_configuration() :: %{
        "BucketARN" => String.t(),
        "FileKey" => String.t(),
        "RoleARN" => String.t()
      }
      
  """
  @type s3_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_summary() :: %{
        "ApplicationARN" => String.t(),
        "ApplicationName" => String.t(),
        "ApplicationStatus" => list(any())
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
      
      record_format() :: %{
        "MappingParameters" => mapping_parameters(),
        "RecordFormatType" => list(any())
      }
      
  """
  @type record_format() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_applications_response() :: %{
        "ApplicationSummaries" => list(application_summary()()),
        "HasMoreApplications" => boolean()
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
      
      delete_application_output_request() :: %{
        required("ApplicationName") => String.t(),
        required("CurrentApplicationVersionId") => float(),
        required("OutputId") => String.t()
      }
      
  """
  @type delete_application_output_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_streams_input() :: %{
        "ResourceARN" => String.t(),
        "RoleARN" => String.t()
      }
      
  """
  @type kinesis_streams_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_reference_data_source_update() :: %{
        "BucketARNUpdate" => String.t(),
        "FileKeyUpdate" => String.t(),
        "ReferenceRoleARNUpdate" => String.t()
      }
      
  """
  @type s3_reference_data_source_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_firehose_input() :: %{
        "ResourceARN" => String.t(),
        "RoleARN" => String.t()
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
      
      input_processing_configuration_update() :: %{
        "InputLambdaProcessorUpdate" => input_lambda_processor_update()
      }
      
  """
  @type input_processing_configuration_update() :: %{String.t() => any()}

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
      
      add_application_reference_data_source_response() :: %{}
      
  """
  @type add_application_reference_data_source_response() :: %{}

  @typedoc """

  ## Example:
      
      kinesis_firehose_output_update() :: %{
        "ResourceARNUpdate" => String.t(),
        "RoleARNUpdate" => String.t()
      }
      
  """
  @type kinesis_firehose_output_update() :: %{String.t() => any()}

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
      
      delete_application_output_response() :: %{}
      
  """
  @type delete_application_output_response() :: %{}

  @type add_application_cloud_watch_logging_option_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()

  @type add_application_input_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | code_validation_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()

  @type add_application_input_processing_configuration_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()

  @type add_application_output_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()

  @type add_application_reference_data_source_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()

  @type create_application_errors() ::
          too_many_tags_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_argument_exception()
          | code_validation_exception()
          | resource_in_use_exception()

  @type delete_application_errors() ::
          concurrent_modification_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()

  @type delete_application_cloud_watch_logging_option_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()

  @type delete_application_input_processing_configuration_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()

  @type delete_application_output_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()

  @type delete_application_reference_data_source_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()

  @type describe_application_errors() ::
          resource_not_found_exception() | unsupported_operation_exception()

  @type discover_input_schema_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | unable_to_detect_schema_exception()
          | resource_provisioned_throughput_exceeded_exception()

  @type list_tags_for_resource_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()

  @type start_application_errors() ::
          invalid_application_configuration_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()

  @type stop_application_errors() ::
          resource_not_found_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()

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
          concurrent_modification_exception()
          | invalid_argument_exception()
          | code_validation_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()

  def metadata do
    %{
      api_version: "2015-08-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "kinesisanalytics",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Kinesis Analytics",
      signature_version: "v4",
      signing_name: "kinesisanalytics",
      target_prefix: "KinesisAnalytics_20150814"
    }
  end

  @doc """
  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications. Version 2 of the API supports SQL and
  Java applications. For more information about version 2, see [Amazon Kinesis
  Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).
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
  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications. Version 2 of the API supports SQL and
  Java applications. For more information about version 2, see [Amazon Kinesis
  Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html). Adds a streaming
  source to your Amazon Kinesis application. For conceptual information, see
  [Configuring Application
  Input](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html).
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
  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications. Version 2 of the API supports SQL and
  Java applications. For more information about version 2, see [Amazon Kinesis
  Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).
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
  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications. Version 2 of the API supports SQL and
  Java applications. For more information about version 2, see [Amazon Kinesis
  Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html). Adds an external
  destination to your Amazon Kinesis Analytics application.
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
  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications. Version 2 of the API supports SQL and
  Java applications. For more information about version 2, see [Amazon Kinesis
  Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html). Adds a reference
  data source to an existing application.
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
  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications. Version 2 of the API supports SQL and
  Java applications. For more information about version 2, see [Amazon Kinesis
  Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).
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
  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications. Version 2 of the API supports SQL and
  Java applications. For more information about version 2, see [Amazon Kinesis
  Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).
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
  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications. Version 2 of the API supports SQL and
  Java applications. For more information about version 2, see [Amazon Kinesis
  Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).
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
  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications. Version 2 of the API supports SQL and
  Java applications. For more information about version 2, see [Amazon Kinesis
  Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).
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
  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications. Version 2 of the API supports SQL and
  Java applications. For more information about version 2, see [Amazon Kinesis
  Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).
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
  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications. Version 2 of the API supports SQL and
  Java applications. For more information about version 2, see [Amazon Kinesis
  Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html). Deletes a
  reference data source configuration from the specified application
  configuration.
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
  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications. Version 2 of the API supports SQL and
  Java applications. For more information about version 2, see [Amazon Kinesis
  Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html). Returns
  information about a specific Amazon Kinesis Analytics application.
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
  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications. Version 2 of the API supports SQL and
  Java applications. For more information about version 2, see [Amazon Kinesis
  Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html). Infers a schema
  by evaluating sample records on the specified streaming source (Amazon Kinesis
  stream or Amazon Kinesis Firehose delivery stream) or S3 object. In the
  response, the operation returns the inferred schema and also the sample
  records that the operation used to infer the schema.
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
  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications. Version 2 of the API supports SQL and
  Java applications. For more information about version 2, see [Amazon Kinesis
  Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html). Returns a list of
  Amazon Kinesis Analytics applications in your account. For each application,
  the response includes the application name, Amazon Resource Name (ARN), and
  status. If the response returns the `HasMoreApplications` value as true, you
  can send another request by adding the `ExclusiveStartApplicationName` in the
  request body, and set the value of this to the last application name from the
  previous response.
  """
  @spec list_applications(AWS.Client.t(), list_applications_request(), Keyword.t()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_applications(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListApplications", input, options)
  end

  @doc """
  Retrieves the list of key-value tags assigned to the application. For more
  information, see [Using
  Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html).
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
  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications. Version 2 of the API supports SQL and
  Java applications. For more information about version 2, see [Amazon Kinesis
  Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html). Starts the
  specified Amazon Kinesis Analytics application. After creating an application,
  you must exclusively call this operation to start your application.
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
  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications. Version 2 of the API supports SQL and
  Java applications. For more information about version 2, see [Amazon Kinesis
  Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html). Stops the
  application from processing input data. You can stop an application only if it
  is in the running state. You can use the
  [DescribeApplication](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html)
  operation to find the application state. After the application is stopped,
  Amazon Kinesis Analytics stops reading data from the input, the application
  stops processing data, and there is no output written to the destination.
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
  Adds one or more key-value tags to a Kinesis Analytics application. Note that
  the maximum number of application tags includes system tags. The maximum
  number of user-defined application tags is 50. For more information, see
  [Using
  Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html).
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
  Removes one or more tags from a Kinesis Analytics application. For more
  information, see [Using
  Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html).
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
  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications. Version 2 of the API supports SQL and
  Java applications. For more information about version 2, see [Amazon Kinesis
  Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).
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
end
