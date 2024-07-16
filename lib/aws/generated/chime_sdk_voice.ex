# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ChimeSDKVoice do
  @moduledoc """
  The Amazon Chime SDK telephony APIs in this section enable developers to create
  PSTN calling solutions that use Amazon Chime SDK Voice Connectors, and Amazon
  Chime SDK SIP media applications. Developers can also order and manage phone
  numbers, create and manage Voice Connectors and SIP media applications, and
  run voice analytics.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      streaming_configuration() :: %{
        "DataRetentionInHours" => integer(),
        "Disabled" => boolean(),
        "MediaInsightsConfiguration" => media_insights_configuration(),
        "StreamingNotificationTargets" => list(streaming_notification_target()())
      }

  """
  @type streaming_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_phone_number_request() :: %{
        required("PhoneNumberIds") => list(String.t()())
      }

  """
  @type batch_delete_phone_number_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_voice_connector_termination_credentials_request() :: %{
        optional("Credentials") => list(credential()())
      }

  """
  @type put_voice_connector_termination_credentials_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_sip_rule_request() :: %{
        optional("Disabled") => boolean(),
        optional("TargetApplications") => list(sip_rule_target_application()()),
        required("Name") => String.t()
      }

  """
  @type update_sip_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sip_rule() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "Disabled" => boolean(),
        "Name" => String.t(),
        "SipRuleId" => String.t(),
        "TargetApplications" => list(sip_rule_target_application()()),
        "TriggerType" => list(any()),
        "TriggerValue" => String.t(),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type sip_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      call_details() :: %{
        "IsCaller" => boolean(),
        "TransactionId" => String.t(),
        "VoiceConnectorId" => String.t()
      }

  """
  @type call_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_phone_number_order_response() :: %{
        "PhoneNumberOrder" => phone_number_order()
      }

  """
  @type create_phone_number_order_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_sip_media_application_request() :: %{
        optional("Tags") => list(tag()()),
        required("AwsRegion") => String.t(),
        required("Endpoints") => list(sip_media_application_endpoint()()),
        required("Name") => String.t()
      }

  """
  @type create_sip_media_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_sip_media_application_call_response() :: %{
        "SipMediaApplicationCall" => sip_media_application_call()
      }

  """
  @type update_sip_media_application_call_response() :: %{String.t() => any()}

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

      put_sip_media_application_logging_configuration_request() :: %{
        optional("SipMediaApplicationLoggingConfiguration") => sip_media_application_logging_configuration()
      }

  """
  @type put_sip_media_application_logging_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      proxy() :: %{
        "DefaultSessionExpiryMinutes" => integer(),
        "Disabled" => boolean(),
        "FallBackPhoneNumber" => String.t(),
        "PhoneNumberCountries" => list(String.t()())
      }

  """
  @type proxy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_proxy_session_request() :: %{
        optional("ExpiryMinutes") => integer(),
        required("Capabilities") => list(list(any())())
      }

  """
  @type update_proxy_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_update_phone_number_response() :: %{
        "PhoneNumberErrors" => list(phone_number_error()())
      }

  """
  @type batch_update_phone_number_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_termination_health_request() :: %{}

  """
  @type get_voice_connector_termination_health_request() :: %{}

  @typedoc """

  ## Example:

      validate_e911_address_response() :: %{
        "Address" => address(),
        "AddressExternalId" => String.t(),
        "CandidateAddressList" => list(candidate_address()()),
        "ValidationResult" => integer()
      }

  """
  @type validate_e911_address_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_voice_connector_response() :: %{
        "VoiceConnector" => voice_connector()
      }

  """
  @type update_voice_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_phone_number_orders_response() :: %{
        "NextToken" => String.t(),
        "PhoneNumberOrders" => list(phone_number_order()())
      }

  """
  @type list_phone_number_orders_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_voice_tone_analysis_task_request() :: %{
        optional("ClientRequestToken") => String.t(),
        required("LanguageCode") => list(any()),
        required("TransactionId") => String.t()
      }

  """
  @type start_voice_tone_analysis_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      speaker_search_result() :: %{
        "ConfidenceScore" => float(),
        "VoiceProfileId" => String.t()
      }

  """
  @type speaker_search_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      termination_health() :: %{
        "Source" => String.t(),
        "Timestamp" => non_neg_integer()
      }

  """
  @type termination_health() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      participant() :: %{
        "PhoneNumber" => String.t(),
        "ProxyPhoneNumber" => String.t()
      }

  """
  @type participant() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_sip_media_application_request() :: %{
        optional("Endpoints") => list(sip_media_application_endpoint()()),
        optional("Name") => String.t()
      }

  """
  @type update_sip_media_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      voice_profile_domain_summary() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "Description" => String.t(),
        "Name" => String.t(),
        "UpdatedTimestamp" => non_neg_integer(),
        "VoiceProfileDomainArn" => String.t(),
        "VoiceProfileDomainId" => String.t()
      }

  """
  @type voice_profile_domain_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_voice_connector_group_request() :: %{}

  """
  @type delete_voice_connector_group_request() :: %{}

  @typedoc """

  ## Example:

      origination() :: %{
        "Disabled" => boolean(),
        "Routes" => list(origination_route()())
      }

  """
  @type origination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_speaker_search_task_response() :: %{
        "SpeakerSearchTask" => speaker_search_task()
      }

  """
  @type start_speaker_search_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_voice_connectors_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_voice_connectors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      phone_number_country() :: %{
        "CountryCode" => String.t(),
        "SupportedPhoneNumberTypes" => list(list(any())())
      }

  """
  @type phone_number_country() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geo_match_params() :: %{
        "AreaCode" => String.t(),
        "Country" => String.t()
      }

  """
  @type geo_match_params() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_available_phone_numbers_response() :: %{
        "E164PhoneNumbers" => list(String.t()()),
        "NextToken" => String.t()
      }

  """
  @type search_available_phone_numbers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_request() :: %{}

  """
  @type get_voice_connector_request() :: %{}

  @typedoc """

  ## Example:

      put_voice_connector_origination_response() :: %{
        "Origination" => origination()
      }

  """
  @type put_voice_connector_origination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_sip_rule_response() :: %{
        "SipRule" => sip_rule()
      }

  """
  @type create_sip_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_phone_numbers_with_voice_connector_group_request() :: %{
        optional("ForceAssociate") => boolean(),
        required("E164PhoneNumbers") => list(String.t()())
      }

  """
  @type associate_phone_numbers_with_voice_connector_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_voice_connector_group_response() :: %{
        "VoiceConnectorGroup" => voice_connector_group()
      }

  """
  @type create_voice_connector_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_voice_profile_domains_response() :: %{
        "NextToken" => String.t(),
        "VoiceProfileDomains" => list(voice_profile_domain_summary()())
      }

  """
  @type list_voice_profile_domains_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_voice_connector_termination_credentials_request() :: %{}

  """
  @type list_voice_connector_termination_credentials_request() :: %{}

  @typedoc """

  ## Example:

      update_phone_number_settings_request() :: %{
        required("CallingName") => String.t()
      }

  """
  @type update_phone_number_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_proxy_response() :: %{
        "Proxy" => proxy()
      }

  """
  @type get_voice_connector_proxy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_logging_configuration_request() :: %{}

  """
  @type get_voice_connector_logging_configuration_request() :: %{}

  @typedoc """

  ## Example:

      service_failure_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type service_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_sip_rule_request() :: %{}

  """
  @type delete_sip_rule_request() :: %{}

  @typedoc """

  ## Example:

      get_voice_connector_emergency_calling_configuration_request() :: %{}

  """
  @type get_voice_connector_emergency_calling_configuration_request() :: %{}

  @typedoc """

  ## Example:

      restore_phone_number_request() :: %{}

  """
  @type restore_phone_number_request() :: %{}

  @typedoc """

  ## Example:

      put_voice_connector_emergency_calling_configuration_request() :: %{
        required("EmergencyCallingConfiguration") => emergency_calling_configuration()
      }

  """
  @type put_voice_connector_emergency_calling_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_voice_profile_response() :: %{
        "VoiceProfile" => voice_profile()
      }

  """
  @type create_voice_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_response() :: %{
        "VoiceConnector" => voice_connector()
      }

  """
  @type get_voice_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_voice_profile_response() :: %{
        "VoiceProfile" => voice_profile()
      }

  """
  @type update_voice_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_proxy_session_response() :: %{
        "ProxySession" => proxy_session()
      }

  """
  @type create_proxy_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_profile_domain_request() :: %{}

  """
  @type get_voice_profile_domain_request() :: %{}

  @typedoc """

  ## Example:

      put_voice_connector_termination_request() :: %{
        required("Termination") => termination()
      }

  """
  @type put_voice_connector_termination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      phone_number_association() :: %{
        "AssociatedTimestamp" => non_neg_integer(),
        "Name" => list(any()),
        "Value" => String.t()
      }

  """
  @type phone_number_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unauthorized_client_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type unauthorized_client_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_streaming_configuration_request() :: %{}

  """
  @type get_voice_connector_streaming_configuration_request() :: %{}

  @typedoc """

  ## Example:

      phone_number() :: %{
        "Associations" => list(phone_number_association()()),
        "CallingName" => String.t(),
        "CallingNameStatus" => list(any()),
        "Capabilities" => phone_number_capabilities(),
        "Country" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "DeletionTimestamp" => non_neg_integer(),
        "E164PhoneNumber" => String.t(),
        "Name" => String.t(),
        "OrderId" => String.t(),
        "PhoneNumberId" => String.t(),
        "ProductType" => list(any()),
        "Status" => list(any()),
        "Type" => list(any()),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type phone_number() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      termination() :: %{
        "CallingRegions" => list(String.t()()),
        "CidrAllowedList" => list(String.t()()),
        "CpsLimit" => integer(),
        "DefaultPhoneNumber" => String.t(),
        "Disabled" => boolean()
      }

  """
  @type termination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_phone_number_order_request() :: %{}

  """
  @type get_phone_number_order_request() :: %{}

  @typedoc """

  ## Example:

      create_voice_profile_domain_response() :: %{
        "VoiceProfileDomain" => voice_profile_domain()
      }

  """
  @type create_voice_profile_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      speaker_search_task() :: %{
        "CallDetails" => call_details(),
        "CreatedTimestamp" => non_neg_integer(),
        "SpeakerSearchDetails" => speaker_search_details(),
        "SpeakerSearchTaskId" => String.t(),
        "SpeakerSearchTaskStatus" => String.t(),
        "StartedTimestamp" => non_neg_integer(),
        "StatusMessage" => String.t(),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type speaker_search_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_phone_number_response() :: %{
        "PhoneNumber" => phone_number()
      }

  """
  @type update_phone_number_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_speaker_search_task_response() :: %{
        "SpeakerSearchTask" => speaker_search_task()
      }

  """
  @type get_speaker_search_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_speaker_search_task_request() :: %{}

  """
  @type stop_speaker_search_task_request() :: %{}

  @typedoc """

  ## Example:

      throttled_client_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type throttled_client_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gone_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type gone_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_voice_profile_request() :: %{
        required("SpeakerSearchTaskId") => String.t()
      }

  """
  @type update_voice_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_insights_configuration() :: %{
        "ConfigurationArn" => String.t(),
        "Disabled" => boolean()
      }

  """
  @type media_insights_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_termination_health_response() :: %{
        "TerminationHealth" => termination_health()
      }

  """
  @type get_voice_connector_termination_health_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_phone_numbers_with_voice_connector_request() :: %{
        optional("ForceAssociate") => boolean(),
        required("E164PhoneNumbers") => list(String.t()())
      }

  """
  @type associate_phone_numbers_with_voice_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_voice_connector_origination_request() :: %{}

  """
  @type delete_voice_connector_origination_request() :: %{}

  @typedoc """

  ## Example:

      list_sip_media_applications_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_sip_media_applications_request() :: %{String.t() => any()}

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

      ordered_phone_number() :: %{
        "E164PhoneNumber" => String.t(),
        "Status" => list(any())
      }

  """
  @type ordered_phone_number() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sip_media_application_logging_configuration_response() :: %{
        "SipMediaApplicationLoggingConfiguration" => sip_media_application_logging_configuration()
      }

  """
  @type get_sip_media_application_logging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_proxy_session_response() :: %{
        "ProxySession" => proxy_session()
      }

  """
  @type update_proxy_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_phone_number_order_request() :: %{
        optional("Name") => String.t(),
        required("E164PhoneNumbers") => list(String.t()()),
        required("ProductType") => list(any())
      }

  """
  @type create_phone_number_order_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_sip_media_application_request() :: %{}

  """
  @type delete_sip_media_application_request() :: %{}

  @typedoc """

  ## Example:

      get_sip_media_application_response() :: %{
        "SipMediaApplication" => sip_media_application()
      }

  """
  @type get_sip_media_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sip_rule_response() :: %{
        "SipRule" => sip_rule()
      }

  """
  @type get_sip_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_voice_profile_domain_response() :: %{
        "VoiceProfileDomain" => voice_profile_domain()
      }

  """
  @type update_voice_profile_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      voice_connector_settings() :: %{
        "CdrBucket" => String.t()
      }

  """
  @type voice_connector_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_tone_analysis_task_response() :: %{
        "VoiceToneAnalysisTask" => voice_tone_analysis_task()
      }

  """
  @type get_voice_tone_analysis_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_proxy_session_request() :: %{}

  """
  @type delete_proxy_session_request() :: %{}

  @typedoc """

  ## Example:

      logging_configuration() :: %{
        "EnableMediaMetricLogs" => boolean(),
        "EnableSIPLogs" => boolean()
      }

  """
  @type logging_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      voice_profile_domain() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "Description" => String.t(),
        "Name" => String.t(),
        "ServerSideEncryptionConfiguration" => server_side_encryption_configuration(),
        "UpdatedTimestamp" => non_neg_integer(),
        "VoiceProfileDomainArn" => String.t(),
        "VoiceProfileDomainId" => String.t()
      }

  """
  @type voice_profile_domain() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      restore_phone_number_response() :: %{
        "PhoneNumber" => phone_number()
      }

  """
  @type restore_phone_number_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      speaker_search_details() :: %{
        "Results" => list(speaker_search_result()()),
        "VoiceprintGenerationStatus" => String.t()
      }

  """
  @type speaker_search_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_phone_number_orders_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_phone_number_orders_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_voice_connector_termination_response() :: %{
        "Termination" => termination()
      }

  """
  @type put_voice_connector_termination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_voice_connector_group_request() :: %{
        required("Name") => String.t(),
        required("VoiceConnectorItems") => list(voice_connector_item()())
      }

  """
  @type update_voice_connector_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_supported_phone_number_countries_response() :: %{
        "PhoneNumberCountries" => list(phone_number_country()())
      }

  """
  @type list_supported_phone_number_countries_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_voice_tone_analysis_task_response() :: %{
        "VoiceToneAnalysisTask" => voice_tone_analysis_task()
      }

  """
  @type start_voice_tone_analysis_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_sip_media_application_response() :: %{
        "SipMediaApplication" => sip_media_application()
      }

  """
  @type update_sip_media_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      d_n_i_s_emergency_calling_configuration() :: %{
        "CallingCountry" => String.t(),
        "EmergencyPhoneNumber" => String.t(),
        "TestPhoneNumber" => String.t()
      }

  """
  @type d_n_i_s_emergency_calling_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_logging_configuration_response() :: %{
        "LoggingConfiguration" => logging_configuration()
      }

  """
  @type get_voice_connector_logging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_phone_numbers_from_voice_connector_request() :: %{
        required("E164PhoneNumbers") => list(String.t()())
      }

  """
  @type disassociate_phone_numbers_from_voice_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_voice_connector_proxy_request() :: %{}

  """
  @type delete_voice_connector_proxy_request() :: %{}

  @typedoc """

  ## Example:

      list_voice_connector_groups_response() :: %{
        "NextToken" => String.t(),
        "VoiceConnectorGroups" => list(voice_connector_group()())
      }

  """
  @type list_voice_connector_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sip_rules_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SipMediaApplicationId") => String.t()
      }

  """
  @type list_sip_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_profile_request() :: %{}

  """
  @type get_voice_profile_request() :: %{}

  @typedoc """

  ## Example:

      list_proxy_sessions_response() :: %{
        "NextToken" => String.t(),
        "ProxySessions" => list(proxy_session()())
      }

  """
  @type list_proxy_sessions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sip_media_application_alexa_skill_configuration_response() :: %{
        "SipMediaApplicationAlexaSkillConfiguration" => sip_media_application_alexa_skill_configuration()
      }

  """
  @type get_sip_media_application_alexa_skill_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_voice_connector_streaming_configuration_response() :: %{
        "StreamingConfiguration" => streaming_configuration()
      }

  """
  @type put_voice_connector_streaming_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validate_e911_address_request() :: %{
        required("AwsAccountId") => String.t(),
        required("City") => String.t(),
        required("Country") => String.t(),
        required("PostalCode") => String.t(),
        required("State") => String.t(),
        required("StreetInfo") => String.t(),
        required("StreetNumber") => String.t()
      }

  """
  @type validate_e911_address_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_voice_connector_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_voice_connector_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_phone_numbers_from_voice_connector_response() :: %{
        "PhoneNumberErrors" => list(phone_number_error()())
      }

  """
  @type disassociate_phone_numbers_from_voice_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_termination_request() :: %{}

  """
  @type get_voice_connector_termination_request() :: %{}

  @typedoc """

  ## Example:

      list_sip_rules_response() :: %{
        "NextToken" => String.t(),
        "SipRules" => list(sip_rule()())
      }

  """
  @type list_sip_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_phone_numbers_from_voice_connector_group_request() :: %{
        required("E164PhoneNumbers") => list(String.t()())
      }

  """
  @type disassociate_phone_numbers_from_voice_connector_group_request() :: %{String.t() => any()}

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

      create_sip_rule_request() :: %{
        optional("Disabled") => boolean(),
        optional("TargetApplications") => list(sip_rule_target_application()()),
        required("Name") => String.t(),
        required("TriggerType") => list(any()),
        required("TriggerValue") => String.t()
      }

  """
  @type create_sip_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      voice_profile() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "ExpirationTimestamp" => non_neg_integer(),
        "UpdatedTimestamp" => non_neg_integer(),
        "VoiceProfileArn" => String.t(),
        "VoiceProfileDomainId" => String.t(),
        "VoiceProfileId" => String.t()
      }

  """
  @type voice_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_voice_connector_streaming_configuration_request() :: %{
        required("StreamingConfiguration") => streaming_configuration()
      }

  """
  @type put_voice_connector_streaming_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_speaker_search_task_request() :: %{
        optional("CallLeg") => list(any()),
        optional("ClientRequestToken") => String.t(),
        required("TransactionId") => String.t(),
        required("VoiceProfileDomainId") => String.t()
      }

  """
  @type start_speaker_search_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_phone_number_response() :: %{
        "PhoneNumberErrors" => list(phone_number_error()())
      }

  """
  @type batch_delete_phone_number_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_streaming_configuration_response() :: %{
        "StreamingConfiguration" => streaming_configuration()
      }

  """
  @type get_voice_connector_streaming_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      proxy_session() :: %{
        "Capabilities" => list(list(any())()),
        "CreatedTimestamp" => non_neg_integer(),
        "EndedTimestamp" => non_neg_integer(),
        "ExpiryMinutes" => integer(),
        "GeoMatchLevel" => list(any()),
        "GeoMatchParams" => geo_match_params(),
        "Name" => String.t(),
        "NumberSelectionBehavior" => list(any()),
        "Participants" => list(participant()()),
        "ProxySessionId" => String.t(),
        "Status" => list(any()),
        "UpdatedTimestamp" => non_neg_integer(),
        "VoiceConnectorId" => String.t()
      }

  """
  @type proxy_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_phone_number_order_response() :: %{
        "PhoneNumberOrder" => phone_number_order()
      }

  """
  @type get_phone_number_order_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_phone_numbers_request() :: %{
        optional("FilterName") => list(any()),
        optional("FilterValue") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ProductType") => list(any()),
        optional("Status") => String.t()
      }

  """
  @type list_phone_numbers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_limit_exceeded_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type resource_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_voice_connector_request() :: %{
        optional("AwsRegion") => list(any()),
        optional("Tags") => list(tag()()),
        required("Name") => String.t(),
        required("RequireEncryption") => boolean()
      }

  """
  @type create_voice_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_phone_number_request() :: %{}

  """
  @type get_phone_number_request() :: %{}

  @typedoc """

  ## Example:

      create_voice_profile_request() :: %{
        required("SpeakerSearchTaskId") => String.t()
      }

  """
  @type create_voice_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_voice_connector_proxy_request() :: %{
        optional("Disabled") => boolean(),
        optional("FallBackPhoneNumber") => String.t(),
        required("DefaultSessionExpiryMinutes") => integer(),
        required("PhoneNumberPoolCountries") => list(String.t()())
      }

  """
  @type put_voice_connector_proxy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_phone_numbers_with_voice_connector_response() :: %{
        "PhoneNumberErrors" => list(phone_number_error()())
      }

  """
  @type associate_phone_numbers_with_voice_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_voice_connector_logging_configuration_request() :: %{
        required("LoggingConfiguration") => logging_configuration()
      }

  """
  @type put_voice_connector_logging_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      phone_number_order() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "OrderType" => list(any()),
        "OrderedPhoneNumbers" => list(ordered_phone_number()()),
        "PhoneNumberOrderId" => String.t(),
        "ProductType" => list(any()),
        "Status" => list(any()),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type phone_number_order() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_phone_number_request() :: %{}

  """
  @type delete_phone_number_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sip_media_application_endpoint() :: %{
        "LambdaArn" => String.t()
      }

  """
  @type sip_media_application_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_phone_numbers_from_voice_connector_group_response() :: %{
        "PhoneNumberErrors" => list(phone_number_error()())
      }

  """
  @type disassociate_phone_numbers_from_voice_connector_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_global_settings_response() :: %{
        "VoiceConnector" => voice_connector_settings()
      }

  """
  @type get_global_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      voice_connector() :: %{
        "AwsRegion" => list(any()),
        "CreatedTimestamp" => non_neg_integer(),
        "Name" => String.t(),
        "OutboundHostName" => String.t(),
        "RequireEncryption" => boolean(),
        "UpdatedTimestamp" => non_neg_integer(),
        "VoiceConnectorArn" => String.t(),
        "VoiceConnectorId" => String.t()
      }

  """
  @type voice_connector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_proxy_sessions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }

  """
  @type list_proxy_sessions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origination_route() :: %{
        "Host" => String.t(),
        "Port" => integer(),
        "Priority" => integer(),
        "Protocol" => list(any()),
        "Weight" => integer()
      }

  """
  @type origination_route() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_voice_profile_domains_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_voice_profile_domains_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      voice_tone_analysis_task() :: %{
        "CallDetails" => call_details(),
        "CreatedTimestamp" => non_neg_integer(),
        "StartedTimestamp" => non_neg_integer(),
        "StatusMessage" => String.t(),
        "UpdatedTimestamp" => non_neg_integer(),
        "VoiceToneAnalysisTaskId" => String.t(),
        "VoiceToneAnalysisTaskStatus" => String.t()
      }

  """
  @type voice_tone_analysis_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      streaming_notification_target() :: %{
        "NotificationTarget" => list(any())
      }

  """
  @type streaming_notification_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_voice_profile_domain_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Description") => String.t(),
        optional("Tags") => list(tag()()),
        required("Name") => String.t(),
        required("ServerSideEncryptionConfiguration") => server_side_encryption_configuration()
      }

  """
  @type create_voice_profile_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      voice_connector_item() :: %{
        "Priority" => integer(),
        "VoiceConnectorId" => String.t()
      }

  """
  @type voice_connector_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_available_voice_connector_regions_response() :: %{
        "VoiceConnectorRegions" => list(list(any())())
      }

  """
  @type list_available_voice_connector_regions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_sip_media_application_logging_configuration_response() :: %{
        "SipMediaApplicationLoggingConfiguration" => sip_media_application_logging_configuration()
      }

  """
  @type put_sip_media_application_logging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_voice_connector_group_response() :: %{
        "VoiceConnectorGroup" => voice_connector_group()
      }

  """
  @type update_voice_connector_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_phone_number_response() :: %{
        "PhoneNumber" => phone_number()
      }

  """
  @type get_phone_number_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_voice_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("VoiceProfileDomainId") => String.t()
      }

  """
  @type list_voice_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_voice_connector_termination_credentials_response() :: %{
        "Usernames" => list(String.t()())
      }

  """
  @type list_voice_connector_termination_credentials_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      server_side_encryption_configuration() :: %{
        "KmsKeyArn" => String.t()
      }

  """
  @type server_side_encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_global_settings_request() :: %{
        optional("VoiceConnector") => voice_connector_settings()
      }

  """
  @type update_global_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sip_media_application_alexa_skill_configuration() :: %{
        "AlexaSkillIds" => list(String.t()()),
        "AlexaSkillStatus" => list(any())
      }

  """
  @type sip_media_application_alexa_skill_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_proxy_session_request() :: %{
        optional("ExpiryMinutes") => integer(),
        optional("GeoMatchLevel") => list(any()),
        optional("GeoMatchParams") => geo_match_params(),
        optional("Name") => String.t(),
        optional("NumberSelectionBehavior") => list(any()),
        required("Capabilities") => list(list(any())()),
        required("ParticipantPhoneNumbers") => list(String.t()())
      }

  """
  @type create_proxy_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      candidate_address() :: %{
        "city" => String.t(),
        "country" => String.t(),
        "postalCode" => String.t(),
        "postalCodePlus4" => String.t(),
        "state" => String.t(),
        "streetInfo" => String.t(),
        "streetNumber" => String.t()
      }

  """
  @type candidate_address() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sip_rule_request() :: %{}

  """
  @type get_sip_rule_request() :: %{}

  @typedoc """

  ## Example:

      get_voice_connector_proxy_request() :: %{}

  """
  @type get_voice_connector_proxy_request() :: %{}

  @typedoc """

  ## Example:

      list_sip_media_applications_response() :: %{
        "NextToken" => String.t(),
        "SipMediaApplications" => list(sip_media_application()())
      }

  """
  @type list_sip_media_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sip_media_application_logging_configuration_request() :: %{}

  """
  @type get_sip_media_application_logging_configuration_request() :: %{}

  @typedoc """

  ## Example:

      stop_voice_tone_analysis_task_request() :: %{}

  """
  @type stop_voice_tone_analysis_task_request() :: %{}

  @typedoc """

  ## Example:

      sip_media_application_logging_configuration() :: %{
        "EnableSipMediaApplicationMessageLogs" => boolean()
      }

  """
  @type sip_media_application_logging_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_proxy_session_response() :: %{
        "ProxySession" => proxy_session()
      }

  """
  @type get_proxy_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_voice_profiles_response() :: %{
        "NextToken" => String.t(),
        "VoiceProfiles" => list(voice_profile_summary()())
      }

  """
  @type list_voice_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_sip_rule_response() :: %{
        "SipRule" => sip_rule()
      }

  """
  @type update_sip_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      voice_profile_summary() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "ExpirationTimestamp" => non_neg_integer(),
        "UpdatedTimestamp" => non_neg_integer(),
        "VoiceProfileArn" => String.t(),
        "VoiceProfileDomainId" => String.t(),
        "VoiceProfileId" => String.t()
      }

  """
  @type voice_profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unprocessable_entity_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type unprocessable_entity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_voice_connector_group_request() :: %{
        optional("VoiceConnectorItems") => list(voice_connector_item()()),
        required("Name") => String.t()
      }

  """
  @type create_voice_connector_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_profile_response() :: %{
        "VoiceProfile" => voice_profile()
      }

  """
  @type get_voice_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_sip_media_application_call_response() :: %{
        "SipMediaApplicationCall" => sip_media_application_call()
      }

  """
  @type create_sip_media_application_call_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      phone_number_error() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t(),
        "PhoneNumberId" => String.t()
      }

  """
  @type phone_number_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_phone_number_request_item() :: %{
        "CallingName" => String.t(),
        "Name" => String.t(),
        "PhoneNumberId" => String.t(),
        "ProductType" => list(any())
      }

  """
  @type update_phone_number_request_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_phone_numbers_with_voice_connector_group_response() :: %{
        "PhoneNumberErrors" => list(phone_number_error()())
      }

  """
  @type associate_phone_numbers_with_voice_connector_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }

  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_voice_connector_origination_request() :: %{
        required("Origination") => origination()
      }

  """
  @type put_voice_connector_origination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_voice_connector_termination_credentials_request() :: %{
        required("Usernames") => list(String.t()())
      }

  """
  @type delete_voice_connector_termination_credentials_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_voice_connectors_response() :: %{
        "NextToken" => String.t(),
        "VoiceConnectors" => list(voice_connector()())
      }

  """
  @type list_voice_connectors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_sip_media_application_alexa_skill_configuration_response() :: %{
        "SipMediaApplicationAlexaSkillConfiguration" => sip_media_application_alexa_skill_configuration()
      }

  """
  @type put_sip_media_application_alexa_skill_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_group_request() :: %{}

  """
  @type get_voice_connector_group_request() :: %{}

  @typedoc """

  ## Example:

      voice_connector_group() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "Name" => String.t(),
        "UpdatedTimestamp" => non_neg_integer(),
        "VoiceConnectorGroupArn" => String.t(),
        "VoiceConnectorGroupId" => String.t(),
        "VoiceConnectorItems" => list(voice_connector_item()())
      }

  """
  @type voice_connector_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_origination_response() :: %{
        "Origination" => origination()
      }

  """
  @type get_voice_connector_origination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_voice_profile_request() :: %{}

  """
  @type delete_voice_profile_request() :: %{}

  @typedoc """

  ## Example:

      delete_voice_profile_domain_request() :: %{}

  """
  @type delete_voice_profile_domain_request() :: %{}

  @typedoc """

  ## Example:

      get_phone_number_settings_response() :: %{
        "CallingName" => String.t(),
        "CallingNameUpdatedTimestamp" => non_neg_integer()
      }

  """
  @type get_phone_number_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_sip_media_application_call_request() :: %{
        optional("ArgumentsMap") => map(),
        optional("SipHeaders") => map(),
        required("FromPhoneNumber") => String.t(),
        required("ToPhoneNumber") => String.t()
      }

  """
  @type create_sip_media_application_call_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_sip_media_application_call_request() :: %{
        required("Arguments") => map()
      }

  """
  @type update_sip_media_application_call_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_voice_connector_termination_request() :: %{}

  """
  @type delete_voice_connector_termination_request() :: %{}

  @typedoc """

  ## Example:

      get_voice_connector_group_response() :: %{
        "VoiceConnectorGroup" => voice_connector_group()
      }

  """
  @type get_voice_connector_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_voice_connector_logging_configuration_response() :: %{
        "LoggingConfiguration" => logging_configuration()
      }

  """
  @type put_voice_connector_logging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_voice_connector_response() :: %{
        "VoiceConnector" => voice_connector()
      }

  """
  @type create_voice_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_proxy_session_request() :: %{}

  """
  @type get_proxy_session_request() :: %{}

  @typedoc """

  ## Example:

      sip_media_application_call() :: %{
        "TransactionId" => String.t()
      }

  """
  @type sip_media_application_call() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_phone_numbers_response() :: %{
        "NextToken" => String.t(),
        "PhoneNumbers" => list(phone_number()())
      }

  """
  @type list_phone_numbers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_voice_connector_request() :: %{
        required("Name") => String.t(),
        required("RequireEncryption") => boolean()
      }

  """
  @type update_voice_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_tone_analysis_task_request() :: %{
        required("IsCaller") => boolean()
      }

  """
  @type get_voice_tone_analysis_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_voice_profile_domain_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t()
      }

  """
  @type update_voice_profile_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      credential() :: %{
        "Password" => String.t(),
        "Username" => String.t()
      }

  """
  @type credential() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      phone_number_capabilities() :: %{
        "InboundCall" => boolean(),
        "InboundMMS" => boolean(),
        "InboundSMS" => boolean(),
        "OutboundCall" => boolean(),
        "OutboundMMS" => boolean(),
        "OutboundSMS" => boolean()
      }

  """
  @type phone_number_capabilities() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_voice_connector_streaming_configuration_request() :: %{}

  """
  @type delete_voice_connector_streaming_configuration_request() :: %{}

  @typedoc """

  ## Example:

      delete_voice_connector_emergency_calling_configuration_request() :: %{}

  """
  @type delete_voice_connector_emergency_calling_configuration_request() :: %{}

  @typedoc """

  ## Example:

      get_sip_media_application_request() :: %{}

  """
  @type get_sip_media_application_request() :: %{}

  @typedoc """

  ## Example:

      create_sip_media_application_response() :: %{
        "SipMediaApplication" => sip_media_application()
      }

  """
  @type create_sip_media_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_voice_connector_proxy_response() :: %{
        "Proxy" => proxy()
      }

  """
  @type put_voice_connector_proxy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      address() :: %{
        "city" => String.t(),
        "country" => String.t(),
        "postDirectional" => String.t(),
        "postalCode" => String.t(),
        "postalCodePlus4" => String.t(),
        "preDirectional" => String.t(),
        "state" => String.t(),
        "streetName" => String.t(),
        "streetNumber" => String.t(),
        "streetSuffix" => String.t()
      }

  """
  @type address() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sip_rule_target_application() :: %{
        "AwsRegion" => String.t(),
        "Priority" => integer(),
        "SipMediaApplicationId" => String.t()
      }

  """
  @type sip_rule_target_application() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_emergency_calling_configuration_response() :: %{
        "EmergencyCallingConfiguration" => emergency_calling_configuration()
      }

  """
  @type get_voice_connector_emergency_calling_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_speaker_search_task_request() :: %{}

  """
  @type get_speaker_search_task_request() :: %{}

  @typedoc """

  ## Example:

      delete_voice_connector_request() :: %{}

  """
  @type delete_voice_connector_request() :: %{}

  @typedoc """

  ## Example:

      update_phone_number_request() :: %{
        optional("CallingName") => String.t(),
        optional("Name") => String.t(),
        optional("ProductType") => list(any())
      }

  """
  @type update_phone_number_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_profile_domain_response() :: %{
        "VoiceProfileDomain" => voice_profile_domain()
      }

  """
  @type get_voice_profile_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_origination_request() :: %{}

  """
  @type get_voice_connector_origination_request() :: %{}

  @typedoc """

  ## Example:

      put_voice_connector_emergency_calling_configuration_response() :: %{
        "EmergencyCallingConfiguration" => emergency_calling_configuration()
      }

  """
  @type put_voice_connector_emergency_calling_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_termination_response() :: %{
        "Termination" => termination()
      }

  """
  @type get_voice_connector_termination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sip_media_application_alexa_skill_configuration_request() :: %{}

  """
  @type get_sip_media_application_alexa_skill_configuration_request() :: %{}

  @typedoc """

  ## Example:

      batch_update_phone_number_request() :: %{
        required("UpdatePhoneNumberRequestItems") => list(update_phone_number_request_item()())
      }

  """
  @type batch_update_phone_number_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_sip_media_application_alexa_skill_configuration_request() :: %{
        optional("SipMediaApplicationAlexaSkillConfiguration") => sip_media_application_alexa_skill_configuration()
      }

  """
  @type put_sip_media_application_alexa_skill_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sip_media_application() :: %{
        "AwsRegion" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "Endpoints" => list(sip_media_application_endpoint()()),
        "Name" => String.t(),
        "SipMediaApplicationArn" => String.t(),
        "SipMediaApplicationId" => String.t(),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type sip_media_application() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_available_phone_numbers_request() :: %{
        optional("AreaCode") => String.t(),
        optional("City") => String.t(),
        optional("Country") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PhoneNumberType") => list(any()),
        optional("State") => String.t(),
        optional("TollFreePrefix") => String.t()
      }

  """
  @type search_available_phone_numbers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_supported_phone_number_countries_request() :: %{
        required("ProductType") => list(any())
      }

  """
  @type list_supported_phone_number_countries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      emergency_calling_configuration() :: %{
        "DNIS" => list(d_n_i_s_emergency_calling_configuration()())
      }

  """
  @type emergency_calling_configuration() :: %{String.t() => any()}

  @type associate_phone_numbers_with_voice_connector_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type associate_phone_numbers_with_voice_connector_group_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type batch_delete_phone_number_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type batch_update_phone_number_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_phone_number_order_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_proxy_session_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_sip_media_application_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_sip_media_application_call_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_sip_rule_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_voice_connector_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_voice_connector_group_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_voice_profile_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | gone_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_voice_profile_domain_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_phone_number_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_proxy_session_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_sip_media_application_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_sip_rule_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_voice_connector_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_voice_connector_emergency_calling_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_voice_connector_group_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_voice_connector_origination_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_voice_connector_proxy_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_voice_connector_streaming_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_voice_connector_termination_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_voice_connector_termination_credentials_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_voice_profile_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_voice_profile_domain_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type disassociate_phone_numbers_from_voice_connector_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type disassociate_phone_numbers_from_voice_connector_group_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_global_settings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_phone_number_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_phone_number_order_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_phone_number_settings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_proxy_session_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_sip_media_application_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_sip_media_application_alexa_skill_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_sip_media_application_logging_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_sip_rule_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_speaker_search_task_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_connector_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_connector_emergency_calling_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_connector_group_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_connector_logging_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_connector_origination_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_connector_proxy_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_connector_streaming_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_connector_termination_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_connector_termination_health_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_profile_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_profile_domain_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_tone_analysis_task_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_available_voice_connector_regions_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_phone_number_orders_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_phone_numbers_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_proxy_sessions_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_sip_media_applications_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_sip_rules_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_supported_phone_number_countries_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_voice_connector_groups_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_voice_connector_termination_credentials_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_voice_connectors_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_voice_profile_domains_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_voice_profiles_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_sip_media_application_alexa_skill_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_sip_media_application_logging_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_voice_connector_emergency_calling_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_voice_connector_logging_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_voice_connector_origination_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_voice_connector_proxy_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_voice_connector_streaming_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_voice_connector_termination_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_voice_connector_termination_credentials_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type restore_phone_number_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type search_available_phone_numbers_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type start_speaker_search_task_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | gone_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type start_voice_tone_analysis_task_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | gone_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type stop_speaker_search_task_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type stop_voice_tone_analysis_task_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_global_settings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_phone_number_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_phone_number_settings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_proxy_session_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_sip_media_application_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_sip_media_application_call_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_sip_rule_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_voice_connector_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_voice_connector_group_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_voice_profile_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | gone_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_voice_profile_domain_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type validate_e911_address_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  def metadata do
    %{
      api_version: "2022-08-03",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "voice-chime",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Chime SDK Voice",
      signature_version: "v4",
      signing_name: "chime",
      target_prefix: nil
    }
  end

  @doc """
  Associates phone numbers with the specified Amazon Chime SDK Voice Connector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20AssociatePhoneNumbersWithVoiceConnector&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec associate_phone_numbers_with_voice_connector(
          AWS.Client.t(),
          String.t(),
          associate_phone_numbers_with_voice_connector_request(),
          Keyword.t()
        ) ::
          {:ok, associate_phone_numbers_with_voice_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_phone_numbers_with_voice_connector_errors()}
  def associate_phone_numbers_with_voice_connector(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}?operation=associate-phone-numbers"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associates phone numbers with the specified Amazon Chime SDK Voice Connector
  group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20AssociatePhoneNumbersWithVoiceConnectorGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_group_id` (`t:string`) The Amazon Chime SDK Voice Connector
    group ID.

  ## Optional parameters:
  """
  @spec associate_phone_numbers_with_voice_connector_group(
          AWS.Client.t(),
          String.t(),
          associate_phone_numbers_with_voice_connector_group_request(),
          Keyword.t()
        ) ::
          {:ok, associate_phone_numbers_with_voice_connector_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_phone_numbers_with_voice_connector_group_errors()}
  def associate_phone_numbers_with_voice_connector_group(
        %Client{} = client,
        voice_connector_group_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connector-groups/#{AWS.Util.encode_uri(voice_connector_group_id)}?operation=associate-phone-numbers"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Moves phone numbers into the **Deletion queue**. Phone numbers must be
  disassociated from any users or Amazon Chime SDK Voice Connectors before they
  can be deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20BatchDeletePhoneNumber&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec batch_delete_phone_number(
          AWS.Client.t(),
          batch_delete_phone_number_request(),
          Keyword.t()
        ) ::
          {:ok, batch_delete_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_phone_number_errors()}
  def batch_delete_phone_number(%Client{} = client, input, options \\ []) do
    url_path = "/phone-numbers?operation=batch-delete"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates phone number product types, calling names, or phone number names. You
  can update one attribute at a time for each `UpdatePhoneNumberRequestItem`.
  For example, you can update the product type, the calling name, or phone name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20BatchUpdatePhoneNumber&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec batch_update_phone_number(
          AWS.Client.t(),
          batch_update_phone_number_request(),
          Keyword.t()
        ) ::
          {:ok, batch_update_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_update_phone_number_errors()}
  def batch_update_phone_number(%Client{} = client, input, options \\ []) do
    url_path = "/phone-numbers?operation=batch-update"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an order for phone numbers to be provisioned. For numbers outside the
  U.S., you must use the Amazon Chime SDK SIP media application dial-in product
  type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20CreatePhoneNumberOrder&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_phone_number_order(
          AWS.Client.t(),
          create_phone_number_order_request(),
          Keyword.t()
        ) ::
          {:ok, create_phone_number_order_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_phone_number_order_errors()}
  def create_phone_number_order(%Client{} = client, input, options \\ []) do
    url_path = "/phone-number-orders"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a proxy session for the specified Amazon Chime SDK Voice Connector for
  the specified participant phone numbers.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20CreateProxySession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec create_proxy_session(
          AWS.Client.t(),
          String.t(),
          create_proxy_session_request(),
          Keyword.t()
        ) ::
          {:ok, create_proxy_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_proxy_session_errors()}
  def create_proxy_session(%Client{} = client, voice_connector_id, input, options \\ []) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/proxy-sessions"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a SIP media application. For more information about SIP media
  applications, see [Managing SIP media applications and
  rules](https://docs.aws.amazon.com/chime-sdk/latest/ag/manage-sip-applications.html)
  in the *Amazon Chime SDK Administrator Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20CreateSipMediaApplication&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_sip_media_application(
          AWS.Client.t(),
          create_sip_media_application_request(),
          Keyword.t()
        ) ::
          {:ok, create_sip_media_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_sip_media_application_errors()}
  def create_sip_media_application(%Client{} = client, input, options \\ []) do
    url_path = "/sip-media-applications"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates an outbound call to a phone number from the phone number specified in
  the request, and it invokes the endpoint of the specified
  `sipMediaApplicationId`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20CreateSipMediaApplicationCall&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sip_media_application_id` (`t:string`) The ID of the SIP media application.

  ## Optional parameters:
  """
  @spec create_sip_media_application_call(
          AWS.Client.t(),
          String.t(),
          create_sip_media_application_call_request(),
          Keyword.t()
        ) ::
          {:ok, create_sip_media_application_call_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_sip_media_application_call_errors()}
  def create_sip_media_application_call(
        %Client{} = client,
        sip_media_application_id,
        input,
        options \\ []
      ) do
    url_path = "/sip-media-applications/#{AWS.Util.encode_uri(sip_media_application_id)}/calls"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a SIP rule, which can be used to run a SIP media application as a target
  for a specific trigger type. For more information about SIP rules, see
  [Managing SIP media applications and
  rules](https://docs.aws.amazon.com/chime-sdk/latest/ag/manage-sip-applications.html)
  in the *Amazon Chime SDK Administrator Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20CreateSipRule&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_sip_rule(AWS.Client.t(), create_sip_rule_request(), Keyword.t()) ::
          {:ok, create_sip_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_sip_rule_errors()}
  def create_sip_rule(%Client{} = client, input, options \\ []) do
    url_path = "/sip-rules"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates an Amazon Chime SDK Voice Connector. For more information about Voice
  Connectors, see [Managing Amazon Chime SDK Voice Connector
  groups](https://docs.aws.amazon.com/chime-sdk/latest/ag/voice-connector-groups.html)
  in the *Amazon Chime SDK Administrator Guide*.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20CreateVoiceConnector&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_voice_connector(AWS.Client.t(), create_voice_connector_request(), Keyword.t()) ::
          {:ok, create_voice_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_voice_connector_errors()}
  def create_voice_connector(%Client{} = client, input, options \\ []) do
    url_path = "/voice-connectors"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates an Amazon Chime SDK Voice Connector group under the administrator's AWS
  account. You can associate Amazon Chime SDK Voice Connectors with the Voice
  Connector group by including `VoiceConnectorItems` in the request.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20CreateVoiceConnectorGroup&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_voice_connector_group(
          AWS.Client.t(),
          create_voice_connector_group_request(),
          Keyword.t()
        ) ::
          {:ok, create_voice_connector_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_voice_connector_group_errors()}
  def create_voice_connector_group(%Client{} = client, input, options \\ []) do
    url_path = "/voice-connector-groups"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a voice profile, which consists of an enrolled user and their latest
  voice print.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20CreateVoiceProfile&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_voice_profile(AWS.Client.t(), create_voice_profile_request(), Keyword.t()) ::
          {:ok, create_voice_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_voice_profile_errors()}
  def create_voice_profile(%Client{} = client, input, options \\ []) do
    url_path = "/voice-profiles"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a voice profile domain, a collection of voice profiles, their voice
  prints, and encrypted enrollment audio.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20CreateVoiceProfileDomain&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_voice_profile_domain(
          AWS.Client.t(),
          create_voice_profile_domain_request(),
          Keyword.t()
        ) ::
          {:ok, create_voice_profile_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_voice_profile_domain_errors()}
  def create_voice_profile_domain(%Client{} = client, input, options \\ []) do
    url_path = "/voice-profile-domains"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Moves the specified phone number into the **Deletion queue**. A phone number
  must be disassociated from any users or Amazon Chime SDK Voice Connectors
  before it can be deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20DeletePhoneNumber&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:phone_number_id` (`t:string`) The phone number ID.

  ## Optional parameters:
  """
  @spec delete_phone_number(
          AWS.Client.t(),
          String.t(),
          delete_phone_number_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_phone_number_errors()}
  def delete_phone_number(%Client{} = client, phone_number_id, input, options \\ []) do
    url_path = "/phone-numbers/#{AWS.Util.encode_uri(phone_number_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes the specified proxy session from the specified Amazon Chime SDK Voice
  Connector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20DeleteProxySession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:proxy_session_id` (`t:string`) The proxy session ID.
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec delete_proxy_session(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_proxy_session_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_proxy_session_errors()}
  def delete_proxy_session(
        %Client{} = client,
        proxy_session_id,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/proxy-sessions/#{AWS.Util.encode_uri(proxy_session_id)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a SIP media application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20DeleteSipMediaApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sip_media_application_id` (`t:string`) The SIP media application ID.

  ## Optional parameters:
  """
  @spec delete_sip_media_application(
          AWS.Client.t(),
          String.t(),
          delete_sip_media_application_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_sip_media_application_errors()}
  def delete_sip_media_application(
        %Client{} = client,
        sip_media_application_id,
        input,
        options \\ []
      ) do
    url_path = "/sip-media-applications/#{AWS.Util.encode_uri(sip_media_application_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a SIP rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20DeleteSipRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sip_rule_id` (`t:string`) The SIP rule ID.

  ## Optional parameters:
  """
  @spec delete_sip_rule(AWS.Client.t(), String.t(), delete_sip_rule_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_sip_rule_errors()}
  def delete_sip_rule(%Client{} = client, sip_rule_id, input, options \\ []) do
    url_path = "/sip-rules/#{AWS.Util.encode_uri(sip_rule_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes an Amazon Chime SDK Voice Connector. Any phone numbers associated with
  the Amazon Chime SDK Voice Connector must be disassociated from it before it
  can be deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20DeleteVoiceConnector&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec delete_voice_connector(
          AWS.Client.t(),
          String.t(),
          delete_voice_connector_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_voice_connector_errors()}
  def delete_voice_connector(%Client{} = client, voice_connector_id, input, options \\ []) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes the emergency calling details from the specified Amazon Chime SDK Voice
  Connector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20DeleteVoiceConnectorEmergencyCallingConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec delete_voice_connector_emergency_calling_configuration(
          AWS.Client.t(),
          String.t(),
          delete_voice_connector_emergency_calling_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_voice_connector_emergency_calling_configuration_errors()}
  def delete_voice_connector_emergency_calling_configuration(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/emergency-calling-configuration"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes an Amazon Chime SDK Voice Connector group. Any `VoiceConnectorItems` and
  phone numbers associated with the group must be removed before it can be
  deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20DeleteVoiceConnectorGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_group_id` (`t:string`) The Voice Connector Group ID.

  ## Optional parameters:
  """
  @spec delete_voice_connector_group(
          AWS.Client.t(),
          String.t(),
          delete_voice_connector_group_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_voice_connector_group_errors()}
  def delete_voice_connector_group(
        %Client{} = client,
        voice_connector_group_id,
        input,
        options \\ []
      ) do
    url_path = "/voice-connector-groups/#{AWS.Util.encode_uri(voice_connector_group_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes the origination settings for the specified Amazon Chime SDK Voice
  Connector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20DeleteVoiceConnectorOrigination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec delete_voice_connector_origination(
          AWS.Client.t(),
          String.t(),
          delete_voice_connector_origination_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_voice_connector_origination_errors()}
  def delete_voice_connector_origination(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/origination"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes the proxy configuration from the specified Amazon Chime SDK Voice
  Connector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20DeleteVoiceConnectorProxy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec delete_voice_connector_proxy(
          AWS.Client.t(),
          String.t(),
          delete_voice_connector_proxy_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_voice_connector_proxy_errors()}
  def delete_voice_connector_proxy(%Client{} = client, voice_connector_id, input, options \\ []) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/programmable-numbers/proxy"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a Voice Connector's streaming configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20DeleteVoiceConnectorStreamingConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec delete_voice_connector_streaming_configuration(
          AWS.Client.t(),
          String.t(),
          delete_voice_connector_streaming_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_voice_connector_streaming_configuration_errors()}
  def delete_voice_connector_streaming_configuration(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/streaming-configuration"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes the termination settings for the specified Amazon Chime SDK Voice
  Connector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20DeleteVoiceConnectorTermination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec delete_voice_connector_termination(
          AWS.Client.t(),
          String.t(),
          delete_voice_connector_termination_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_voice_connector_termination_errors()}
  def delete_voice_connector_termination(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/termination"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes the specified SIP credentials used by your equipment to authenticate
  during call termination.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20DeleteVoiceConnectorTerminationCredentials&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec delete_voice_connector_termination_credentials(
          AWS.Client.t(),
          String.t(),
          delete_voice_connector_termination_credentials_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_voice_connector_termination_credentials_errors()}
  def delete_voice_connector_termination_credentials(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/termination/credentials?operation=delete"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a voice profile, including its voice print and enrollment data. WARNING:
  This action is not reversible.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20DeleteVoiceProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_profile_id` (`t:string`) The voice profile ID.

  ## Optional parameters:
  """
  @spec delete_voice_profile(
          AWS.Client.t(),
          String.t(),
          delete_voice_profile_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_voice_profile_errors()}
  def delete_voice_profile(%Client{} = client, voice_profile_id, input, options \\ []) do
    url_path = "/voice-profiles/#{AWS.Util.encode_uri(voice_profile_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes all voice profiles in the domain. WARNING: This action is not
  reversible.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20DeleteVoiceProfileDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_profile_domain_id` (`t:string`) The voice profile domain ID.

  ## Optional parameters:
  """
  @spec delete_voice_profile_domain(
          AWS.Client.t(),
          String.t(),
          delete_voice_profile_domain_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_voice_profile_domain_errors()}
  def delete_voice_profile_domain(
        %Client{} = client,
        voice_profile_domain_id,
        input,
        options \\ []
      ) do
    url_path = "/voice-profile-domains/#{AWS.Util.encode_uri(voice_profile_domain_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Disassociates the specified phone numbers from the specified Amazon Chime SDK
  Voice Connector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20DisassociatePhoneNumbersFromVoiceConnector&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec disassociate_phone_numbers_from_voice_connector(
          AWS.Client.t(),
          String.t(),
          disassociate_phone_numbers_from_voice_connector_request(),
          Keyword.t()
        ) ::
          {:ok, disassociate_phone_numbers_from_voice_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_phone_numbers_from_voice_connector_errors()}
  def disassociate_phone_numbers_from_voice_connector(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}?operation=disassociate-phone-numbers"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociates the specified phone numbers from the specified Amazon Chime SDK
  Voice Connector group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20DisassociatePhoneNumbersFromVoiceConnectorGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_group_id` (`t:string`) The Voice Connector group ID.

  ## Optional parameters:
  """
  @spec disassociate_phone_numbers_from_voice_connector_group(
          AWS.Client.t(),
          String.t(),
          disassociate_phone_numbers_from_voice_connector_group_request(),
          Keyword.t()
        ) ::
          {:ok, disassociate_phone_numbers_from_voice_connector_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_phone_numbers_from_voice_connector_group_errors()}
  def disassociate_phone_numbers_from_voice_connector_group(
        %Client{} = client,
        voice_connector_group_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connector-groups/#{AWS.Util.encode_uri(voice_connector_group_id)}?operation=disassociate-phone-numbers"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves the global settings for the Amazon Chime SDK Voice Connectors in an
  AWS account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20GetGlobalSettings&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_global_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_global_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_global_settings_errors()}
  def get_global_settings(%Client{} = client, options \\ []) do
    url_path = "/settings"

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
  Retrieves details for the specified phone number ID, such as associations,
  capabilities, and product type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20GetPhoneNumber&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:phone_number_id` (`t:string`) The phone number ID.

  ## Optional parameters:
  """
  @spec get_phone_number(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_phone_number_errors()}
  def get_phone_number(%Client{} = client, phone_number_id, options \\ []) do
    url_path = "/phone-numbers/#{AWS.Util.encode_uri(phone_number_id)}"

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
  Retrieves details for the specified phone number order, such as the order
  creation timestamp, phone numbers in E.164 format, product type, and order
  status.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20GetPhoneNumberOrder&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:phone_number_order_id` (`t:string`) The ID of the phone number order .

  ## Optional parameters:
  """
  @spec get_phone_number_order(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_phone_number_order_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_phone_number_order_errors()}
  def get_phone_number_order(%Client{} = client, phone_number_order_id, options \\ []) do
    url_path = "/phone-number-orders/#{AWS.Util.encode_uri(phone_number_order_id)}"

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
  Retrieves the phone number settings for the administrator's AWS account, such as
  the default outbound calling name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20GetPhoneNumberSettings&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec get_phone_number_settings(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_phone_number_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_phone_number_settings_errors()}
  def get_phone_number_settings(%Client{} = client, options \\ []) do
    url_path = "/settings/phone-number"

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
  Retrieves the specified proxy session details for the specified Amazon Chime SDK
  Voice Connector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20GetProxySession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:proxy_session_id` (`t:string`) The proxy session ID.
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec get_proxy_session(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_proxy_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_proxy_session_errors()}
  def get_proxy_session(%Client{} = client, proxy_session_id, voice_connector_id, options \\ []) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/proxy-sessions/#{AWS.Util.encode_uri(proxy_session_id)}"

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
  Retrieves the information for a SIP media application, including name, AWS
  Region, and endpoints.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20GetSipMediaApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sip_media_application_id` (`t:string`) The SIP media application ID .

  ## Optional parameters:
  """
  @spec get_sip_media_application(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_sip_media_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sip_media_application_errors()}
  def get_sip_media_application(%Client{} = client, sip_media_application_id, options \\ []) do
    url_path = "/sip-media-applications/#{AWS.Util.encode_uri(sip_media_application_id)}"

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
  Gets the Alexa Skill configuration for the SIP media application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20GetSipMediaApplicationAlexaSkillConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sip_media_application_id` (`t:string`) The SIP media application ID.

  ## Optional parameters:
  """
  @spec get_sip_media_application_alexa_skill_configuration(
          AWS.Client.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_sip_media_application_alexa_skill_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sip_media_application_alexa_skill_configuration_errors()}
  def get_sip_media_application_alexa_skill_configuration(
        %Client{} = client,
        sip_media_application_id,
        options \\ []
      ) do
    url_path =
      "/sip-media-applications/#{AWS.Util.encode_uri(sip_media_application_id)}/alexa-skill-configuration"

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
  Retrieves the logging configuration for the specified SIP media application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20GetSipMediaApplicationLoggingConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sip_media_application_id` (`t:string`) The SIP media application ID.

  ## Optional parameters:
  """
  @spec get_sip_media_application_logging_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_sip_media_application_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sip_media_application_logging_configuration_errors()}
  def get_sip_media_application_logging_configuration(
        %Client{} = client,
        sip_media_application_id,
        options \\ []
      ) do
    url_path =
      "/sip-media-applications/#{AWS.Util.encode_uri(sip_media_application_id)}/logging-configuration"

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
  Retrieves the details of a SIP rule, such as the rule ID, name, triggers, and
  target endpoints.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20GetSipRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sip_rule_id` (`t:string`) The SIP rule ID.

  ## Optional parameters:
  """
  @spec get_sip_rule(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_sip_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sip_rule_errors()}
  def get_sip_rule(%Client{} = client, sip_rule_id, options \\ []) do
    url_path = "/sip-rules/#{AWS.Util.encode_uri(sip_rule_id)}"

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
  Retrieves the details of the specified speaker search task.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20GetSpeakerSearchTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:speaker_search_task_id` (`t:string`) The ID of the speaker search task.
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec get_speaker_search_task(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_speaker_search_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_speaker_search_task_errors()}
  def get_speaker_search_task(
        %Client{} = client,
        speaker_search_task_id,
        voice_connector_id,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/speaker-search-tasks/#{AWS.Util.encode_uri(speaker_search_task_id)}"

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
  Retrieves details for the specified Amazon Chime SDK Voice Connector, such as
  timestamps,name, outbound host, and encryption requirements.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20GetVoiceConnector&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec get_voice_connector(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_voice_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_connector_errors()}
  def get_voice_connector(%Client{} = client, voice_connector_id, options \\ []) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}"

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
  Retrieves the emergency calling configuration details for the specified Voice
  Connector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20GetVoiceConnectorEmergencyCallingConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec get_voice_connector_emergency_calling_configuration(
          AWS.Client.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_voice_connector_emergency_calling_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_connector_emergency_calling_configuration_errors()}
  def get_voice_connector_emergency_calling_configuration(
        %Client{} = client,
        voice_connector_id,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/emergency-calling-configuration"

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
  Retrieves details for the specified Amazon Chime SDK Voice Connector group, such
  as timestamps,name, and associated `VoiceConnectorItems`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20GetVoiceConnectorGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_group_id` (`t:string`) The Voice Connector group ID.

  ## Optional parameters:
  """
  @spec get_voice_connector_group(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_voice_connector_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_connector_group_errors()}
  def get_voice_connector_group(%Client{} = client, voice_connector_group_id, options \\ []) do
    url_path = "/voice-connector-groups/#{AWS.Util.encode_uri(voice_connector_group_id)}"

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
  Retrieves the logging configuration settings for the specified Voice Connector.
  Shows whether SIP message logs are enabled for sending to Amazon CloudWatch
  Logs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20GetVoiceConnectorLoggingConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec get_voice_connector_logging_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_voice_connector_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_connector_logging_configuration_errors()}
  def get_voice_connector_logging_configuration(
        %Client{} = client,
        voice_connector_id,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/logging-configuration"

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
  Retrieves the origination settings for the specified Voice Connector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20GetVoiceConnectorOrigination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec get_voice_connector_origination(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_voice_connector_origination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_connector_origination_errors()}
  def get_voice_connector_origination(%Client{} = client, voice_connector_id, options \\ []) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/origination"

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
  Retrieves the proxy configuration details for the specified Amazon Chime SDK
  Voice Connector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20GetVoiceConnectorProxy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec get_voice_connector_proxy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_voice_connector_proxy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_connector_proxy_errors()}
  def get_voice_connector_proxy(%Client{} = client, voice_connector_id, options \\ []) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/programmable-numbers/proxy"

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
  Retrieves the streaming configuration details for the specified Amazon Chime SDK
  Voice Connector. Shows whether media streaming is enabled for sending to
  Amazon Kinesis. It also shows the retention period, in hours, for the Amazon
  Kinesis data.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20GetVoiceConnectorStreamingConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec get_voice_connector_streaming_configuration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_voice_connector_streaming_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_connector_streaming_configuration_errors()}
  def get_voice_connector_streaming_configuration(
        %Client{} = client,
        voice_connector_id,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/streaming-configuration"

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
  Retrieves the termination setting details for the specified Voice Connector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20GetVoiceConnectorTermination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec get_voice_connector_termination(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_voice_connector_termination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_connector_termination_errors()}
  def get_voice_connector_termination(%Client{} = client, voice_connector_id, options \\ []) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/termination"

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
  Retrieves information about the last time a `SIP OPTIONS` ping was received from
  your SIP infrastructure for the specified Amazon Chime SDK Voice Connector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20GetVoiceConnectorTerminationHealth&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec get_voice_connector_termination_health(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_voice_connector_termination_health_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_connector_termination_health_errors()}
  def get_voice_connector_termination_health(
        %Client{} = client,
        voice_connector_id,
        options \\ []
      ) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/termination/health"

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
  Retrieves the details of the specified voice profile.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20GetVoiceProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_profile_id` (`t:string`) The voice profile ID.

  ## Optional parameters:
  """
  @spec get_voice_profile(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_voice_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_profile_errors()}
  def get_voice_profile(%Client{} = client, voice_profile_id, options \\ []) do
    url_path = "/voice-profiles/#{AWS.Util.encode_uri(voice_profile_id)}"

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
  Retrieves the details of the specified voice profile domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20GetVoiceProfileDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_profile_domain_id` (`t:string`) The voice profile domain ID.

  ## Optional parameters:
  """
  @spec get_voice_profile_domain(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_voice_profile_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_profile_domain_errors()}
  def get_voice_profile_domain(%Client{} = client, voice_profile_domain_id, options \\ []) do
    url_path = "/voice-profile-domains/#{AWS.Util.encode_uri(voice_profile_domain_id)}"

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
  Retrieves the details of a voice tone analysis task.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20GetVoiceToneAnalysisTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.
  * `:voice_tone_analysis_task_id` (`t:string`) The ID of the voice tone anlysis
    task.
  * `:is_caller` (`t:boolean`) Specifies whether the voice being analyzed is the
    caller (originator) or the callee (responder).

  ## Optional parameters:
  """
  @spec get_voice_tone_analysis_task(
          AWS.Client.t(),
          String.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_voice_tone_analysis_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_tone_analysis_task_errors()}
  def get_voice_tone_analysis_task(
        %Client{} = client,
        voice_connector_id,
        voice_tone_analysis_task_id,
        is_caller,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/voice-tone-analysis-tasks/#{AWS.Util.encode_uri(voice_tone_analysis_task_id)}"

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
    query_params = [{"isCaller", is_caller}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the available AWS Regions in which you can create an Amazon Chime SDK
  Voice Connector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20ListAvailableVoiceConnectorRegions&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec list_available_voice_connector_regions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_available_voice_connector_regions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_available_voice_connector_regions_errors()}
  def list_available_voice_connector_regions(%Client{} = client, options \\ []) do
    url_path = "/voice-connector-regions"

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
  Lists the phone numbers for an administrator's Amazon Chime SDK account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20ListPhoneNumberOrders&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return in a
    single call.
  * `:next_token` (`t:string`) The token used to retrieve the next page of
    results.
  """
  @spec list_phone_number_orders(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_phone_number_orders_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_phone_number_orders_errors()}
  def list_phone_number_orders(%Client{} = client, options \\ []) do
    url_path = "/phone-number-orders"

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
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
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
  Lists the phone numbers for the specified Amazon Chime SDK account, Amazon Chime
  SDK user, Amazon Chime SDK Voice Connector, or Amazon Chime SDK Voice
  Connector group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20ListPhoneNumbers&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:filter_name` (`t:enum["SipRuleId|VoiceConnectorGroupId|VoiceConnectorId"]`)
    The filter to limit the number of results.
  * `:filter_value` (`t:string`) The filter value.
  * `:max_results` (`t:integer`) The maximum number of results to return in a
    single call.
  * `:next_token` (`t:string`) The token used to return the next page of results.
  * `:product_type` (`t:enum["SipMediaApplicationDialIn|VoiceConnector"]`) The
    phone number product types.
  * `:status` (`t:string`) The status of your organization's phone numbers.
  """
  @spec list_phone_numbers(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_phone_numbers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_phone_numbers_errors()}
  def list_phone_numbers(%Client{} = client, options \\ []) do
    url_path = "/phone-numbers"

    # Validate optional parameters
    optional_params = [
      filter_name: nil,
      filter_value: nil,
      max_results: nil,
      next_token: nil,
      product_type: nil,
      status: nil
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
      if opt_val = Keyword.get(options, :status) do
        [{"status", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :product_type) do
        [{"product-type", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :filter_value) do
        [{"filter-value", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :filter_name) do
        [{"filter-name", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :filter_name,
        :filter_value,
        :max_results,
        :next_token,
        :product_type,
        :status
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the proxy sessions for the specified Amazon Chime SDK Voice Connector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20ListProxySessions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return in a
    single call.
  * `:next_token` (`t:string`) The token used to retrieve the next page of
    results.
  * `:status` (`t:enum["Closed|InProgress|Open"]`) The proxy session status.
  """
  @spec list_proxy_sessions(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_proxy_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_proxy_sessions_errors()}
  def list_proxy_sessions(%Client{} = client, voice_connector_id, options \\ []) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/proxy-sessions"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, status: nil]

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
      if opt_val = Keyword.get(options, :status) do
        [{"status", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :status])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the SIP media applications under the administrator's AWS account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20ListSipMediaApplications&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return in a
    single call. Defaults to 100.
  * `:next_token` (`t:string`) The token used to return the next page of results.
  """
  @spec list_sip_media_applications(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_sip_media_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_sip_media_applications_errors()}
  def list_sip_media_applications(%Client{} = client, options \\ []) do
    url_path = "/sip-media-applications"

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
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
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
  Lists the SIP rules under the administrator's AWS account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20ListSipRules&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return in a
    single call. Defaults to 100.
  * `:next_token` (`t:string`) The token used to return the next page of results.
  * `:sip_media_application_id` (`t:string`) The SIP media application ID.
  """
  @spec list_sip_rules(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_sip_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_sip_rules_errors()}
  def list_sip_rules(%Client{} = client, options \\ []) do
    url_path = "/sip-rules"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, sip_media_application_id: nil]

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
      if opt_val = Keyword.get(options, :sip_media_application_id) do
        [{"sip-media-application", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:max_results, :next_token, :sip_media_application_id])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the countries that you can order phone numbers from.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20ListSupportedPhoneNumberCountries&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:product_type` (`t:enum["SipMediaApplicationDialIn|VoiceConnector"]`) The
    phone number product type.

  ## Optional parameters:
  """
  @spec list_supported_phone_number_countries(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_supported_phone_number_countries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_supported_phone_number_countries_errors()}
  def list_supported_phone_number_countries(%Client{} = client, product_type, options \\ []) do
    url_path = "/phone-number-countries"

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
    query_params = [{"product-type", product_type}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the tags in a given resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The resource ARN.

  ## Optional parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags"

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
    query_params = [{"arn", resource_arn}]

    # Optional query params

    meta =
      metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Amazon Chime SDK Voice Connector groups in the administrator's AWS
  account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20ListVoiceConnectorGroups&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return in a
    single call.
  * `:next_token` (`t:string`) The token used to return the next page of results.
  """
  @spec list_voice_connector_groups(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_voice_connector_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_voice_connector_groups_errors()}
  def list_voice_connector_groups(%Client{} = client, options \\ []) do
    url_path = "/voice-connector-groups"

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
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
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
  Lists the SIP credentials for the specified Amazon Chime SDK Voice Connector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20ListVoiceConnectorTerminationCredentials&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec list_voice_connector_termination_credentials(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_voice_connector_termination_credentials_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_voice_connector_termination_credentials_errors()}
  def list_voice_connector_termination_credentials(
        %Client{} = client,
        voice_connector_id,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/termination/credentials"

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
  Lists the Amazon Chime SDK Voice Connectors in the administrators AWS account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20ListVoiceConnectors&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return in a
    single call.
  * `:next_token` (`t:string`) The token used to return the next page of results.
  """
  @spec list_voice_connectors(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_voice_connectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_voice_connectors_errors()}
  def list_voice_connectors(%Client{} = client, options \\ []) do
    url_path = "/voice-connectors"

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
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
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
  Lists the specified voice profile domains in the administrator's AWS account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20ListVoiceProfileDomains&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results to return in a
    single call.
  * `:next_token` (`t:string`) The token used to return the next page of results.
  """
  @spec list_voice_profile_domains(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_voice_profile_domains_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_voice_profile_domains_errors()}
  def list_voice_profile_domains(%Client{} = client, options \\ []) do
    url_path = "/voice-profile-domains"

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
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
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
  Lists the voice profiles in a voice profile domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20ListVoiceProfiles&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_profile_domain_id` (`t:string`) The ID of the voice profile domain.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum number of results in the request.
  * `:next_token` (`t:string`) The token used to retrieve the next page of
    results.
  """
  @spec list_voice_profiles(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_voice_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_voice_profiles_errors()}
  def list_voice_profiles(%Client{} = client, voice_profile_domain_id, options \\ []) do
    url_path = "/voice-profiles"

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
    query_params = [{"voice-profile-domain-id", voice_profile_domain_id}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
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
  Updates the Alexa Skill configuration for the SIP media application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20PutSipMediaApplicationAlexaSkillConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sip_media_application_id` (`t:string`) The SIP media application ID.

  ## Optional parameters:
  """
  @spec put_sip_media_application_alexa_skill_configuration(
          AWS.Client.t(),
          String.t(),
          put_sip_media_application_alexa_skill_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, put_sip_media_application_alexa_skill_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_sip_media_application_alexa_skill_configuration_errors()}
  def put_sip_media_application_alexa_skill_configuration(
        %Client{} = client,
        sip_media_application_id,
        input,
        options \\ []
      ) do
    url_path =
      "/sip-media-applications/#{AWS.Util.encode_uri(sip_media_application_id)}/alexa-skill-configuration"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the logging configuration for the specified SIP media application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20PutSipMediaApplicationLoggingConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sip_media_application_id` (`t:string`) The SIP media application ID.

  ## Optional parameters:
  """
  @spec put_sip_media_application_logging_configuration(
          AWS.Client.t(),
          String.t(),
          put_sip_media_application_logging_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, put_sip_media_application_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_sip_media_application_logging_configuration_errors()}
  def put_sip_media_application_logging_configuration(
        %Client{} = client,
        sip_media_application_id,
        input,
        options \\ []
      ) do
    url_path =
      "/sip-media-applications/#{AWS.Util.encode_uri(sip_media_application_id)}/logging-configuration"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a Voice Connector's emergency calling configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20PutVoiceConnectorEmergencyCallingConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec put_voice_connector_emergency_calling_configuration(
          AWS.Client.t(),
          String.t(),
          put_voice_connector_emergency_calling_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, put_voice_connector_emergency_calling_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_voice_connector_emergency_calling_configuration_errors()}
  def put_voice_connector_emergency_calling_configuration(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/emergency-calling-configuration"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a Voice Connector's logging configuration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20PutVoiceConnectorLoggingConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec put_voice_connector_logging_configuration(
          AWS.Client.t(),
          String.t(),
          put_voice_connector_logging_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, put_voice_connector_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_voice_connector_logging_configuration_errors()}
  def put_voice_connector_logging_configuration(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/logging-configuration"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a Voice Connector's origination settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20PutVoiceConnectorOrigination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec put_voice_connector_origination(
          AWS.Client.t(),
          String.t(),
          put_voice_connector_origination_request(),
          Keyword.t()
        ) ::
          {:ok, put_voice_connector_origination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_voice_connector_origination_errors()}
  def put_voice_connector_origination(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/origination"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Puts the specified proxy configuration to the specified Amazon Chime SDK Voice
  Connector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20PutVoiceConnectorProxy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec put_voice_connector_proxy(
          AWS.Client.t(),
          String.t(),
          put_voice_connector_proxy_request(),
          Keyword.t()
        ) ::
          {:ok, put_voice_connector_proxy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_voice_connector_proxy_errors()}
  def put_voice_connector_proxy(%Client{} = client, voice_connector_id, input, options \\ []) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/programmable-numbers/proxy"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a Voice Connector's streaming configuration settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20PutVoiceConnectorStreamingConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec put_voice_connector_streaming_configuration(
          AWS.Client.t(),
          String.t(),
          put_voice_connector_streaming_configuration_request(),
          Keyword.t()
        ) ::
          {:ok, put_voice_connector_streaming_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_voice_connector_streaming_configuration_errors()}
  def put_voice_connector_streaming_configuration(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/streaming-configuration"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a Voice Connector's termination settings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20PutVoiceConnectorTermination&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec put_voice_connector_termination(
          AWS.Client.t(),
          String.t(),
          put_voice_connector_termination_request(),
          Keyword.t()
        ) ::
          {:ok, put_voice_connector_termination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_voice_connector_termination_errors()}
  def put_voice_connector_termination(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/termination"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a Voice Connector's termination credentials.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20PutVoiceConnectorTerminationCredentials&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec put_voice_connector_termination_credentials(
          AWS.Client.t(),
          String.t(),
          put_voice_connector_termination_credentials_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_voice_connector_termination_credentials_errors()}
  def put_voice_connector_termination_credentials(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/termination/credentials?operation=put"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Restores a deleted phone number.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20RestorePhoneNumber&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:phone_number_id` (`t:string`) The ID of the phone number being restored.

  ## Optional parameters:
  """
  @spec restore_phone_number(
          AWS.Client.t(),
          String.t(),
          restore_phone_number_request(),
          Keyword.t()
        ) ::
          {:ok, restore_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_phone_number_errors()}
  def restore_phone_number(%Client{} = client, phone_number_id, input, options \\ []) do
    url_path = "/phone-numbers/#{AWS.Util.encode_uri(phone_number_id)}?operation=restore"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Searches the provisioned phone numbers in an organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20SearchAvailablePhoneNumbers&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:area_code` (`t:string`) Confines a search to just the phone numbers
    associated with the specified area code.
  * `:city` (`t:string`) Confines a search to just the phone numbers associated
    with the specified city.
  * `:country` (`t:string`) Confines a search to just the phone numbers associated
    with the specified country.
  * `:max_results` (`t:integer`) The maximum number of results to return.
  * `:next_token` (`t:string`) The token used to return the next page of results.
  * `:phone_number_type` (`t:enum["Local|TollFree"]`) Confines a search to just
    the phone numbers associated with the specified phone number type, either
    local or toll-free.
  * `:state` (`t:string`) Confines a search to just the phone numbers associated
    with the specified state.
  * `:toll_free_prefix` (`t:string`) Confines a search to just the phone numbers
    associated with the specified toll-free prefix.
  """
  @spec search_available_phone_numbers(AWS.Client.t(), Keyword.t()) ::
          {:ok, search_available_phone_numbers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_available_phone_numbers_errors()}
  def search_available_phone_numbers(%Client{} = client, options \\ []) do
    url_path = "/search?type=phone-numbers"

    # Validate optional parameters
    optional_params = [
      area_code: nil,
      city: nil,
      country: nil,
      max_results: nil,
      next_token: nil,
      phone_number_type: nil,
      state: nil,
      toll_free_prefix: nil
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
      if opt_val = Keyword.get(options, :toll_free_prefix) do
        [{"toll-free-prefix", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :state) do
        [{"state", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :phone_number_type) do
        [{"phone-number-type", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :next_token) do
        [{"next-token", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :max_results) do
        [{"max-results", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :country) do
        [{"country", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :city) do
        [{"city", opt_val} | query_params]
      else
        query_params
      end

    query_params =
      if opt_val = Keyword.get(options, :area_code) do
        [{"area-code", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([
        :area_code,
        :city,
        :country,
        :max_results,
        :next_token,
        :phone_number_type,
        :state,
        :toll_free_prefix
      ])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts a speaker search task.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20StartSpeakerSearchTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec start_speaker_search_task(
          AWS.Client.t(),
          String.t(),
          start_speaker_search_task_request(),
          Keyword.t()
        ) ::
          {:ok, start_speaker_search_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_speaker_search_task_errors()}
  def start_speaker_search_task(%Client{} = client, voice_connector_id, input, options \\ []) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/speaker-search-tasks"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Starts a voice tone analysis task. For more information about voice tone
  analysis, see [Using Amazon Chime SDK voice
  analytics](https://docs.aws.amazon.com/chime-sdk/latest/dg/pstn-voice-analytics.html)
  in the *Amazon Chime SDK Developer Guide*. Before starting any voice tone
  analysis tasks, you must provide all notices and obtain all consents from the
  speaker as required under applicable privacy and biometrics laws, and as
  required under the [AWS service terms](https://aws.amazon.com/service-terms/)
  for the Amazon Chime SDK.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20StartVoiceToneAnalysisTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec start_voice_tone_analysis_task(
          AWS.Client.t(),
          String.t(),
          start_voice_tone_analysis_task_request(),
          Keyword.t()
        ) ::
          {:ok, start_voice_tone_analysis_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_voice_tone_analysis_task_errors()}
  def start_voice_tone_analysis_task(%Client{} = client, voice_connector_id, input, options \\ []) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/voice-tone-analysis-tasks"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Stops a speaker search task.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20StopSpeakerSearchTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:speaker_search_task_id` (`t:string`) The speaker search task ID.
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec stop_speaker_search_task(
          AWS.Client.t(),
          String.t(),
          String.t(),
          stop_speaker_search_task_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_speaker_search_task_errors()}
  def stop_speaker_search_task(
        %Client{} = client,
        speaker_search_task_id,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/speaker-search-tasks/#{AWS.Util.encode_uri(speaker_search_task_id)}?operation=stop"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Stops a voice tone analysis task.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20StopVoiceToneAnalysisTask&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.
  * `:voice_tone_analysis_task_id` (`t:string`) The ID of the voice tone analysis
    task.

  ## Optional parameters:
  """
  @spec stop_voice_tone_analysis_task(
          AWS.Client.t(),
          String.t(),
          String.t(),
          stop_voice_tone_analysis_task_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_voice_tone_analysis_task_errors()}
  def stop_voice_tone_analysis_task(
        %Client{} = client,
        voice_connector_id,
        voice_tone_analysis_task_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/voice-tone-analysis-tasks/#{AWS.Util.encode_uri(voice_tone_analysis_task_id)}?operation=stop"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Adds a tag to the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec tag_resource(AWS.Client.t(), tag_resource_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags?operation=tag-resource"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Removes tags from a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec untag_resource(AWS.Client.t(), untag_resource_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags?operation=untag-resource"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates global settings for the Amazon Chime SDK Voice Connectors in an AWS
  account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20UpdateGlobalSettings&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec update_global_settings(AWS.Client.t(), update_global_settings_request(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_global_settings_errors()}
  def update_global_settings(%Client{} = client, input, options \\ []) do
    url_path = "/settings"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 204)
  end

  @doc """
  Updates phone number details, such as product type, calling name, or phone
  number name for the specified phone number ID. You can update one phone number
  detail at a time. For example, you can update either the product type, calling
  name, or phone number name in one action. For numbers outside the U.S., you
  must use the Amazon Chime SDK SIP Media Application Dial-In product type.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20UpdatePhoneNumber&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:phone_number_id` (`t:string`) The phone number ID.

  ## Optional parameters:
  """
  @spec update_phone_number(
          AWS.Client.t(),
          String.t(),
          update_phone_number_request(),
          Keyword.t()
        ) ::
          {:ok, update_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_phone_number_errors()}
  def update_phone_number(%Client{} = client, phone_number_id, input, options \\ []) do
    url_path = "/phone-numbers/#{AWS.Util.encode_uri(phone_number_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the phone number settings for the administrator's AWS account, such as
  the default outbound calling name. You can update the default outbound calling
  name once every seven days. Outbound calling names can take up to 72 hours to
  update.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20UpdatePhoneNumberSettings&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec update_phone_number_settings(
          AWS.Client.t(),
          update_phone_number_settings_request(),
          Keyword.t()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_phone_number_settings_errors()}
  def update_phone_number_settings(%Client{} = client, input, options \\ []) do
    url_path = "/settings/phone-number"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 204)
  end

  @doc """
  Updates the specified proxy session details, such as voice or SMS capabilities.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20UpdateProxySession&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:proxy_session_id` (`t:string`) The proxy session ID.
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec update_proxy_session(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_proxy_session_request(),
          Keyword.t()
        ) ::
          {:ok, update_proxy_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_proxy_session_errors()}
  def update_proxy_session(
        %Client{} = client,
        proxy_session_id,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/proxy-sessions/#{AWS.Util.encode_uri(proxy_session_id)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Updates the details of the specified SIP media application.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20UpdateSipMediaApplication&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sip_media_application_id` (`t:string`) The SIP media application ID.

  ## Optional parameters:
  """
  @spec update_sip_media_application(
          AWS.Client.t(),
          String.t(),
          update_sip_media_application_request(),
          Keyword.t()
        ) ::
          {:ok, update_sip_media_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_sip_media_application_errors()}
  def update_sip_media_application(
        %Client{} = client,
        sip_media_application_id,
        input,
        options \\ []
      ) do
    url_path = "/sip-media-applications/#{AWS.Util.encode_uri(sip_media_application_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Invokes the AWS Lambda function associated with the SIP media application and
  transaction ID in an update request. The Lambda function can then return a new
  set of actions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20UpdateSipMediaApplicationCall&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sip_media_application_id` (`t:string`) The ID of the SIP media application
    handling the call.
  * `:transaction_id` (`t:string`) The ID of the call transaction.

  ## Optional parameters:
  """
  @spec update_sip_media_application_call(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_sip_media_application_call_request(),
          Keyword.t()
        ) ::
          {:ok, update_sip_media_application_call_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_sip_media_application_call_errors()}
  def update_sip_media_application_call(
        %Client{} = client,
        sip_media_application_id,
        transaction_id,
        input,
        options \\ []
      ) do
    url_path =
      "/sip-media-applications/#{AWS.Util.encode_uri(sip_media_application_id)}/calls/#{AWS.Util.encode_uri(transaction_id)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Updates the details of the specified SIP rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20UpdateSipRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:sip_rule_id` (`t:string`) The SIP rule ID.

  ## Optional parameters:
  """
  @spec update_sip_rule(AWS.Client.t(), String.t(), update_sip_rule_request(), Keyword.t()) ::
          {:ok, update_sip_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_sip_rule_errors()}
  def update_sip_rule(%Client{} = client, sip_rule_id, input, options \\ []) do
    url_path = "/sip-rules/#{AWS.Util.encode_uri(sip_rule_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates the details for the specified Amazon Chime SDK Voice Connector.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20UpdateVoiceConnector&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec update_voice_connector(
          AWS.Client.t(),
          String.t(),
          update_voice_connector_request(),
          Keyword.t()
        ) ::
          {:ok, update_voice_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_voice_connector_errors()}
  def update_voice_connector(%Client{} = client, voice_connector_id, input, options \\ []) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the settings for the specified Amazon Chime SDK Voice Connector group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20UpdateVoiceConnectorGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_connector_group_id` (`t:string`) The Voice Connector ID.

  ## Optional parameters:
  """
  @spec update_voice_connector_group(
          AWS.Client.t(),
          String.t(),
          update_voice_connector_group_request(),
          Keyword.t()
        ) ::
          {:ok, update_voice_connector_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_voice_connector_group_errors()}
  def update_voice_connector_group(
        %Client{} = client,
        voice_connector_group_id,
        input,
        options \\ []
      ) do
    url_path = "/voice-connector-groups/#{AWS.Util.encode_uri(voice_connector_group_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates the specified voice profile’s voice print and refreshes its expiration
  timestamp.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20UpdateVoiceProfile&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_profile_id` (`t:string`) The profile ID.

  ## Optional parameters:
  """
  @spec update_voice_profile(
          AWS.Client.t(),
          String.t(),
          update_voice_profile_request(),
          Keyword.t()
        ) ::
          {:ok, update_voice_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_voice_profile_errors()}
  def update_voice_profile(%Client{} = client, voice_profile_id, input, options \\ []) do
    url_path = "/voice-profiles/#{AWS.Util.encode_uri(voice_profile_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the settings for the specified voice profile domain.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20UpdateVoiceProfileDomain&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:voice_profile_domain_id` (`t:string`) The domain ID.

  ## Optional parameters:
  """
  @spec update_voice_profile_domain(
          AWS.Client.t(),
          String.t(),
          update_voice_profile_domain_request(),
          Keyword.t()
        ) ::
          {:ok, update_voice_profile_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_voice_profile_domain_errors()}
  def update_voice_profile_domain(
        %Client{} = client,
        voice_profile_domain_id,
        input,
        options \\ []
      ) do
    url_path = "/voice-profile-domains/#{AWS.Util.encode_uri(voice_profile_domain_id)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Validates an address to be used for 911 calls made with Amazon Chime SDK Voice
  Connectors. You can use validated addresses in a Presence Information Data
  Format Location Object file that you include in SIP requests. That helps
  ensure that addresses are routed to the appropriate Public Safety Answering
  Point.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=chimesdkvoice%20ValidateE911Address&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec validate_e911_address(AWS.Client.t(), validate_e911_address_request(), Keyword.t()) ::
          {:ok, validate_e911_address_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, validate_e911_address_errors()}
  def validate_e911_address(%Client{} = client, input, options \\ []) do
    url_path = "/emergency-calling/address"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end
end
