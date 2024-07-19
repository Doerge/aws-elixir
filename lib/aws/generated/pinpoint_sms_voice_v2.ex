# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PinpointSMSVoiceV2 do
  @moduledoc """
  Welcome to the *Amazon Pinpoint SMS and Voice, version 2 API Reference*. This
  guide provides information about Amazon Pinpoint SMS and Voice, version 2 API
  resources, including supported HTTP methods, parameters, and schemas. Amazon
  Pinpoint is an Amazon Web Services service that you can use to engage with
  your recipients across multiple messaging channels. The Amazon Pinpoint SMS
  and Voice, version 2 API provides programmatic access to options that are
  unique to the SMS and voice channels. Amazon Pinpoint SMS and Voice, version 2
  resources such as phone numbers, sender IDs, and opt-out lists can be used by
  the Amazon Pinpoint API.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      describe_spend_limits_result() :: %{
        "NextToken" => String.t(),
        "SpendLimits" => list(spend_limit()())
      }
      
  """
  @type describe_spend_limits_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_phone_number_result() :: %{
        "CreatedTimestamp" => [non_neg_integer()],
        "DeletionProtectionEnabled" => [boolean()],
        "IsoCountryCode" => String.t(),
        "MessageType" => String.t(),
        "MonthlyLeasingPrice" => [String.t()],
        "NumberCapabilities" => list(String.t()()),
        "NumberType" => String.t(),
        "OptOutListName" => String.t(),
        "PhoneNumber" => String.t(),
        "PhoneNumberArn" => [String.t()],
        "PhoneNumberId" => [String.t()],
        "RegistrationId" => [String.t()],
        "SelfManagedOptOutsEnabled" => [boolean()],
        "Status" => String.t(),
        "TwoWayChannelArn" => String.t(),
        "TwoWayChannelRole" => String.t(),
        "TwoWayEnabled" => [boolean()]
      }
      
  """
  @type update_phone_number_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      spend_limit() :: %{
        "EnforcedLimit" => [float()],
        "MaxLimit" => [float()],
        "Name" => String.t(),
        "Overridden" => [boolean()]
      }
      
  """
  @type spend_limit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_registration_field_definitions_result() :: %{
        "NextToken" => String.t(),
        "RegistrationFieldDefinitions" => list(registration_field_definition()()),
        "RegistrationType" => String.t()
      }
      
  """
  @type describe_registration_field_definitions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registration_attachment_filter() :: %{
        "Name" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type registration_attachment_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_registration_attachment_request() :: %{
        optional("AttachmentBody") => binary(),
        optional("AttachmentUrl") => String.t(),
        optional("ClientToken") => String.t(),
        optional("Tags") => list(tag()())
      }
      
  """
  @type create_registration_attachment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      phone_number_information() :: %{
        "CreatedTimestamp" => [non_neg_integer()],
        "DeletionProtectionEnabled" => [boolean()],
        "IsoCountryCode" => String.t(),
        "MessageType" => String.t(),
        "MonthlyLeasingPrice" => [String.t()],
        "NumberCapabilities" => list(String.t()()),
        "NumberType" => String.t(),
        "OptOutListName" => String.t(),
        "PhoneNumber" => String.t(),
        "PhoneNumberArn" => [String.t()],
        "PhoneNumberId" => [String.t()],
        "PoolId" => [String.t()],
        "RegistrationId" => [String.t()],
        "SelfManagedOptOutsEnabled" => [boolean()],
        "Status" => String.t(),
        "TwoWayChannelArn" => String.t(),
        "TwoWayChannelRole" => String.t(),
        "TwoWayEnabled" => [boolean()]
      }
      
  """
  @type phone_number_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_registration_attachment_result() :: %{
        "AttachmentStatus" => String.t(),
        "CreatedTimestamp" => [non_neg_integer()],
        "RegistrationAttachmentArn" => [String.t()],
        "RegistrationAttachmentId" => [String.t()],
        "Tags" => list(tag()())
      }
      
  """
  @type create_registration_attachment_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_sender_id_request() :: %{
        optional("ClientToken") => String.t(),
        optional("DeletionProtectionEnabled") => [boolean()],
        optional("MessageTypes") => list(String.t()()),
        optional("Tags") => list(tag()()),
        required("IsoCountryCode") => String.t(),
        required("SenderId") => String.t()
      }
      
  """
  @type request_sender_id_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_destination_number_verification_code_request() :: %{
        optional("ConfigurationSetName") => String.t(),
        optional("Context") => map(),
        optional("DestinationCountryParameters") => map(),
        optional("LanguageCode") => String.t(),
        optional("OriginationIdentity") => String.t(),
        required("VerificationChannel") => String.t(),
        required("VerifiedDestinationNumberId") => String.t()
      }
      
  """
  @type send_destination_number_verification_code_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_limits_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_account_limits_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_pool_result() :: %{
        "CreatedTimestamp" => [non_neg_integer()],
        "MessageType" => String.t(),
        "OptOutListName" => String.t(),
        "PoolArn" => [String.t()],
        "PoolId" => [String.t()],
        "SelfManagedOptOutsEnabled" => [boolean()],
        "SharedRoutesEnabled" => [boolean()],
        "Status" => String.t(),
        "TwoWayChannelArn" => String.t(),
        "TwoWayChannelRole" => String.t(),
        "TwoWayEnabled" => [boolean()]
      }
      
  """
  @type delete_pool_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_registration_versions_result() :: %{
        "NextToken" => String.t(),
        "RegistrationArn" => [String.t()],
        "RegistrationId" => [String.t()],
        "RegistrationVersions" => list(registration_version_information()())
      }
      
  """
  @type describe_registration_versions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_pool_result() :: %{
        "CreatedTimestamp" => [non_neg_integer()],
        "DeletionProtectionEnabled" => [boolean()],
        "MessageType" => String.t(),
        "OptOutListName" => String.t(),
        "PoolArn" => [String.t()],
        "PoolId" => [String.t()],
        "SelfManagedOptOutsEnabled" => [boolean()],
        "SharedRoutesEnabled" => [boolean()],
        "Status" => String.t(),
        "TwoWayChannelArn" => String.t(),
        "TwoWayChannelRole" => String.t(),
        "TwoWayEnabled" => [boolean()]
      }
      
  """
  @type update_pool_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      verified_destination_number_information() :: %{
        "CreatedTimestamp" => [non_neg_integer()],
        "DestinationPhoneNumber" => String.t(),
        "Status" => String.t(),
        "VerifiedDestinationNumberArn" => [String.t()],
        "VerifiedDestinationNumberId" => [String.t()]
      }
      
  """
  @type verified_destination_number_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_phone_number_result() :: %{
        "CreatedTimestamp" => [non_neg_integer()],
        "DeletionProtectionEnabled" => [boolean()],
        "IsoCountryCode" => String.t(),
        "MessageType" => String.t(),
        "MonthlyLeasingPrice" => [String.t()],
        "NumberCapabilities" => list(String.t()()),
        "NumberType" => String.t(),
        "OptOutListName" => String.t(),
        "PhoneNumber" => String.t(),
        "PhoneNumberArn" => [String.t()],
        "PhoneNumberId" => [String.t()],
        "PoolId" => [String.t()],
        "RegistrationId" => [String.t()],
        "SelfManagedOptOutsEnabled" => [boolean()],
        "Status" => String.t(),
        "Tags" => list(tag()()),
        "TwoWayChannelArn" => String.t(),
        "TwoWayChannelRole" => String.t(),
        "TwoWayEnabled" => [boolean()]
      }
      
  """
  @type request_phone_number_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_voice_message_spend_limit_override_request() :: %{}
      
  """
  @type delete_voice_message_spend_limit_override_request() :: %{}

  @typedoc """

  ## Example:
      
      describe_pools_result() :: %{
        "NextToken" => String.t(),
        "Pools" => list(pool_information()())
      }
      
  """
  @type describe_pools_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_registration_associations_request() :: %{
        optional("Filters") => list(registration_association_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("RegistrationId") => String.t()
      }
      
  """
  @type list_registration_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registration_section_display_hints() :: %{
        "DocumentationLink" => [String.t()],
        "DocumentationTitle" => [String.t()],
        "LongDescription" => [String.t()],
        "ShortDescription" => [String.t()],
        "Title" => [String.t()]
      }
      
  """
  @type registration_section_display_hints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_pools_request() :: %{
        optional("Filters") => list(pool_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PoolIds") => list(String.t()())
      }
      
  """
  @type describe_pools_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_opt_out_list_result() :: %{
        "CreatedTimestamp" => [non_neg_integer()],
        "OptOutListArn" => [String.t()],
        "OptOutListName" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type create_opt_out_list_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_result() :: %{}
      
  """
  @type untag_resource_result() :: %{}

  @typedoc """

  ## Example:
      
      verified_destination_number_filter() :: %{
        "Name" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type verified_destination_number_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_registration_association_request() :: %{
        required("RegistrationId") => String.t(),
        required("ResourceId") => String.t()
      }
      
  """
  @type create_registration_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_default_message_type_request() :: %{
        required("ConfigurationSetName") => String.t(),
        required("MessageType") => String.t()
      }
      
  """
  @type set_default_message_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pool_information() :: %{
        "CreatedTimestamp" => [non_neg_integer()],
        "DeletionProtectionEnabled" => [boolean()],
        "MessageType" => String.t(),
        "OptOutListName" => String.t(),
        "PoolArn" => [String.t()],
        "PoolId" => [String.t()],
        "SelfManagedOptOutsEnabled" => [boolean()],
        "SharedRoutesEnabled" => [boolean()],
        "Status" => String.t(),
        "TwoWayChannelArn" => String.t(),
        "TwoWayChannelRole" => String.t(),
        "TwoWayEnabled" => [boolean()]
      }
      
  """
  @type pool_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registration_type_display_hints() :: %{
        "DocumentationLink" => [String.t()],
        "DocumentationTitle" => [String.t()],
        "LongDescription" => [String.t()],
        "ShortDescription" => [String.t()],
        "Title" => [String.t()]
      }
      
  """
  @type registration_type_display_hints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_protect_configuration_request() :: %{
        optional("DeletionProtectionEnabled") => [boolean()],
        required("ProtectConfigurationId") => String.t()
      }
      
  """
  @type update_protect_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registration_association_filter() :: %{
        "Name" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type registration_association_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_firehose_destination() :: %{
        "DeliveryStreamArn" => String.t(),
        "IamRoleArn" => String.t()
      }
      
  """
  @type kinesis_firehose_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_protect_configuration_result() :: %{
        "ConfigurationSetArn" => [String.t()],
        "ConfigurationSetName" => String.t(),
        "ProtectConfigurationArn" => String.t(),
        "ProtectConfigurationId" => String.t()
      }
      
  """
  @type disassociate_protect_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registration_denied_reason_information() :: %{
        "DocumentationLink" => [String.t()],
        "DocumentationTitle" => [String.t()],
        "LongDescription" => [String.t()],
        "Reason" => [String.t()],
        "ShortDescription" => [String.t()]
      }
      
  """
  @type registration_denied_reason_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      protect_configuration_country_rule_set_information() :: %{
        "ProtectStatus" => String.t()
      }
      
  """
  @type protect_configuration_country_rule_set_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registration_association_metadata() :: %{
        "IsoCountryCode" => String.t(),
        "PhoneNumber" => String.t(),
        "ResourceArn" => [String.t()],
        "ResourceId" => [String.t()],
        "ResourceType" => [String.t()]
      }
      
  """
  @type registration_association_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_registration_type_definitions_request() :: %{
        optional("Filters") => list(registration_type_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("RegistrationTypes") => list(String.t()())
      }
      
  """
  @type describe_registration_type_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      submit_registration_version_request() :: %{
        required("RegistrationId") => String.t()
      }
      
  """
  @type submit_registration_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_logs_destination() :: %{
        "IamRoleArn" => String.t(),
        "LogGroupArn" => String.t()
      }
      
  """
  @type cloud_watch_logs_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_registration_association_result() :: %{
        "IsoCountryCode" => String.t(),
        "PhoneNumber" => String.t(),
        "RegistrationArn" => [String.t()],
        "RegistrationId" => [String.t()],
        "RegistrationType" => String.t(),
        "ResourceArn" => [String.t()],
        "ResourceId" => [String.t()],
        "ResourceType" => [String.t()]
      }
      
  """
  @type create_registration_association_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_pool_result() :: %{
        "CreatedTimestamp" => [non_neg_integer()],
        "DeletionProtectionEnabled" => [boolean()],
        "MessageType" => String.t(),
        "OptOutListName" => String.t(),
        "PoolArn" => [String.t()],
        "PoolId" => [String.t()],
        "SelfManagedOptOutsEnabled" => [boolean()],
        "SharedRoutesEnabled" => [boolean()],
        "Status" => String.t(),
        "Tags" => list(tag()()),
        "TwoWayChannelArn" => String.t(),
        "TwoWayChannelRole" => String.t(),
        "TwoWayEnabled" => [boolean()]
      }
      
  """
  @type create_pool_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_default_message_type_request() :: %{
        required("ConfigurationSetName") => String.t()
      }
      
  """
  @type delete_default_message_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      release_phone_number_result() :: %{
        "CreatedTimestamp" => [non_neg_integer()],
        "IsoCountryCode" => String.t(),
        "MessageType" => String.t(),
        "MonthlyLeasingPrice" => [String.t()],
        "NumberCapabilities" => list(String.t()()),
        "NumberType" => String.t(),
        "OptOutListName" => String.t(),
        "PhoneNumber" => String.t(),
        "PhoneNumberArn" => [String.t()],
        "PhoneNumberId" => [String.t()],
        "RegistrationId" => [String.t()],
        "SelfManagedOptOutsEnabled" => [boolean()],
        "Status" => String.t(),
        "TwoWayChannelArn" => String.t(),
        "TwoWayChannelRole" => String.t(),
        "TwoWayEnabled" => [boolean()]
      }
      
  """
  @type release_phone_number_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_protect_configuration_request() :: %{
        required("ProtectConfigurationId") => String.t()
      }
      
  """
  @type delete_protect_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_event_destination_request() :: %{
        required("ConfigurationSetName") => String.t(),
        required("EventDestinationName") => String.t()
      }
      
  """
  @type delete_event_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_protect_configuration_result() :: %{
        "ConfigurationSetArn" => [String.t()],
        "ConfigurationSetName" => String.t(),
        "ProtectConfigurationArn" => String.t(),
        "ProtectConfigurationId" => String.t()
      }
      
  """
  @type associate_protect_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_set_information() :: %{
        "ConfigurationSetArn" => [String.t()],
        "ConfigurationSetName" => String.t(),
        "CreatedTimestamp" => [non_neg_integer()],
        "DefaultMessageType" => String.t(),
        "DefaultSenderId" => String.t(),
        "EventDestinations" => list(event_destination()()),
        "ProtectConfigurationId" => String.t()
      }
      
  """
  @type configuration_set_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      text_validation() :: %{
        "MaxLength" => [integer()],
        "MinLength" => [integer()],
        "Pattern" => [String.t()]
      }
      
  """
  @type text_validation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      release_phone_number_request() :: %{
        required("PhoneNumberId") => String.t()
      }
      
  """
  @type release_phone_number_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      release_sender_id_result() :: %{
        "IsoCountryCode" => String.t(),
        "MessageTypes" => list(String.t()()),
        "MonthlyLeasingPrice" => [String.t()],
        "Registered" => [boolean()],
        "RegistrationId" => [String.t()],
        "SenderId" => String.t(),
        "SenderIdArn" => [String.t()]
      }
      
  """
  @type release_sender_id_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_sender_id_request() :: %{
        optional("DeletionProtectionEnabled") => [boolean()],
        required("IsoCountryCode") => String.t(),
        required("SenderId") => String.t()
      }
      
  """
  @type update_sender_id_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      discard_registration_version_request() :: %{
        required("RegistrationId") => String.t()
      }
      
  """
  @type discard_registration_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_pool_request() :: %{
        optional("DeletionProtectionEnabled") => [boolean()],
        optional("OptOutListName") => String.t(),
        optional("SelfManagedOptOutsEnabled") => [boolean()],
        optional("SharedRoutesEnabled") => [boolean()],
        optional("TwoWayChannelArn") => String.t(),
        optional("TwoWayChannelRole") => String.t(),
        optional("TwoWayEnabled") => [boolean()],
        required("PoolId") => String.t()
      }
      
  """
  @type update_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_text_message_spend_limit_override_result() :: %{
        "MonthlyLimit" => float()
      }
      
  """
  @type set_text_message_spend_limit_override_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_pool_request() :: %{
        optional("ClientToken") => String.t(),
        optional("DeletionProtectionEnabled") => [boolean()],
        optional("Tags") => list(tag()()),
        required("IsoCountryCode") => String.t(),
        required("MessageType") => String.t(),
        required("OriginationIdentity") => String.t()
      }
      
  """
  @type create_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registration_filter() :: %{
        "Name" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type registration_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_voice_message_spend_limit_override_request() :: %{
        required("MonthlyLimit") => float()
      }
      
  """
  @type set_voice_message_spend_limit_override_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_sender_id_result() :: %{
        "DeletionProtectionEnabled" => [boolean()],
        "IsoCountryCode" => String.t(),
        "MessageTypes" => list(String.t()()),
        "MonthlyLeasingPrice" => [String.t()],
        "Registered" => [boolean()],
        "SenderId" => String.t(),
        "SenderIdArn" => [String.t()],
        "Tags" => list(tag()())
      }
      
  """
  @type request_sender_id_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_registration_field_value_request() :: %{
        required("FieldPath") => String.t(),
        required("RegistrationId") => String.t()
      }
      
  """
  @type delete_registration_field_value_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      verify_destination_number_result() :: %{
        "CreatedTimestamp" => [non_neg_integer()],
        "DestinationPhoneNumber" => String.t(),
        "Status" => String.t(),
        "VerifiedDestinationNumberArn" => [String.t()],
        "VerifiedDestinationNumberId" => [String.t()]
      }
      
  """
  @type verify_destination_number_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_media_message_spend_limit_override_request() :: %{}
      
  """
  @type delete_media_message_spend_limit_override_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_configuration_set_request() :: %{
        required("ConfigurationSetName") => String.t()
      }
      
  """
  @type delete_configuration_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_registration_section_definitions_result() :: %{
        "NextToken" => String.t(),
        "RegistrationSectionDefinitions" => list(registration_section_definition()()),
        "RegistrationType" => String.t()
      }
      
  """
  @type describe_registration_section_definitions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_registration_version_result() :: %{
        "RegistrationArn" => [String.t()],
        "RegistrationId" => [String.t()],
        "RegistrationVersionStatus" => String.t(),
        "RegistrationVersionStatusHistory" => registration_version_status_history(),
        "VersionNumber" => float()
      }
      
  """
  @type create_registration_version_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_text_message_spend_limit_override_request() :: %{}
      
  """
  @type delete_text_message_spend_limit_override_request() :: %{}

  @typedoc """

  ## Example:
      
      describe_keywords_result() :: %{
        "Keywords" => list(keyword_information()()),
        "NextToken" => String.t(),
        "OriginationIdentity" => [String.t()],
        "OriginationIdentityArn" => [String.t()]
      }
      
  """
  @type describe_keywords_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registration_attachments_information() :: %{
        "AttachmentStatus" => String.t(),
        "AttachmentUploadErrorReason" => String.t(),
        "CreatedTimestamp" => [non_neg_integer()],
        "RegistrationAttachmentArn" => [String.t()],
        "RegistrationAttachmentId" => [String.t()]
      }
      
  """
  @type registration_attachments_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      select_validation() :: %{
        "MaxChoices" => [integer()],
        "MinChoices" => [integer()],
        "Options" => list([String.t()]())
      }
      
  """
  @type select_validation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_origination_identity_result() :: %{
        "IsoCountryCode" => String.t(),
        "OriginationIdentity" => [String.t()],
        "OriginationIdentityArn" => [String.t()],
        "PoolArn" => [String.t()],
        "PoolId" => [String.t()]
      }
      
  """
  @type disassociate_origination_identity_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_event_destination_request() :: %{
        optional("ClientToken") => String.t(),
        optional("CloudWatchLogsDestination") => cloud_watch_logs_destination(),
        optional("KinesisFirehoseDestination") => kinesis_firehose_destination(),
        optional("SnsDestination") => sns_destination(),
        required("ConfigurationSetName") => String.t(),
        required("EventDestinationName") => String.t(),
        required("MatchingEventTypes") => list(String.t()())
      }
      
  """
  @type create_event_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_registrations_request() :: %{
        optional("Filters") => list(registration_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("RegistrationIds") => list(String.t()())
      }
      
  """
  @type describe_registrations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_protect_configurations_request() :: %{
        optional("Filters") => list(protect_configuration_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ProtectConfigurationIds") => list(String.t()())
      }
      
  """
  @type describe_protect_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_event_destination_request() :: %{
        optional("CloudWatchLogsDestination") => cloud_watch_logs_destination(),
        optional("Enabled") => [boolean()],
        optional("KinesisFirehoseDestination") => kinesis_firehose_destination(),
        optional("MatchingEventTypes") => list(String.t()()),
        optional("SnsDestination") => sns_destination(),
        required("ConfigurationSetName") => String.t(),
        required("EventDestinationName") => String.t()
      }
      
  """
  @type update_event_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_protect_configuration_country_rule_set_result() :: %{
        "CountryRuleSet" => map(),
        "NumberCapability" => String.t(),
        "ProtectConfigurationArn" => String.t(),
        "ProtectConfigurationId" => String.t()
      }
      
  """
  @type update_protect_configuration_country_rule_set_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_verified_destination_numbers_result() :: %{
        "NextToken" => String.t(),
        "VerifiedDestinationNumbers" => list(verified_destination_number_information()())
      }
      
  """
  @type describe_verified_destination_numbers_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_opted_out_number_result() :: %{
        "EndUserOptedOut" => [boolean()],
        "OptOutListArn" => [String.t()],
        "OptOutListName" => String.t(),
        "OptedOutNumber" => String.t(),
        "OptedOutTimestamp" => [non_neg_integer()]
      }
      
  """
  @type delete_opted_out_number_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_voice_message_spend_limit_override_result() :: %{
        "MonthlyLimit" => float()
      }
      
  """
  @type set_voice_message_spend_limit_override_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_protect_configuration_request() :: %{
        optional("ClientToken") => String.t(),
        optional("DeletionProtectionEnabled") => [boolean()],
        optional("Tags") => list(tag()())
      }
      
  """
  @type create_protect_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => [String.t()],
        "Reason" => String.t(),
        "ResourceId" => [String.t()],
        "ResourceType" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => [String.t()],
        "ResourceId" => [String.t()],
        "ResourceType" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registration_field_definition() :: %{
        "DisplayHints" => registration_field_display_hints(),
        "FieldPath" => String.t(),
        "FieldRequirement" => String.t(),
        "FieldType" => String.t(),
        "SectionPath" => String.t(),
        "SelectValidation" => select_validation(),
        "TextValidation" => text_validation()
      }
      
  """
  @type registration_field_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_account_default_protect_configuration_result() :: %{
        "DefaultProtectConfigurationArn" => String.t(),
        "DefaultProtectConfigurationId" => String.t()
      }
      
  """
  @type delete_account_default_protect_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registration_type_definition() :: %{
        "DisplayHints" => registration_type_display_hints(),
        "RegistrationType" => String.t(),
        "SupportedAssociations" => list(supported_association()())
      }
      
  """
  @type registration_type_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      opted_out_number_information() :: %{
        "EndUserOptedOut" => [boolean()],
        "OptedOutNumber" => String.t(),
        "OptedOutTimestamp" => [non_neg_integer()]
      }
      
  """
  @type opted_out_number_information() :: %{String.t() => any()}

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
      
      event_destination() :: %{
        "CloudWatchLogsDestination" => cloud_watch_logs_destination(),
        "Enabled" => [boolean()],
        "EventDestinationName" => String.t(),
        "KinesisFirehoseDestination" => kinesis_firehose_destination(),
        "MatchingEventTypes" => list(String.t()()),
        "SnsDestination" => sns_destination()
      }
      
  """
  @type event_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_opted_out_number_request() :: %{
        required("OptOutListName") => String.t(),
        required("OptedOutNumber") => String.t()
      }
      
  """
  @type delete_opted_out_number_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registration_section_definition() :: %{
        "DisplayHints" => registration_section_display_hints(),
        "SectionPath" => String.t()
      }
      
  """
  @type registration_section_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_opt_out_list_result() :: %{
        "CreatedTimestamp" => [non_neg_integer()],
        "OptOutListArn" => [String.t()],
        "OptOutListName" => String.t()
      }
      
  """
  @type delete_opt_out_list_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_protect_configuration_country_rule_set_request() :: %{
        required("CountryRuleSetUpdates") => map(),
        required("NumberCapability") => String.t(),
        required("ProtectConfigurationId") => String.t()
      }
      
  """
  @type update_protect_configuration_country_rule_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_registration_result() :: %{
        "AdditionalAttributes" => map(),
        "ApprovedVersionNumber" => float(),
        "CreatedTimestamp" => [non_neg_integer()],
        "CurrentVersionNumber" => float(),
        "LatestDeniedVersionNumber" => float(),
        "RegistrationArn" => [String.t()],
        "RegistrationId" => [String.t()],
        "RegistrationStatus" => String.t(),
        "RegistrationType" => String.t()
      }
      
  """
  @type delete_registration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sender_id_filter() :: %{
        "Name" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type sender_id_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_event_destination_result() :: %{
        "ConfigurationSetArn" => [String.t()],
        "ConfigurationSetName" => String.t(),
        "EventDestination" => event_destination()
      }
      
  """
  @type delete_event_destination_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      protect_configuration_filter() :: %{
        "Name" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type protect_configuration_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => [String.t()],
        "Reason" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_default_sender_id_request() :: %{
        required("ConfigurationSetName") => String.t()
      }
      
  """
  @type delete_default_sender_id_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_voice_message_spend_limit_override_result() :: %{
        "MonthlyLimit" => float()
      }
      
  """
  @type delete_voice_message_spend_limit_override_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_origination_identity_result() :: %{
        "IsoCountryCode" => String.t(),
        "OriginationIdentity" => [String.t()],
        "OriginationIdentityArn" => [String.t()],
        "PoolArn" => [String.t()],
        "PoolId" => [String.t()]
      }
      
  """
  @type associate_origination_identity_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_opted_out_numbers_result() :: %{
        "NextToken" => String.t(),
        "OptOutListArn" => [String.t()],
        "OptOutListName" => String.t(),
        "OptedOutNumbers" => list(opted_out_number_information()())
      }
      
  """
  @type describe_opted_out_numbers_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registration_version_status_history() :: %{
        "ApprovedTimestamp" => [non_neg_integer()],
        "ArchivedTimestamp" => [non_neg_integer()],
        "DeniedTimestamp" => [non_neg_integer()],
        "DiscardedTimestamp" => [non_neg_integer()],
        "DraftTimestamp" => [non_neg_integer()],
        "ReviewingTimestamp" => [non_neg_integer()],
        "RevokedTimestamp" => [non_neg_integer()],
        "SubmittedTimestamp" => [non_neg_integer()]
      }
      
  """
  @type registration_version_status_history() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      phone_number_filter() :: %{
        "Name" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type phone_number_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pool_origination_identities_request() :: %{
        optional("Filters") => list(pool_origination_identities_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("PoolId") => String.t()
      }
      
  """
  @type list_pool_origination_identities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registration_information() :: %{
        "AdditionalAttributes" => map(),
        "ApprovedVersionNumber" => float(),
        "CreatedTimestamp" => [non_neg_integer()],
        "CurrentVersionNumber" => float(),
        "LatestDeniedVersionNumber" => float(),
        "RegistrationArn" => [String.t()],
        "RegistrationId" => [String.t()],
        "RegistrationStatus" => String.t(),
        "RegistrationType" => String.t()
      }
      
  """
  @type registration_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_media_message_result() :: %{
        "MessageId" => [String.t()]
      }
      
  """
  @type send_media_message_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      select_option_description() :: %{
        "Description" => [String.t()],
        "Option" => [String.t()],
        "Title" => [String.t()]
      }
      
  """
  @type select_option_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      keyword_filter() :: %{
        "Name" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type keyword_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_registration_version_request() :: %{
        required("RegistrationId") => String.t()
      }
      
  """
  @type create_registration_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_keywords_request() :: %{
        optional("Filters") => list(keyword_filter()()),
        optional("Keywords") => list(String.t()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("OriginationIdentity") => String.t()
      }
      
  """
  @type describe_keywords_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_verified_destination_number_request() :: %{
        required("VerifiedDestinationNumberId") => String.t()
      }
      
  """
  @type delete_verified_destination_number_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_limit() :: %{
        "Max" => [float()],
        "Name" => String.t(),
        "Used" => [float()]
      }
      
  """
  @type account_limit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_phone_number_request() :: %{
        optional("ClientToken") => String.t(),
        optional("DeletionProtectionEnabled") => [boolean()],
        optional("OptOutListName") => String.t(),
        optional("PoolId") => String.t(),
        optional("RegistrationId") => String.t(),
        optional("Tags") => list(tag()()),
        required("IsoCountryCode") => String.t(),
        required("MessageType") => String.t(),
        required("NumberCapabilities") => list(String.t()()),
        required("NumberType") => String.t()
      }
      
  """
  @type request_phone_number_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_protect_configuration_result() :: %{
        "AccountDefault" => [boolean()],
        "CreatedTimestamp" => [non_neg_integer()],
        "DeletionProtectionEnabled" => [boolean()],
        "ProtectConfigurationArn" => String.t(),
        "ProtectConfigurationId" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type create_protect_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_registration_field_values_result() :: %{
        "NextToken" => String.t(),
        "RegistrationArn" => [String.t()],
        "RegistrationFieldValues" => list(registration_field_value_information()()),
        "RegistrationId" => [String.t()],
        "VersionNumber" => float()
      }
      
  """
  @type describe_registration_field_values_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "Message" => [String.t()],
        "Name" => [String.t()]
      }
      
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_keyword_request() :: %{
        required("Keyword") => String.t(),
        required("OriginationIdentity") => String.t()
      }
      
  """
  @type delete_keyword_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_registration_field_values_request() :: %{
        optional("FieldPaths") => list(String.t()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SectionPath") => String.t(),
        optional("VersionNumber") => float(),
        required("RegistrationId") => String.t()
      }
      
  """
  @type describe_registration_field_values_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_opt_out_lists_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("OptOutListNames") => list(String.t()())
      }
      
  """
  @type describe_opt_out_lists_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_registration_result() :: %{
        "AdditionalAttributes" => map(),
        "CreatedTimestamp" => [non_neg_integer()],
        "CurrentVersionNumber" => float(),
        "RegistrationArn" => [String.t()],
        "RegistrationId" => [String.t()],
        "RegistrationStatus" => String.t(),
        "RegistrationType" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type create_registration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_opted_out_number_result() :: %{
        "EndUserOptedOut" => [boolean()],
        "OptOutListArn" => [String.t()],
        "OptOutListName" => String.t(),
        "OptedOutNumber" => String.t(),
        "OptedOutTimestamp" => [non_neg_integer()]
      }
      
  """
  @type put_opted_out_number_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_event_destination_result() :: %{
        "ConfigurationSetArn" => [String.t()],
        "ConfigurationSetName" => String.t(),
        "EventDestination" => event_destination()
      }
      
  """
  @type update_event_destination_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_opt_out_list_request() :: %{
        required("OptOutListName") => String.t()
      }
      
  """
  @type delete_opt_out_list_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pool_filter() :: %{
        "Name" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type pool_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_spend_limits_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_spend_limits_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_sender_ids_request() :: %{
        optional("Filters") => list(sender_id_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SenderIds") => list(sender_id_and_country()())
      }
      
  """
  @type describe_sender_ids_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_registration_attachments_result() :: %{
        "NextToken" => String.t(),
        "RegistrationAttachments" => list(registration_attachments_information()())
      }
      
  """
  @type describe_registration_attachments_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pool_origination_identities_result() :: %{
        "NextToken" => String.t(),
        "OriginationIdentities" => list(origination_identity_metadata()()),
        "PoolArn" => [String.t()],
        "PoolId" => [String.t()]
      }
      
  """
  @type list_pool_origination_identities_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_registration_field_value_result() :: %{
        "FieldPath" => String.t(),
        "RegistrationArn" => [String.t()],
        "RegistrationAttachmentId" => [String.t()],
        "RegistrationId" => [String.t()],
        "SelectChoices" => list(String.t()()),
        "TextValue" => String.t(),
        "VersionNumber" => float()
      }
      
  """
  @type put_registration_field_value_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      opted_out_filter() :: %{
        "Name" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type opted_out_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_destination_number_verification_code_result() :: %{
        "MessageId" => [String.t()]
      }
      
  """
  @type send_destination_number_verification_code_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_verified_destination_numbers_request() :: %{
        optional("DestinationPhoneNumbers") => list(String.t()()),
        optional("Filters") => list(verified_destination_number_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("VerifiedDestinationNumberIds") => list(String.t()())
      }
      
  """
  @type describe_verified_destination_numbers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registration_field_display_hints() :: %{
        "DocumentationLink" => [String.t()],
        "DocumentationTitle" => [String.t()],
        "ExampleTextValue" => [String.t()],
        "LongDescription" => [String.t()],
        "SelectOptionDescriptions" => list(select_option_description()()),
        "ShortDescription" => [String.t()],
        "TextValidationDescription" => [String.t()],
        "Title" => [String.t()]
      }
      
  """
  @type registration_field_display_hints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_voice_message_request() :: %{
        optional("ConfigurationSetName") => String.t(),
        optional("Context") => map(),
        optional("DryRun") => [boolean()],
        optional("MaxPricePerMinute") => String.t(),
        optional("MessageBody") => String.t(),
        optional("MessageBodyTextType") => String.t(),
        optional("ProtectConfigurationId") => String.t(),
        optional("TimeToLive") => integer(),
        optional("VoiceId") => String.t(),
        required("DestinationPhoneNumber") => String.t(),
        required("OriginationIdentity") => String.t()
      }
      
  """
  @type send_voice_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_account_default_protect_configuration_result() :: %{
        "DefaultProtectConfigurationArn" => String.t(),
        "DefaultProtectConfigurationId" => String.t()
      }
      
  """
  @type set_account_default_protect_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => [String.t()],
        "RequestId" => [String.t()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      discard_registration_version_result() :: %{
        "RegistrationArn" => [String.t()],
        "RegistrationId" => [String.t()],
        "RegistrationVersionStatus" => String.t(),
        "RegistrationVersionStatusHistory" => registration_version_status_history(),
        "VersionNumber" => float()
      }
      
  """
  @type discard_registration_version_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_registration_associations_result() :: %{
        "NextToken" => String.t(),
        "RegistrationArn" => [String.t()],
        "RegistrationAssociations" => list(registration_association_metadata()()),
        "RegistrationId" => [String.t()],
        "RegistrationType" => String.t()
      }
      
  """
  @type list_registration_associations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_result() :: %{
        "ResourceArn" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      release_sender_id_request() :: %{
        required("IsoCountryCode") => String.t(),
        required("SenderId") => String.t()
      }
      
  """
  @type release_sender_id_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      supported_association() :: %{
        "AssociationBehavior" => String.t(),
        "DisassociationBehavior" => String.t(),
        "IsoCountryCode" => String.t(),
        "ResourceType" => [String.t()]
      }
      
  """
  @type supported_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_protect_configuration_request() :: %{
        required("ConfigurationSetName") => String.t(),
        required("ProtectConfigurationId") => String.t()
      }
      
  """
  @type disassociate_protect_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_text_message_result() :: %{
        "MessageId" => [String.t()]
      }
      
  """
  @type send_text_message_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_registration_attachment_request() :: %{
        required("RegistrationAttachmentId") => String.t()
      }
      
  """
  @type delete_registration_attachment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sender_id_information() :: %{
        "DeletionProtectionEnabled" => [boolean()],
        "IsoCountryCode" => String.t(),
        "MessageTypes" => list(String.t()()),
        "MonthlyLeasingPrice" => [String.t()],
        "Registered" => [boolean()],
        "RegistrationId" => [String.t()],
        "SenderId" => String.t(),
        "SenderIdArn" => [String.t()]
      }
      
  """
  @type sender_id_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_pool_request() :: %{
        required("PoolId") => String.t()
      }
      
  """
  @type delete_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_registration_section_definitions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SectionPaths") => list(String.t()()),
        required("RegistrationType") => String.t()
      }
      
  """
  @type describe_registration_section_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_protect_configuration_request() :: %{
        required("ConfigurationSetName") => String.t(),
        required("ProtectConfigurationId") => String.t()
      }
      
  """
  @type associate_protect_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sender_id_and_country() :: %{
        "IsoCountryCode" => String.t(),
        "SenderId" => String.t()
      }
      
  """
  @type sender_id_and_country() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_voice_message_result() :: %{
        "MessageId" => [String.t()]
      }
      
  """
  @type send_voice_message_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => [String.t()],
        "Reason" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_default_sender_id_result() :: %{
        "ConfigurationSetArn" => [String.t()],
        "ConfigurationSetName" => String.t(),
        "SenderId" => String.t()
      }
      
  """
  @type delete_default_sender_id_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_text_message_request() :: %{
        optional("ConfigurationSetName") => String.t(),
        optional("Context") => map(),
        optional("DestinationCountryParameters") => map(),
        optional("DryRun") => [boolean()],
        optional("Keyword") => String.t(),
        optional("MaxPrice") => String.t(),
        optional("MessageBody") => String.t(),
        optional("MessageType") => String.t(),
        optional("OriginationIdentity") => String.t(),
        optional("ProtectConfigurationId") => String.t(),
        optional("TimeToLive") => integer(),
        required("DestinationPhoneNumber") => String.t()
      }
      
  """
  @type send_text_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_sender_ids_result() :: %{
        "NextToken" => String.t(),
        "SenderIds" => list(sender_id_information()())
      }
      
  """
  @type describe_sender_ids_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_protect_configuration_country_rule_set_result() :: %{
        "CountryRuleSet" => map(),
        "NumberCapability" => String.t(),
        "ProtectConfigurationArn" => String.t(),
        "ProtectConfigurationId" => String.t()
      }
      
  """
  @type get_protect_configuration_country_rule_set_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_attributes_result() :: %{
        "AccountAttributes" => list(account_attribute()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_account_attributes_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_registration_field_value_request() :: %{
        optional("RegistrationAttachmentId") => String.t(),
        optional("SelectChoices") => list(String.t()()),
        optional("TextValue") => String.t(),
        required("FieldPath") => String.t(),
        required("RegistrationId") => String.t()
      }
      
  """
  @type put_registration_field_value_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_registration_field_definitions_request() :: %{
        optional("FieldPaths") => list(String.t()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SectionPath") => String.t(),
        required("RegistrationType") => String.t()
      }
      
  """
  @type describe_registration_field_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_registrations_result() :: %{
        "NextToken" => String.t(),
        "Registrations" => list(registration_information()())
      }
      
  """
  @type describe_registrations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_opt_out_lists_result() :: %{
        "NextToken" => String.t(),
        "OptOutLists" => list(opt_out_list_information()())
      }
      
  """
  @type describe_opt_out_lists_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_verified_destination_number_result() :: %{
        "CreatedTimestamp" => [non_neg_integer()],
        "DestinationPhoneNumber" => String.t(),
        "VerifiedDestinationNumberArn" => [String.t()],
        "VerifiedDestinationNumberId" => [String.t()]
      }
      
  """
  @type delete_verified_destination_number_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_registration_attachments_request() :: %{
        optional("Filters") => list(registration_attachment_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("RegistrationAttachmentIds") => list(String.t()())
      }
      
  """
  @type describe_registration_attachments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_sender_id_result() :: %{
        "DeletionProtectionEnabled" => [boolean()],
        "IsoCountryCode" => String.t(),
        "MessageTypes" => list(String.t()()),
        "MonthlyLeasingPrice" => [String.t()],
        "Registered" => [boolean()],
        "RegistrationId" => [String.t()],
        "SenderId" => String.t(),
        "SenderIdArn" => [String.t()]
      }
      
  """
  @type update_sender_id_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pool_origination_identities_filter() :: %{
        "Name" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type pool_origination_identities_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_limits_result() :: %{
        "AccountLimits" => list(account_limit()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_account_limits_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Fields" => list(validation_exception_field()()),
        "Message" => [String.t()],
        "Reason" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_keyword_result() :: %{
        "Keyword" => String.t(),
        "KeywordAction" => String.t(),
        "KeywordMessage" => String.t(),
        "OriginationIdentity" => [String.t()],
        "OriginationIdentityArn" => [String.t()]
      }
      
  """
  @type put_keyword_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_origination_identity_request() :: %{
        optional("ClientToken") => String.t(),
        required("IsoCountryCode") => String.t(),
        required("OriginationIdentity") => String.t(),
        required("PoolId") => String.t()
      }
      
  """
  @type associate_origination_identity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_protect_configuration_result() :: %{
        "AccountDefault" => [boolean()],
        "CreatedTimestamp" => [non_neg_integer()],
        "DeletionProtectionEnabled" => [boolean()],
        "ProtectConfigurationArn" => String.t(),
        "ProtectConfigurationId" => String.t()
      }
      
  """
  @type update_protect_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_origination_identity_request() :: %{
        optional("ClientToken") => String.t(),
        required("IsoCountryCode") => String.t(),
        required("OriginationIdentity") => String.t(),
        required("PoolId") => String.t()
      }
      
  """
  @type disassociate_origination_identity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registration_type_filter() :: %{
        "Name" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type registration_type_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_attribute() :: %{
        "Name" => String.t(),
        "Value" => [String.t()]
      }
      
  """
  @type account_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_verified_destination_number_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Tags") => list(tag()()),
        required("DestinationPhoneNumber") => String.t()
      }
      
  """
  @type create_verified_destination_number_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_phone_numbers_request() :: %{
        optional("Filters") => list(phone_number_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PhoneNumberIds") => list(String.t()())
      }
      
  """
  @type describe_phone_numbers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_opted_out_numbers_request() :: %{
        optional("Filters") => list(opted_out_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("OptedOutNumbers") => list(String.t()()),
        required("OptOutListName") => String.t()
      }
      
  """
  @type describe_opted_out_numbers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_protect_configurations_result() :: %{
        "NextToken" => String.t(),
        "ProtectConfigurations" => list(protect_configuration_information()())
      }
      
  """
  @type describe_protect_configurations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_account_default_protect_configuration_request() :: %{
        required("ProtectConfigurationId") => String.t()
      }
      
  """
  @type set_account_default_protect_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_registration_request() :: %{
        required("RegistrationId") => String.t()
      }
      
  """
  @type delete_registration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_registration_type_definitions_result() :: %{
        "NextToken" => String.t(),
        "RegistrationTypeDefinitions" => list(registration_type_definition()())
      }
      
  """
  @type describe_registration_type_definitions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_phone_numbers_result() :: %{
        "NextToken" => String.t(),
        "PhoneNumbers" => list(phone_number_information()())
      }
      
  """
  @type describe_phone_numbers_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_result() :: %{}
      
  """
  @type tag_resource_result() :: %{}

  @typedoc """

  ## Example:
      
      configuration_set_filter() :: %{
        "Name" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type configuration_set_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_opt_out_list_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Tags") => list(tag()()),
        required("OptOutListName") => String.t()
      }
      
  """
  @type create_opt_out_list_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_configuration_set_result() :: %{
        "ConfigurationSetArn" => [String.t()],
        "ConfigurationSetName" => String.t(),
        "CreatedTimestamp" => [non_neg_integer()],
        "Tags" => list(tag()())
      }
      
  """
  @type create_configuration_set_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_account_default_protect_configuration_request() :: %{}
      
  """
  @type delete_account_default_protect_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      describe_configuration_sets_result() :: %{
        "ConfigurationSets" => list(configuration_set_information()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_configuration_sets_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      keyword_information() :: %{
        "Keyword" => String.t(),
        "KeywordAction" => String.t(),
        "KeywordMessage" => String.t()
      }
      
  """
  @type keyword_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_registration_attachment_result() :: %{
        "AttachmentStatus" => String.t(),
        "AttachmentUploadErrorReason" => String.t(),
        "CreatedTimestamp" => [non_neg_integer()],
        "RegistrationAttachmentArn" => [String.t()],
        "RegistrationAttachmentId" => [String.t()]
      }
      
  """
  @type delete_registration_attachment_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_media_message_spend_limit_override_result() :: %{
        "MonthlyLimit" => float()
      }
      
  """
  @type set_media_message_spend_limit_override_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_keyword_request() :: %{
        optional("KeywordAction") => String.t(),
        required("Keyword") => String.t(),
        required("KeywordMessage") => String.t(),
        required("OriginationIdentity") => String.t()
      }
      
  """
  @type put_keyword_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_default_sender_id_request() :: %{
        required("ConfigurationSetName") => String.t(),
        required("SenderId") => String.t()
      }
      
  """
  @type set_default_sender_id_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_text_message_spend_limit_override_request() :: %{
        required("MonthlyLimit") => float()
      }
      
  """
  @type set_text_message_spend_limit_override_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      submit_registration_version_result() :: %{
        "RegistrationArn" => [String.t()],
        "RegistrationId" => [String.t()],
        "RegistrationVersionStatus" => String.t(),
        "RegistrationVersionStatusHistory" => registration_version_status_history(),
        "VersionNumber" => float()
      }
      
  """
  @type submit_registration_version_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_registration_versions_request() :: %{
        optional("Filters") => list(registration_version_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("VersionNumbers") => list(float()()),
        required("RegistrationId") => String.t()
      }
      
  """
  @type describe_registration_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registration_field_value_information() :: %{
        "DeniedReason" => [String.t()],
        "FieldPath" => String.t(),
        "RegistrationAttachmentId" => String.t(),
        "SelectChoices" => list(String.t()()),
        "TextValue" => String.t()
      }
      
  """
  @type registration_field_value_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      protect_configuration_information() :: %{
        "AccountDefault" => [boolean()],
        "CreatedTimestamp" => [non_neg_integer()],
        "DeletionProtectionEnabled" => [boolean()],
        "ProtectConfigurationArn" => String.t(),
        "ProtectConfigurationId" => String.t()
      }
      
  """
  @type protect_configuration_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_default_sender_id_result() :: %{
        "ConfigurationSetArn" => [String.t()],
        "ConfigurationSetName" => String.t(),
        "SenderId" => String.t()
      }
      
  """
  @type set_default_sender_id_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_protect_configuration_country_rule_set_request() :: %{
        required("NumberCapability") => String.t(),
        required("ProtectConfigurationId") => String.t()
      }
      
  """
  @type get_protect_configuration_country_rule_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registration_version_information() :: %{
        "DeniedReasons" => list(registration_denied_reason_information()()),
        "RegistrationVersionStatus" => String.t(),
        "RegistrationVersionStatusHistory" => registration_version_status_history(),
        "VersionNumber" => float()
      }
      
  """
  @type registration_version_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_media_message_spend_limit_override_result() :: %{
        "MonthlyLimit" => float()
      }
      
  """
  @type delete_media_message_spend_limit_override_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registration_version_filter() :: %{
        "Name" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type registration_version_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_phone_number_request() :: %{
        optional("DeletionProtectionEnabled") => [boolean()],
        optional("OptOutListName") => String.t(),
        optional("SelfManagedOptOutsEnabled") => [boolean()],
        optional("TwoWayChannelArn") => String.t(),
        optional("TwoWayChannelRole") => String.t(),
        optional("TwoWayEnabled") => [boolean()],
        required("PhoneNumberId") => String.t()
      }
      
  """
  @type update_phone_number_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      origination_identity_metadata() :: %{
        "IsoCountryCode" => String.t(),
        "NumberCapabilities" => list(String.t()()),
        "OriginationIdentity" => [String.t()],
        "OriginationIdentityArn" => [String.t()],
        "PhoneNumber" => String.t()
      }
      
  """
  @type origination_identity_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_default_message_type_result() :: %{
        "ConfigurationSetArn" => [String.t()],
        "ConfigurationSetName" => String.t(),
        "MessageType" => String.t()
      }
      
  """
  @type set_default_message_type_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_sets_request() :: %{
        optional("ConfigurationSetNames") => list(String.t()()),
        optional("Filters") => list(configuration_set_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_configuration_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_registration_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Tags") => list(tag()()),
        required("RegistrationType") => String.t()
      }
      
  """
  @type create_registration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_attributes_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_account_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_text_message_spend_limit_override_result() :: %{
        "MonthlyLimit" => float()
      }
      
  """
  @type delete_text_message_spend_limit_override_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_media_message_spend_limit_override_request() :: %{
        required("MonthlyLimit") => float()
      }
      
  """
  @type set_media_message_spend_limit_override_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_opted_out_number_request() :: %{
        required("OptOutListName") => String.t(),
        required("OptedOutNumber") => String.t()
      }
      
  """
  @type put_opted_out_number_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_event_destination_result() :: %{
        "ConfigurationSetArn" => [String.t()],
        "ConfigurationSetName" => String.t(),
        "EventDestination" => event_destination()
      }
      
  """
  @type create_event_destination_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_configuration_set_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Tags") => list(tag()()),
        required("ConfigurationSetName") => String.t()
      }
      
  """
  @type create_configuration_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_verified_destination_number_result() :: %{
        "CreatedTimestamp" => [non_neg_integer()],
        "DestinationPhoneNumber" => String.t(),
        "Status" => String.t(),
        "Tags" => list(tag()()),
        "VerifiedDestinationNumberArn" => [String.t()],
        "VerifiedDestinationNumberId" => [String.t()]
      }
      
  """
  @type create_verified_destination_number_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_configuration_set_result() :: %{
        "ConfigurationSetArn" => [String.t()],
        "ConfigurationSetName" => String.t(),
        "CreatedTimestamp" => [non_neg_integer()],
        "DefaultMessageType" => String.t(),
        "DefaultSenderId" => String.t(),
        "EventDestinations" => list(event_destination()())
      }
      
  """
  @type delete_configuration_set_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_registration_field_value_result() :: %{
        "FieldPath" => String.t(),
        "RegistrationArn" => [String.t()],
        "RegistrationAttachmentId" => [String.t()],
        "RegistrationId" => [String.t()],
        "SelectChoices" => list(String.t()()),
        "TextValue" => String.t(),
        "VersionNumber" => float()
      }
      
  """
  @type delete_registration_field_value_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sns_destination() :: %{
        "TopicArn" => String.t()
      }
      
  """
  @type sns_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      verify_destination_number_request() :: %{
        required("VerificationCode") => String.t(),
        required("VerifiedDestinationNumberId") => String.t()
      }
      
  """
  @type verify_destination_number_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_default_message_type_result() :: %{
        "ConfigurationSetArn" => [String.t()],
        "ConfigurationSetName" => String.t(),
        "MessageType" => String.t()
      }
      
  """
  @type delete_default_message_type_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      opt_out_list_information() :: %{
        "CreatedTimestamp" => [non_neg_integer()],
        "OptOutListArn" => [String.t()],
        "OptOutListName" => String.t()
      }
      
  """
  @type opt_out_list_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_media_message_request() :: %{
        optional("ConfigurationSetName") => String.t(),
        optional("Context") => map(),
        optional("DryRun") => [boolean()],
        optional("MaxPrice") => String.t(),
        optional("MediaUrls") => list(String.t()()),
        optional("MessageBody") => String.t(),
        optional("ProtectConfigurationId") => String.t(),
        optional("TimeToLive") => integer(),
        required("DestinationPhoneNumber") => String.t(),
        required("OriginationIdentity") => String.t()
      }
      
  """
  @type send_media_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_protect_configuration_result() :: %{
        "AccountDefault" => [boolean()],
        "CreatedTimestamp" => [non_neg_integer()],
        "DeletionProtectionEnabled" => [boolean()],
        "ProtectConfigurationArn" => String.t(),
        "ProtectConfigurationId" => String.t()
      }
      
  """
  @type delete_protect_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_keyword_result() :: %{
        "Keyword" => String.t(),
        "KeywordAction" => String.t(),
        "KeywordMessage" => String.t(),
        "OriginationIdentity" => [String.t()],
        "OriginationIdentityArn" => [String.t()]
      }
      
  """
  @type delete_keyword_result() :: %{String.t() => any()}

  @type associate_origination_identity_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_protect_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_configuration_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_event_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_opt_out_list_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_pool_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_protect_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type create_registration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_registration_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_registration_attachment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_registration_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_verified_destination_number_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_account_default_protect_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_configuration_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_default_message_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_default_sender_id_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_event_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_keyword_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_media_message_spend_limit_override_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type delete_opt_out_list_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_opted_out_number_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_pool_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_protect_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_registration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_registration_attachment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_registration_field_value_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_text_message_spend_limit_override_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type delete_verified_destination_number_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_voice_message_spend_limit_override_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type describe_account_attributes_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type describe_account_limits_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type describe_configuration_sets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_keywords_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_opt_out_lists_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_opted_out_numbers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_phone_numbers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_pools_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_protect_configurations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_registration_attachments_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_registration_field_definitions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type describe_registration_field_values_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_registration_section_definitions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type describe_registration_type_definitions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type describe_registration_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_registrations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_sender_ids_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_spend_limits_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type describe_verified_destination_numbers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type disassociate_origination_identity_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_protect_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type discard_registration_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_protect_configuration_country_rule_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_pool_origination_identities_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_registration_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_keyword_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_opted_out_number_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_registration_field_value_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type release_phone_number_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type release_sender_id_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type request_phone_number_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type request_sender_id_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type send_destination_number_verification_code_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type send_media_message_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type send_text_message_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type send_voice_message_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type set_account_default_protect_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type set_default_message_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type set_default_sender_id_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type set_media_message_spend_limit_override_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type set_text_message_spend_limit_override_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type set_voice_message_spend_limit_override_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type submit_registration_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_event_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_phone_number_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_pool_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_protect_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_protect_configuration_country_rule_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_sender_id_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type verify_destination_number_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2022-03-31",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "sms-voice",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Pinpoint SMS Voice V2",
      signature_version: "v4",
      signing_name: "sms-voice",
      target_prefix: "PinpointSMSVoiceV2"
    }
  end

  @doc """
  Associates the specified origination identity with a pool. If the origination
  identity is a phone number and is already associated with another pool, an
  error is returned. A sender ID can be associated with multiple pools.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20AssociateOriginationIdentity&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_origination_identity_request`)
    %{
      optional("ClientToken") => String.t(),
      required("IsoCountryCode") => String.t(),
      required("OriginationIdentity") => String.t(),
      required("PoolId") => String.t()
    }
  """

  @spec associate_origination_identity(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, associate_origination_identity_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_origination_identity_errors()}

  def associate_origination_identity(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateOriginationIdentity", input, options)
  end

  @doc """
  Associate a protect configuration with a configuration set. This replaces the
  configuration sets current protect configuration. A configuration set can only
  be associated with one protect configuration at a time. A protect
  configuration can be associated with multiple configuration sets.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20AssociateProtectConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_protect_configuration_request`)
    %{
      required("ConfigurationSetName") => String.t(),
      required("ProtectConfigurationId") => String.t()
    }
  """

  @spec associate_protect_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, associate_protect_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_protect_configuration_errors()}

  def associate_protect_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateProtectConfiguration", input, options)
  end

  @doc """
  Creates a new configuration set. After you create the configuration set, you can
  add one or more event destinations to it. A configuration set is a set of
  rules that you apply to the SMS and voice messages that you send.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20CreateConfigurationSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_configuration_set_request`)
    %{
      optional("ClientToken") => String.t(),
      optional("Tags") => list(tag()()),
      required("ConfigurationSetName") => String.t()
    }
  """

  @spec create_configuration_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_configuration_set_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_configuration_set_errors()}

  def create_configuration_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateConfigurationSet", input, options)
  end

  @doc """
  Creates a new event destination in a configuration set. An event destination is
  a location where you send message events. The event options are Amazon
  CloudWatch, Amazon Kinesis Data Firehose, or Amazon SNS. For example, when a
  message is delivered successfully, you can send information about that event
  to an event destination, or send notifications to endpoints that are
  subscribed to an Amazon SNS topic.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20CreateEventDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_event_destination_request`)
    %{
      optional("ClientToken") => String.t(),
      optional("CloudWatchLogsDestination") => cloud_watch_logs_destination(),
      optional("KinesisFirehoseDestination") => kinesis_firehose_destination(),
      optional("SnsDestination") => sns_destination(),
      required("ConfigurationSetName") => String.t(),
      required("EventDestinationName") => String.t(),
      required("MatchingEventTypes") => list(String.t()())
    }
  """

  @spec create_event_destination(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_event_destination_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_event_destination_errors()}

  def create_event_destination(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateEventDestination", input, options)
  end

  @doc """
  Creates a new opt-out list. If the opt-out list name already exists, an error is
  returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20CreateOptOutList&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_opt_out_list_request`)
    %{
      optional("ClientToken") => String.t(),
      optional("Tags") => list(tag()()),
      required("OptOutListName") => String.t()
    }
  """

  @spec create_opt_out_list(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_opt_out_list_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_opt_out_list_errors()}

  def create_opt_out_list(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateOptOutList", input, options)
  end

  @doc """
  Creates a new pool and associates the specified origination identity to the
  pool. A pool can include one or more phone numbers and SenderIds that are
  associated with your Amazon Web Services account. The new pool inherits its
  configuration from the specified origination identity. This includes keywords,
  message type, opt-out list, two-way configuration, and self-managed opt-out
  configuration. Deletion protection isn't inherited from the origination
  identity and defaults to false.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20CreatePool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_pool_request`)
    %{
      optional("ClientToken") => String.t(),
      optional("DeletionProtectionEnabled") => [boolean()],
      optional("Tags") => list(tag()()),
      required("IsoCountryCode") => String.t(),
      required("MessageType") => String.t(),
      required("OriginationIdentity") => String.t()
    }
  """

  @spec create_pool(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_pool_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_pool_errors()}

  def create_pool(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePool", input, options)
  end

  @doc """
  Create a new protect configuration. By default all country rule sets for each
  capability are set to `ALLOW`. Update the country rule sets using
  `UpdateProtectConfigurationCountryRuleSet`. A protect configurations name is
  stored as a Tag with the key set to `Name` and value as the name of the
  protect configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20CreateProtectConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_protect_configuration_request`)
    %{
      optional("ClientToken") => String.t(),
      optional("DeletionProtectionEnabled") => [boolean()],
      optional("Tags") => list(tag()())
    }
  """

  @spec create_protect_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_protect_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_protect_configuration_errors()}

  def create_protect_configuration(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateProtectConfiguration", input, options)
  end

  @doc """
  Creates a new registration based on the **RegistrationType** field.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20CreateRegistration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_registration_request`)
    %{
      optional("ClientToken") => String.t(),
      optional("Tags") => list(tag()()),
      required("RegistrationType") => String.t()
    }
  """

  @spec create_registration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_registration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_registration_errors()}

  def create_registration(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRegistration", input, options)
  end

  @doc """
  Associate the registration with an origination identity such as a phone number
  or sender ID.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20CreateRegistrationAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_registration_association_request`)
    %{
      required("RegistrationId") => String.t(),
      required("ResourceId") => String.t()
    }
  """

  @spec create_registration_association(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_registration_association_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_registration_association_errors()}

  def create_registration_association(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRegistrationAssociation", input, options)
  end

  @doc """
  Create a new registration attachment to use for uploading a file or a URL to a
  file. The maximum file size is 1MiB and valid file extensions are PDF, JPEG
  and PNG. For example, many sender ID registrations require a signed “letter of
  authorization” (LOA) to be submitted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20CreateRegistrationAttachment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_registration_attachment_request`)
    %{
      optional("AttachmentBody") => binary(),
      optional("AttachmentUrl") => String.t(),
      optional("ClientToken") => String.t(),
      optional("Tags") => list(tag()())
    }
  """

  @spec create_registration_attachment(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_registration_attachment_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_registration_attachment_errors()}

  def create_registration_attachment(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRegistrationAttachment", input, options)
  end

  @doc """
  Create a new version of the registration and increase the **VersionNumber**. The
  previous version of the registration becomes read-only.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20CreateRegistrationVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_registration_version_request`)
    %{
      required("RegistrationId") => String.t()
    }
  """

  @spec create_registration_version(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_registration_version_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_registration_version_errors()}

  def create_registration_version(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRegistrationVersion", input, options)
  end

  @doc """
  You can only send messages to verified destination numbers when your account is
  in the sandbox. You can add up to 10 verified destination numbers.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20CreateVerifiedDestinationNumber&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_verified_destination_number_request`)
    %{
      optional("ClientToken") => String.t(),
      optional("Tags") => list(tag()()),
      required("DestinationPhoneNumber") => String.t()
    }
  """

  @spec create_verified_destination_number(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_verified_destination_number_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_verified_destination_number_errors()}

  def create_verified_destination_number(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateVerifiedDestinationNumber", input, options)
  end

  @doc """
  Removes the current account default protect configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DeleteAccountDefaultProtectConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_account_default_protect_configuration_request`)
    %{
      
    }
  """

  @spec delete_account_default_protect_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_account_default_protect_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_account_default_protect_configuration_errors()}

  def delete_account_default_protect_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAccountDefaultProtectConfiguration", input, options)
  end

  @doc """
  Deletes an existing configuration set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DeleteConfigurationSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_configuration_set_request`)
    %{
      required("ConfigurationSetName") => String.t()
    }
  """

  @spec delete_configuration_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_configuration_set_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_configuration_set_errors()}

  def delete_configuration_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteConfigurationSet", input, options)
  end

  @doc """
  Deletes an existing default message type on a configuration set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DeleteDefaultMessageType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_default_message_type_request`)
    %{
      required("ConfigurationSetName") => String.t()
    }
  """

  @spec delete_default_message_type(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_default_message_type_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_default_message_type_errors()}

  def delete_default_message_type(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDefaultMessageType", input, options)
  end

  @doc """
  Deletes an existing default sender ID on a configuration set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DeleteDefaultSenderId&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_default_sender_id_request`)
    %{
      required("ConfigurationSetName") => String.t()
    }
  """

  @spec delete_default_sender_id(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_default_sender_id_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_default_sender_id_errors()}

  def delete_default_sender_id(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDefaultSenderId", input, options)
  end

  @doc """
  Deletes an existing event destination.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DeleteEventDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_event_destination_request`)
    %{
      required("ConfigurationSetName") => String.t(),
      required("EventDestinationName") => String.t()
    }
  """

  @spec delete_event_destination(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_event_destination_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_event_destination_errors()}

  def delete_event_destination(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteEventDestination", input, options)
  end

  @doc """
  Deletes an existing keyword from an origination phone number or pool. A keyword
  is a word that you can search for on a particular phone number or pool. It is
  also a specific word or phrase that an end user can send to your number to
  elicit a response, such as an informational message or a special offer. When
  your number receives a message that begins with a keyword, Amazon Pinpoint
  responds with a customizable message.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DeleteKeyword&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_keyword_request`)
    %{
      required("Keyword") => String.t(),
      required("OriginationIdentity") => String.t()
    }
  """

  @spec delete_keyword(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_keyword_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_keyword_errors()}

  def delete_keyword(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteKeyword", input, options)
  end

  @doc """
  Deletes an account-level monthly spending limit override for sending multimedia
  messages (MMS). Deleting a spend limit override will set the `EnforcedLimit`
  to equal the `MaxLimit`, which is controlled by Amazon Web Services. For more
  information on spend limits (quotas) see [Quotas for Server Migration
  Service](https://docs.aws.amazon.com/sms-voice/latest/userguide/quotas.html)
  in the *Server Migration Service User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DeleteMediaMessageSpendLimitOverride&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_media_message_spend_limit_override_request`)
    %{
      
    }
  """

  @spec delete_media_message_spend_limit_override(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_media_message_spend_limit_override_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_media_message_spend_limit_override_errors()}

  def delete_media_message_spend_limit_override(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteMediaMessageSpendLimitOverride", input, options)
  end

  @doc """
  Deletes an existing opt-out list. All opted out phone numbers in the opt-out
  list are deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DeleteOptOutList&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_opt_out_list_request`)
    %{
      required("OptOutListName") => String.t()
    }
  """

  @spec delete_opt_out_list(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_opt_out_list_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_opt_out_list_errors()}

  def delete_opt_out_list(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteOptOutList", input, options)
  end

  @doc """
  Deletes an existing opted out destination phone number from the specified
  opt-out list. Each destination phone number can only be deleted once every 30
  days.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DeleteOptedOutNumber&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_opted_out_number_request`)
    %{
      required("OptOutListName") => String.t(),
      required("OptedOutNumber") => String.t()
    }
  """

  @spec delete_opted_out_number(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_opted_out_number_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_opted_out_number_errors()}

  def delete_opted_out_number(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteOptedOutNumber", input, options)
  end

  @doc """
  Deletes an existing pool. Deleting a pool disassociates all origination
  identities from that pool. If the pool status isn't active or if deletion
  protection is enabled, an error is returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DeletePool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_pool_request`)
    %{
      required("PoolId") => String.t()
    }
  """

  @spec delete_pool(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_pool_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_pool_errors()}

  def delete_pool(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePool", input, options)
  end

  @doc """
  Permanently delete the protect configuration. The protect configuration must
  have deletion protection disabled and must not be associated as the account
  default protect configuration or associated with a configuration set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DeleteProtectConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_protect_configuration_request`)
    %{
      required("ProtectConfigurationId") => String.t()
    }
  """

  @spec delete_protect_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_protect_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_protect_configuration_errors()}

  def delete_protect_configuration(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteProtectConfiguration", input, options)
  end

  @doc """
  Permanently delete an existing registration from your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DeleteRegistration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_registration_request`)
    %{
      required("RegistrationId") => String.t()
    }
  """

  @spec delete_registration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_registration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_registration_errors()}

  def delete_registration(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRegistration", input, options)
  end

  @doc """
  Permanently delete the specified registration attachment.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DeleteRegistrationAttachment&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_registration_attachment_request`)
    %{
      required("RegistrationAttachmentId") => String.t()
    }
  """

  @spec delete_registration_attachment(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_registration_attachment_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_registration_attachment_errors()}

  def delete_registration_attachment(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRegistrationAttachment", input, options)
  end

  @doc """
  Delete the value in a registration form field.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DeleteRegistrationFieldValue&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_registration_field_value_request`)
    %{
      required("FieldPath") => String.t(),
      required("RegistrationId") => String.t()
    }
  """

  @spec delete_registration_field_value(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_registration_field_value_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_registration_field_value_errors()}

  def delete_registration_field_value(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRegistrationFieldValue", input, options)
  end

  @doc """
  Deletes an account-level monthly spending limit override for sending text
  messages. Deleting a spend limit override will set the `EnforcedLimit` to
  equal the `MaxLimit`, which is controlled by Amazon Web Services. For more
  information on spend limits (quotas) see [Amazon Pinpoint quotas
  ](https://docs.aws.amazon.com/pinpoint/latest/developerguide/quotas.html) in
  the *Amazon Pinpoint Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DeleteTextMessageSpendLimitOverride&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_text_message_spend_limit_override_request`)
    %{
      
    }
  """

  @spec delete_text_message_spend_limit_override(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_text_message_spend_limit_override_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_text_message_spend_limit_override_errors()}

  def delete_text_message_spend_limit_override(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTextMessageSpendLimitOverride", input, options)
  end

  @doc """
  Delete a verified destination phone number.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DeleteVerifiedDestinationNumber&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_verified_destination_number_request`)
    %{
      required("VerifiedDestinationNumberId") => String.t()
    }
  """

  @spec delete_verified_destination_number(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_verified_destination_number_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_verified_destination_number_errors()}

  def delete_verified_destination_number(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteVerifiedDestinationNumber", input, options)
  end

  @doc """
  Deletes an account level monthly spend limit override for sending voice
  messages. Deleting a spend limit override sets the `EnforcedLimit` equal to
  the `MaxLimit`, which is controlled by Amazon Web Services. For more
  information on spending limits (quotas) see [Amazon Pinpoint
  quotas](https://docs.aws.amazon.com/pinpoint/latest/developerguide/quotas.html)
  in the *Amazon Pinpoint Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DeleteVoiceMessageSpendLimitOverride&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_voice_message_spend_limit_override_request`)
    %{
      
    }
  """

  @spec delete_voice_message_spend_limit_override(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_voice_message_spend_limit_override_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_voice_message_spend_limit_override_errors()}

  def delete_voice_message_spend_limit_override(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteVoiceMessageSpendLimitOverride", input, options)
  end

  @doc """
  Describes attributes of your Amazon Web Services account. The supported account
  attributes include account tier, which indicates whether your account is in
  the sandbox or production environment. When you're ready to move your account
  out of the sandbox, create an Amazon Web Services Support case for a service
  limit increase request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DescribeAccountAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_account_attributes_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec describe_account_attributes(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_account_attributes_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_account_attributes_errors()}

  def describe_account_attributes(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAccountAttributes", input, options)
  end

  @doc """
  Describes the current Amazon Pinpoint SMS Voice V2 resource quotas for your
  account. The description for a quota includes the quota name, current usage
  toward that quota, and the quota's maximum value.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DescribeAccountLimits&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_account_limits_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec describe_account_limits(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_account_limits_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_account_limits_errors()}

  def describe_account_limits(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAccountLimits", input, options)
  end

  @doc """
  Describes the specified configuration sets or all in your account. If you
  specify configuration set names, the output includes information for only the
  specified configuration sets. If you specify filters, the output includes
  information for only those configuration sets that meet the filter criteria.
  If you don't specify configuration set names or filters, the output includes
  information for all configuration sets.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DescribeConfigurationSets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_configuration_sets_request`)
    %{
      optional("ConfigurationSetNames") => list(String.t()()),
      optional("Filters") => list(configuration_set_filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec describe_configuration_sets(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_configuration_sets_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_configuration_sets_errors()}

  def describe_configuration_sets(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeConfigurationSets", input, options)
  end

  @doc """
  Describes the specified keywords or all keywords on your origination phone
  number or pool. A keyword is a word that you can search for on a particular
  phone number or pool. It is also a specific word or phrase that an end user
  can send to your number to elicit a response, such as an informational message
  or a special offer. When your number receives a message that begins with a
  keyword, Amazon Pinpoint responds with a customizable message.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DescribeKeywords&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_keywords_request`)
    %{
      optional("Filters") => list(keyword_filter()()),
      optional("Keywords") => list(String.t()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("OriginationIdentity") => String.t()
    }
  """

  @spec describe_keywords(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_keywords_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_keywords_errors()}

  def describe_keywords(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeKeywords", input, options)
  end

  @doc """
  Describes the specified opt-out list or all opt-out lists in your account. If
  you specify opt-out list names, the output includes information for only the
  specified opt-out lists. Opt-out lists include only those that meet the filter
  criteria. If you don't specify opt-out list names or filters, the output
  includes information for all opt-out lists.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DescribeOptOutLists&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_opt_out_lists_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("OptOutListNames") => list(String.t()())
    }
  """

  @spec describe_opt_out_lists(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_opt_out_lists_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_opt_out_lists_errors()}

  def describe_opt_out_lists(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeOptOutLists", input, options)
  end

  @doc """
  Describes the specified opted out destination numbers or all opted out
  destination numbers in an opt-out list. If you specify opted out numbers, the
  output includes information for only the specified opted out numbers. If you
  specify filters, the output includes information for only those opted out
  numbers that meet the filter criteria. If you don't specify opted out numbers
  or filters, the output includes information for all opted out destination
  numbers in your opt-out list.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DescribeOptedOutNumbers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_opted_out_numbers_request`)
    %{
      optional("Filters") => list(opted_out_filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("OptedOutNumbers") => list(String.t()()),
      required("OptOutListName") => String.t()
    }
  """

  @spec describe_opted_out_numbers(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_opted_out_numbers_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_opted_out_numbers_errors()}

  def describe_opted_out_numbers(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeOptedOutNumbers", input, options)
  end

  @doc """
  Describes the specified origination phone number, or all the phone numbers in
  your account. If you specify phone number IDs, the output includes information
  for only the specified phone numbers. If you specify filters, the output
  includes information for only those phone numbers that meet the filter
  criteria. If you don't specify phone number IDs or filters, the output
  includes information for all phone numbers.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DescribePhoneNumbers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_phone_numbers_request`)
    %{
      optional("Filters") => list(phone_number_filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("PhoneNumberIds") => list(String.t()())
    }
  """

  @spec describe_phone_numbers(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_phone_numbers_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_phone_numbers_errors()}

  def describe_phone_numbers(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribePhoneNumbers", input, options)
  end

  @doc """
  Retrieves the specified pools or all pools associated with your Amazon Web
  Services account. If you specify pool IDs, the output includes information for
  only the specified pools. If you specify filters, the output includes
  information for only those pools that meet the filter criteria. If you don't
  specify pool IDs or filters, the output includes information for all pools.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DescribePools&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_pools_request`)
    %{
      optional("Filters") => list(pool_filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("PoolIds") => list(String.t()())
    }
  """

  @spec describe_pools(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_pools_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_pools_errors()}

  def describe_pools(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribePools", input, options)
  end

  @doc """
  Retrieves the protect configurations that match any of filters. If a filter
  isn’t provided then all protect configurations are returned.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DescribeProtectConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_protect_configurations_request`)
    %{
      optional("Filters") => list(protect_configuration_filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("ProtectConfigurationIds") => list(String.t()())
    }
  """

  @spec describe_protect_configurations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_protect_configurations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_protect_configurations_errors()}

  def describe_protect_configurations(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeProtectConfigurations", input, options)
  end

  @doc """
  Retrieves the specified registration attachments or all registration attachments
  associated with your Amazon Web Services account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DescribeRegistrationAttachments&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_registration_attachments_request`)
    %{
      optional("Filters") => list(registration_attachment_filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("RegistrationAttachmentIds") => list(String.t()())
    }
  """

  @spec describe_registration_attachments(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_registration_attachments_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_registration_attachments_errors()}

  def describe_registration_attachments(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRegistrationAttachments", input, options)
  end

  @doc """
  Retrieves the specified registration type field definitions. You can use
  DescribeRegistrationFieldDefinitions to view the requirements for creating,
  filling out, and submitting each registration type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DescribeRegistrationFieldDefinitions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_registration_field_definitions_request`)
    %{
      optional("FieldPaths") => list(String.t()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("SectionPath") => String.t(),
      required("RegistrationType") => String.t()
    }
  """

  @spec describe_registration_field_definitions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_registration_field_definitions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_registration_field_definitions_errors()}

  def describe_registration_field_definitions(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRegistrationFieldDefinitions", input, options)
  end

  @doc """
  Retrieves the specified registration field values.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DescribeRegistrationFieldValues&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_registration_field_values_request`)
    %{
      optional("FieldPaths") => list(String.t()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("SectionPath") => String.t(),
      optional("VersionNumber") => float(),
      required("RegistrationId") => String.t()
    }
  """

  @spec describe_registration_field_values(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_registration_field_values_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_registration_field_values_errors()}

  def describe_registration_field_values(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRegistrationFieldValues", input, options)
  end

  @doc """
  Retrieves the specified registration section definitions. You can use
  DescribeRegistrationSectionDefinitions to view the requirements for creating,
  filling out, and submitting each registration type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DescribeRegistrationSectionDefinitions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_registration_section_definitions_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("SectionPaths") => list(String.t()()),
      required("RegistrationType") => String.t()
    }
  """

  @spec describe_registration_section_definitions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_registration_section_definitions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_registration_section_definitions_errors()}

  def describe_registration_section_definitions(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRegistrationSectionDefinitions", input, options)
  end

  @doc """
  Retrieves the specified registration type definitions. You can use
  DescribeRegistrationTypeDefinitions to view the requirements for creating,
  filling out, and submitting each registration type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DescribeRegistrationTypeDefinitions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_registration_type_definitions_request`)
    %{
      optional("Filters") => list(registration_type_filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("RegistrationTypes") => list(String.t()())
    }
  """

  @spec describe_registration_type_definitions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_registration_type_definitions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_registration_type_definitions_errors()}

  def describe_registration_type_definitions(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRegistrationTypeDefinitions", input, options)
  end

  @doc """
  Retrieves the specified registration version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DescribeRegistrationVersions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_registration_versions_request`)
    %{
      optional("Filters") => list(registration_version_filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("VersionNumbers") => list(float()()),
      required("RegistrationId") => String.t()
    }
  """

  @spec describe_registration_versions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_registration_versions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_registration_versions_errors()}

  def describe_registration_versions(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRegistrationVersions", input, options)
  end

  @doc """
  Retrieves the specified registrations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DescribeRegistrations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_registrations_request`)
    %{
      optional("Filters") => list(registration_filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("RegistrationIds") => list(String.t()())
    }
  """

  @spec describe_registrations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_registrations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_registrations_errors()}

  def describe_registrations(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRegistrations", input, options)
  end

  @doc """
  Describes the specified SenderIds or all SenderIds associated with your Amazon
  Web Services account. If you specify SenderIds, the output includes
  information for only the specified SenderIds. If you specify filters, the
  output includes information for only those SenderIds that meet the filter
  criteria. If you don't specify SenderIds or filters, the output includes
  information for all SenderIds.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DescribeSenderIds&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_sender_ids_request`)
    %{
      optional("Filters") => list(sender_id_filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("SenderIds") => list(sender_id_and_country()())
    }
  """

  @spec describe_sender_ids(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_sender_ids_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_sender_ids_errors()}

  def describe_sender_ids(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSenderIds", input, options)
  end

  @doc """
  Describes the current Amazon Pinpoint monthly spend limits for sending voice and
  text messages.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DescribeSpendLimits&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_spend_limits_request`)
    %{
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t()
    }
  """

  @spec describe_spend_limits(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_spend_limits_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_spend_limits_errors()}

  def describe_spend_limits(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSpendLimits", input, options)
  end

  @doc """
  Retrieves the specified verified destiona numbers.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DescribeVerifiedDestinationNumbers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_verified_destination_numbers_request`)
    %{
      optional("DestinationPhoneNumbers") => list(String.t()()),
      optional("Filters") => list(verified_destination_number_filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      optional("VerifiedDestinationNumberIds") => list(String.t()())
    }
  """

  @spec describe_verified_destination_numbers(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_verified_destination_numbers_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_verified_destination_numbers_errors()}

  def describe_verified_destination_numbers(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeVerifiedDestinationNumbers", input, options)
  end

  @doc """
  Removes the specified origination identity from an existing pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DisassociateOriginationIdentity&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disassociate_origination_identity_request`)
    %{
      optional("ClientToken") => String.t(),
      required("IsoCountryCode") => String.t(),
      required("OriginationIdentity") => String.t(),
      required("PoolId") => String.t()
    }
  """

  @spec disassociate_origination_identity(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disassociate_origination_identity_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_origination_identity_errors()}

  def disassociate_origination_identity(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateOriginationIdentity", input, options)
  end

  @doc """
  Disassociate a protect configuration from a configuration set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DisassociateProtectConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disassociate_protect_configuration_request`)
    %{
      required("ConfigurationSetName") => String.t(),
      required("ProtectConfigurationId") => String.t()
    }
  """

  @spec disassociate_protect_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disassociate_protect_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_protect_configuration_errors()}

  def disassociate_protect_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateProtectConfiguration", input, options)
  end

  @doc """
  Discard the current version of the registration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20DiscardRegistrationVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:discard_registration_version_request`)
    %{
      required("RegistrationId") => String.t()
    }
  """

  @spec discard_registration_version(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, discard_registration_version_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, discard_registration_version_errors()}

  def discard_registration_version(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DiscardRegistrationVersion", input, options)
  end

  @doc """
  Retrieve the CountryRuleSet for the specified NumberCapability from a protect
  configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20GetProtectConfigurationCountryRuleSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_protect_configuration_country_rule_set_request`)
    %{
      required("NumberCapability") => String.t(),
      required("ProtectConfigurationId") => String.t()
    }
  """

  @spec get_protect_configuration_country_rule_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_protect_configuration_country_rule_set_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_protect_configuration_country_rule_set_errors()}

  def get_protect_configuration_country_rule_set(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetProtectConfigurationCountryRuleSet", input, options)
  end

  @doc """
  Lists all associated origination identities in your pool.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20ListPoolOriginationIdentities&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_pool_origination_identities_request`)
    %{
      optional("Filters") => list(pool_origination_identities_filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("PoolId") => String.t()
    }
  """

  @spec list_pool_origination_identities(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_pool_origination_identities_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_pool_origination_identities_errors()}

  def list_pool_origination_identities(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPoolOriginationIdentities", input, options)
  end

  @doc """
  Retreive all of the origination identies that are associated with a
  registration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20ListRegistrationAssociations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_registration_associations_request`)
    %{
      optional("Filters") => list(registration_association_filter()()),
      optional("MaxResults") => integer(),
      optional("NextToken") => String.t(),
      required("RegistrationId") => String.t()
    }
  """

  @spec list_registration_associations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_registration_associations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_registration_associations_errors()}

  def list_registration_associations(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRegistrationAssociations", input, options)
  end

  @doc """
  List all tags associated with a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_request`)
    %{
      required("ResourceArn") => String.t()
    }
  """

  @spec list_tags_for_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_tags_for_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}

  def list_tags_for_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Creates or updates a keyword configuration on an origination phone number or
  pool. A keyword is a word that you can search for on a particular phone number
  or pool. It is also a specific word or phrase that an end user can send to
  your number to elicit a response, such as an informational message or a
  special offer. When your number receives a message that begins with a keyword,
  Amazon Pinpoint responds with a customizable message.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20PutKeyword&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_keyword_request`)
    %{
      optional("KeywordAction") => String.t(),
      required("Keyword") => String.t(),
      required("KeywordMessage") => String.t(),
      required("OriginationIdentity") => String.t()
    }
  """

  @spec put_keyword(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_keyword_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_keyword_errors()}

  def put_keyword(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutKeyword", input, options)
  end

  @doc """
  Creates an opted out destination phone number in the opt-out list.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20PutOptedOutNumber&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_opted_out_number_request`)
    %{
      required("OptOutListName") => String.t(),
      required("OptedOutNumber") => String.t()
    }
  """

  @spec put_opted_out_number(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_opted_out_number_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_opted_out_number_errors()}

  def put_opted_out_number(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutOptedOutNumber", input, options)
  end

  @doc """
  Creates or updates a field value for a registration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20PutRegistrationFieldValue&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_registration_field_value_request`)
    %{
      optional("RegistrationAttachmentId") => String.t(),
      optional("SelectChoices") => list(String.t()()),
      optional("TextValue") => String.t(),
      required("FieldPath") => String.t(),
      required("RegistrationId") => String.t()
    }
  """

  @spec put_registration_field_value(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_registration_field_value_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_registration_field_value_errors()}

  def put_registration_field_value(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutRegistrationFieldValue", input, options)
  end

  @doc """
  Releases an existing origination phone number in your account. Once released, a
  phone number is no longer available for sending messages.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20ReleasePhoneNumber&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:release_phone_number_request`)
    %{
      required("PhoneNumberId") => String.t()
    }
  """

  @spec release_phone_number(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, release_phone_number_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, release_phone_number_errors()}

  def release_phone_number(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ReleasePhoneNumber", input, options)
  end

  @doc """
  Releases an existing sender ID in your account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20ReleaseSenderId&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:release_sender_id_request`)
    %{
      required("IsoCountryCode") => String.t(),
      required("SenderId") => String.t()
    }
  """

  @spec release_sender_id(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, release_sender_id_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, release_sender_id_errors()}

  def release_sender_id(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ReleaseSenderId", input, options)
  end

  @doc """
  Request an origination phone number for use in your account. For more
  information on phone number request see [ Requesting a number
  ](https://docs.aws.amazon.com/pinpoint/latest/userguide/settings-sms-request-number.html)
  in the *Amazon Pinpoint User Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20RequestPhoneNumber&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:request_phone_number_request`)
    %{
      optional("ClientToken") => String.t(),
      optional("DeletionProtectionEnabled") => [boolean()],
      optional("OptOutListName") => String.t(),
      optional("PoolId") => String.t(),
      optional("RegistrationId") => String.t(),
      optional("Tags") => list(tag()()),
      required("IsoCountryCode") => String.t(),
      required("MessageType") => String.t(),
      required("NumberCapabilities") => list(String.t()()),
      required("NumberType") => String.t()
    }
  """

  @spec request_phone_number(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, request_phone_number_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, request_phone_number_errors()}

  def request_phone_number(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RequestPhoneNumber", input, options)
  end

  @doc """
  Request a new sender ID that doesn't require registration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20RequestSenderId&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:request_sender_id_request`)
    %{
      optional("ClientToken") => String.t(),
      optional("DeletionProtectionEnabled") => [boolean()],
      optional("MessageTypes") => list(String.t()()),
      optional("Tags") => list(tag()()),
      required("IsoCountryCode") => String.t(),
      required("SenderId") => String.t()
    }
  """

  @spec request_sender_id(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, request_sender_id_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, request_sender_id_errors()}

  def request_sender_id(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RequestSenderId", input, options)
  end

  @doc """
  Before you can send test messages to a verified destination phone number you
  need to opt-in the verified destination phone number. Creates a new text
  message with a verification code and send it to a verified destination phone
  number. Once you have the verification code use `VerifyDestinationNumber` to
  opt-in the verified destination phone number to receive messages.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20SendDestinationNumberVerificationCode&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:send_destination_number_verification_code_request`)
    %{
      optional("ConfigurationSetName") => String.t(),
      optional("Context") => map(),
      optional("DestinationCountryParameters") => map(),
      optional("LanguageCode") => String.t(),
      optional("OriginationIdentity") => String.t(),
      required("VerificationChannel") => String.t(),
      required("VerifiedDestinationNumberId") => String.t()
    }
  """

  @spec send_destination_number_verification_code(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, send_destination_number_verification_code_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_destination_number_verification_code_errors()}

  def send_destination_number_verification_code(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SendDestinationNumberVerificationCode", input, options)
  end

  @doc """
  Creates a new multimedia message (MMS) and sends it to a recipient's phone
  number.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20SendMediaMessage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:send_media_message_request`)
    %{
      optional("ConfigurationSetName") => String.t(),
      optional("Context") => map(),
      optional("DryRun") => [boolean()],
      optional("MaxPrice") => String.t(),
      optional("MediaUrls") => list(String.t()()),
      optional("MessageBody") => String.t(),
      optional("ProtectConfigurationId") => String.t(),
      optional("TimeToLive") => integer(),
      required("DestinationPhoneNumber") => String.t(),
      required("OriginationIdentity") => String.t()
    }
  """

  @spec send_media_message(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, send_media_message_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_media_message_errors()}

  def send_media_message(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SendMediaMessage", input, options)
  end

  @doc """
  Creates a new text message and sends it to a recipient's phone number.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20SendTextMessage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:send_text_message_request`)
    %{
      optional("ConfigurationSetName") => String.t(),
      optional("Context") => map(),
      optional("DestinationCountryParameters") => map(),
      optional("DryRun") => [boolean()],
      optional("Keyword") => String.t(),
      optional("MaxPrice") => String.t(),
      optional("MessageBody") => String.t(),
      optional("MessageType") => String.t(),
      optional("OriginationIdentity") => String.t(),
      optional("ProtectConfigurationId") => String.t(),
      optional("TimeToLive") => integer(),
      required("DestinationPhoneNumber") => String.t()
    }
  """

  @spec send_text_message(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, send_text_message_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_text_message_errors()}

  def send_text_message(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SendTextMessage", input, options)
  end

  @doc """
  Allows you to send a request that sends a voice message through Amazon Pinpoint.
  This operation uses [Amazon Polly](http://aws.amazon.com/polly/) to convert a
  text script into a voice message.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20SendVoiceMessage&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:send_voice_message_request`)
    %{
      optional("ConfigurationSetName") => String.t(),
      optional("Context") => map(),
      optional("DryRun") => [boolean()],
      optional("MaxPricePerMinute") => String.t(),
      optional("MessageBody") => String.t(),
      optional("MessageBodyTextType") => String.t(),
      optional("ProtectConfigurationId") => String.t(),
      optional("TimeToLive") => integer(),
      optional("VoiceId") => String.t(),
      required("DestinationPhoneNumber") => String.t(),
      required("OriginationIdentity") => String.t()
    }
  """

  @spec send_voice_message(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, send_voice_message_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_voice_message_errors()}

  def send_voice_message(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SendVoiceMessage", input, options)
  end

  @doc """
  Set a protect configuration as your account default. You can only have one
  account default protect configuration at a time. The current account default
  protect configuration is replaced with the provided protect configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20SetAccountDefaultProtectConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_account_default_protect_configuration_request`)
    %{
      required("ProtectConfigurationId") => String.t()
    }
  """

  @spec set_account_default_protect_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_account_default_protect_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_account_default_protect_configuration_errors()}

  def set_account_default_protect_configuration(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetAccountDefaultProtectConfiguration", input, options)
  end

  @doc """
  Sets the default message type on a configuration set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20SetDefaultMessageType&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_default_message_type_request`)
    %{
      required("ConfigurationSetName") => String.t(),
      required("MessageType") => String.t()
    }
  """

  @spec set_default_message_type(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_default_message_type_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_default_message_type_errors()}

  def set_default_message_type(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetDefaultMessageType", input, options)
  end

  @doc """
  Sets default sender ID on a configuration set.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20SetDefaultSenderId&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_default_sender_id_request`)
    %{
      required("ConfigurationSetName") => String.t(),
      required("SenderId") => String.t()
    }
  """

  @spec set_default_sender_id(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_default_sender_id_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_default_sender_id_errors()}

  def set_default_sender_id(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetDefaultSenderId", input, options)
  end

  @doc """
  Sets an account level monthly spend limit override for sending MMS messages. The
  requested spend limit must be less than or equal to the `MaxLimit`, which is
  set by Amazon Web Services.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20SetMediaMessageSpendLimitOverride&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_media_message_spend_limit_override_request`)
    %{
      required("MonthlyLimit") => float()
    }
  """

  @spec set_media_message_spend_limit_override(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_media_message_spend_limit_override_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_media_message_spend_limit_override_errors()}

  def set_media_message_spend_limit_override(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetMediaMessageSpendLimitOverride", input, options)
  end

  @doc """
  Sets an account level monthly spend limit override for sending text messages.
  The requested spend limit must be less than or equal to the `MaxLimit`, which
  is set by Amazon Web Services.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20SetTextMessageSpendLimitOverride&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_text_message_spend_limit_override_request`)
    %{
      required("MonthlyLimit") => float()
    }
  """

  @spec set_text_message_spend_limit_override(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_text_message_spend_limit_override_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_text_message_spend_limit_override_errors()}

  def set_text_message_spend_limit_override(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetTextMessageSpendLimitOverride", input, options)
  end

  @doc """
  Sets an account level monthly spend limit override for sending voice messages.
  The requested spend limit must be less than or equal to the `MaxLimit`, which
  is set by Amazon Web Services.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20SetVoiceMessageSpendLimitOverride&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:set_voice_message_spend_limit_override_request`)
    %{
      required("MonthlyLimit") => float()
    }
  """

  @spec set_voice_message_spend_limit_override(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, set_voice_message_spend_limit_override_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_voice_message_spend_limit_override_errors()}

  def set_voice_message_spend_limit_override(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetVoiceMessageSpendLimitOverride", input, options)
  end

  @doc """
  Submit the specified registration for review and approval.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20SubmitRegistrationVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:submit_registration_version_request`)
    %{
      required("RegistrationId") => String.t()
    }
  """

  @spec submit_registration_version(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, submit_registration_version_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, submit_registration_version_errors()}

  def submit_registration_version(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SubmitRegistrationVersion", input, options)
  end

  @doc """
  Adds or overwrites only the specified tags for the specified Amazon Pinpoint SMS
  Voice, version 2 resource. When you specify an existing tag key, the value is
  overwritten with the new value. Each resource can have a maximum of 50 tags.
  Each tag consists of a key and an optional value. Tag keys must be unique per
  resource. For more information about tags, see [ Tagging Amazon Pinpoint
  resources](https://docs.aws.amazon.com/pinpoint/latest/developerguide/tagging-resources.html)
  in the *Amazon Pinpoint Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_request`)
    %{
      required("ResourceArn") => String.t(),
      required("Tags") => list(tag()())
    }
  """

  @spec tag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, tag_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes the association of the specified tags from an Amazon Pinpoint SMS Voice
  V2 resource. For more information on tags see [ Tagging Amazon Pinpoint
  resources](https://docs.aws.amazon.com/pinpoint/latest/developerguide/tagging-resources.html)
  in the *Amazon Pinpoint Developer Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_request`)
    %{
      required("ResourceArn") => String.t(),
      required("TagKeys") => list(String.t()())
    }
  """

  @spec untag_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, untag_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

  def untag_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an existing event destination in a configuration set. You can update the
  IAM role ARN for CloudWatch Logs and Kinesis Data Firehose. You can also
  enable or disable the event destination.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20UpdateEventDestination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_event_destination_request`)
    %{
      optional("CloudWatchLogsDestination") => cloud_watch_logs_destination(),
      optional("Enabled") => [boolean()],
      optional("KinesisFirehoseDestination") => kinesis_firehose_destination(),
      optional("MatchingEventTypes") => list(String.t()()),
      optional("SnsDestination") => sns_destination(),
      required("ConfigurationSetName") => String.t(),
      required("EventDestinationName") => String.t()
    }
  """

  @spec update_event_destination(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_event_destination_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_event_destination_errors()}

  def update_event_destination(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateEventDestination", input, options)
  end

  @doc """
  Updates the configuration of an existing origination phone number. You can
  update the opt-out list, enable or disable two-way messaging, change the
  TwoWayChannelArn, enable or disable self-managed opt-outs, and enable or
  disable deletion protection.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20UpdatePhoneNumber&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_phone_number_request`)
    %{
      optional("DeletionProtectionEnabled") => [boolean()],
      optional("OptOutListName") => String.t(),
      optional("SelfManagedOptOutsEnabled") => [boolean()],
      optional("TwoWayChannelArn") => String.t(),
      optional("TwoWayChannelRole") => String.t(),
      optional("TwoWayEnabled") => [boolean()],
      required("PhoneNumberId") => String.t()
    }
  """

  @spec update_phone_number(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_phone_number_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_phone_number_errors()}

  def update_phone_number(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePhoneNumber", input, options)
  end

  @doc """
  Updates the configuration of an existing pool. You can update the opt-out list,
  enable or disable two-way messaging, change the `TwoWayChannelArn`, enable or
  disable self-managed opt-outs, enable or disable deletion protection, and
  enable or disable shared routes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20UpdatePool&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_pool_request`)
    %{
      optional("DeletionProtectionEnabled") => [boolean()],
      optional("OptOutListName") => String.t(),
      optional("SelfManagedOptOutsEnabled") => [boolean()],
      optional("SharedRoutesEnabled") => [boolean()],
      optional("TwoWayChannelArn") => String.t(),
      optional("TwoWayChannelRole") => String.t(),
      optional("TwoWayEnabled") => [boolean()],
      required("PoolId") => String.t()
    }
  """

  @spec update_pool(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_pool_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_pool_errors()}

  def update_pool(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePool", input, options)
  end

  @doc """
  Update the setting for an existing protect configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20UpdateProtectConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_protect_configuration_request`)
    %{
      optional("DeletionProtectionEnabled") => [boolean()],
      required("ProtectConfigurationId") => String.t()
    }
  """

  @spec update_protect_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_protect_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_protect_configuration_errors()}

  def update_protect_configuration(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateProtectConfiguration", input, options)
  end

  @doc """
  Update a country rule set to `ALLOW` or `BLOCK` messages to be sent to the
  specified destination counties. You can update one or multiple countries at a
  time. The updates are only applied to the specified NumberCapability type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20UpdateProtectConfigurationCountryRuleSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_protect_configuration_country_rule_set_request`)
    %{
      required("CountryRuleSetUpdates") => map(),
      required("NumberCapability") => String.t(),
      required("ProtectConfigurationId") => String.t()
    }
  """

  @spec update_protect_configuration_country_rule_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_protect_configuration_country_rule_set_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_protect_configuration_country_rule_set_errors()}

  def update_protect_configuration_country_rule_set(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateProtectConfigurationCountryRuleSet", input, options)
  end

  @doc """
  Updates the configuration of an existing sender ID.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20UpdateSenderId&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_sender_id_request`)
    %{
      optional("DeletionProtectionEnabled") => [boolean()],
      required("IsoCountryCode") => String.t(),
      required("SenderId") => String.t()
    }
  """

  @spec update_sender_id(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_sender_id_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_sender_id_errors()}

  def update_sender_id(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSenderId", input, options)
  end

  @doc """
  Use the verification code that was received by the verified destination phone
  number to opt-in the verified destination phone number to receive more
  messages.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=pinpointsmsvoicev2%20VerifyDestinationNumber&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:verify_destination_number_request`)
    %{
      required("VerificationCode") => String.t(),
      required("VerifiedDestinationNumberId") => String.t()
    }
  """

  @spec verify_destination_number(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, verify_destination_number_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, verify_destination_number_errors()}

  def verify_destination_number(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "VerifyDestinationNumber", input, options)
  end
end
