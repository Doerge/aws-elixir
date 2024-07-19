# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WAFRegional do
  @moduledoc """
  This is **AWS WAF Classic Regional** documentation. For more information, see
  [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      get_sampled_requests_request() :: %{
        required("MaxItems") => float(),
        required("RuleId") => String.t(),
        required("TimeWindow") => time_window(),
        required("WebAclId") => String.t()
      }
      
  """
  @type get_sampled_requests_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      regex_match_set_update() :: %{
        "Action" => list(any()),
        "RegexMatchTuple" => regex_match_tuple()
      }
      
  """
  @type regex_match_set_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_geo_match_set_request() :: %{
        required("GeoMatchSetId") => String.t()
      }
      
  """
  @type get_geo_match_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_web_acl_response() :: %{}
      
  """
  @type associate_web_acl_response() :: %{}

  @typedoc """

  ## Example:
      
      xss_match_set() :: %{
        "Name" => String.t(),
        "XssMatchSetId" => String.t(),
        "XssMatchTuples" => list(xss_match_tuple()())
      }
      
  """
  @type xss_match_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_rule_request() :: %{
        optional("Tags") => list(tag()()),
        required("ChangeToken") => String.t(),
        required("MetricName") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sql_injection_match_set_summary() :: %{
        "Name" => String.t(),
        "SqlInjectionMatchSetId" => String.t()
      }
      
  """
  @type sql_injection_match_set_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      regex_pattern_set_update() :: %{
        "Action" => list(any()),
        "RegexPatternString" => String.t()
      }
      
  """
  @type regex_pattern_set_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_rule_group_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type update_rule_group_response() :: %{String.t() => any()}

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
      
      w_a_f_nonexistent_item_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type w_a_f_nonexistent_item_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sql_injection_match_set() :: %{
        "Name" => String.t(),
        "SqlInjectionMatchSetId" => String.t(),
        "SqlInjectionMatchTuples" => list(sql_injection_match_tuple()())
      }
      
  """
  @type sql_injection_match_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rate_based_rule() :: %{
        "MatchPredicates" => list(predicate()()),
        "MetricName" => String.t(),
        "Name" => String.t(),
        "RateKey" => list(any()),
        "RateLimit" => float(),
        "RuleId" => String.t()
      }
      
  """
  @type rate_based_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resources_for_web_acl_request() :: %{
        optional("ResourceType") => list(any()),
        required("WebACLId") => String.t()
      }
      
  """
  @type list_resources_for_web_acl_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_size_constraint_set_request() :: %{
        required("ChangeToken") => String.t(),
        required("SizeConstraintSetId") => String.t(),
        required("Updates") => list(size_constraint_set_update()())
      }
      
  """
  @type update_size_constraint_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      geo_match_set_update() :: %{
        "Action" => list(any()),
        "GeoMatchConstraint" => geo_match_constraint()
      }
      
  """
  @type geo_match_set_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      xss_match_set_update() :: %{
        "Action" => list(any()),
        "XssMatchTuple" => xss_match_tuple()
      }
      
  """
  @type xss_match_set_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      w_a_f_invalid_regex_pattern_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type w_a_f_invalid_regex_pattern_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_rule_group_request() :: %{
        required("RuleGroupId") => String.t()
      }
      
  """
  @type get_rule_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_byte_match_set_response() :: %{
        "ByteMatchSet" => byte_match_set(),
        "ChangeToken" => String.t()
      }
      
  """
  @type create_byte_match_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_byte_match_set_response() :: %{
        "ByteMatchSet" => byte_match_set()
      }
      
  """
  @type get_byte_match_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rule_groups_response() :: %{
        "NextMarker" => String.t(),
        "RuleGroups" => list(rule_group_summary()())
      }
      
  """
  @type list_rule_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_ip_sets_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t()
      }
      
  """
  @type list_ip_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_byte_match_set_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type delete_byte_match_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      waf_action() :: %{
        "Type" => list(any())
      }
      
  """
  @type waf_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_regex_match_sets_response() :: %{
        "NextMarker" => String.t(),
        "RegexMatchSets" => list(regex_match_set_summary()())
      }
      
  """
  @type list_regex_match_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_xss_match_set_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type delete_xss_match_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_regex_match_set_request() :: %{
        required("ChangeToken") => String.t(),
        required("RegexMatchSetId") => String.t()
      }
      
  """
  @type delete_regex_match_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_xss_match_set_response() :: %{
        "XssMatchSet" => xss_match_set()
      }
      
  """
  @type get_xss_match_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      w_a_f_stale_data_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type w_a_f_stale_data_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_xss_match_set_request() :: %{
        required("ChangeToken") => String.t(),
        required("XssMatchSetId") => String.t()
      }
      
  """
  @type delete_xss_match_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_byte_match_set_request() :: %{
        required("ByteMatchSetId") => String.t(),
        required("ChangeToken") => String.t()
      }
      
  """
  @type delete_byte_match_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_xss_match_sets_response() :: %{
        "NextMarker" => String.t(),
        "XssMatchSets" => list(xss_match_set_summary()())
      }
      
  """
  @type list_xss_match_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rate_based_rules_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t()
      }
      
  """
  @type list_rate_based_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_byte_match_set_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type update_byte_match_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_sql_injection_match_set_response() :: %{
        "ChangeToken" => String.t(),
        "SqlInjectionMatchSet" => sql_injection_match_set()
      }
      
  """
  @type create_sql_injection_match_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_rate_based_rule_request() :: %{
        required("RuleId") => String.t()
      }
      
  """
  @type get_rate_based_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      field_to_match() :: %{
        "Data" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type field_to_match() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      w_a_f_service_linked_role_error_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type w_a_f_service_linked_role_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      w_a_f_nonexistent_container_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type w_a_f_nonexistent_container_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_byte_match_set_request() :: %{
        required("ByteMatchSetId") => String.t(),
        required("ChangeToken") => String.t(),
        required("Updates") => list(byte_match_set_update()())
      }
      
  """
  @type update_byte_match_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_geo_match_set_response() :: %{
        "ChangeToken" => String.t(),
        "GeoMatchSet" => geo_match_set()
      }
      
  """
  @type create_geo_match_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_ip_set_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type update_ip_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_web_acl_request() :: %{
        required("ResourceArn") => String.t(),
        required("WebACLId") => String.t()
      }
      
  """
  @type associate_web_acl_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_group() :: %{
        "MetricName" => String.t(),
        "Name" => String.t(),
        "RuleGroupId" => String.t()
      }
      
  """
  @type rule_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      size_constraint() :: %{
        "ComparisonOperator" => list(any()),
        "FieldToMatch" => field_to_match(),
        "Size" => float(),
        "TextTransformation" => list(any())
      }
      
  """
  @type size_constraint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_rule_request() :: %{
        required("ChangeToken") => String.t(),
        required("RuleId") => String.t(),
        required("Updates") => list(rule_update()())
      }
      
  """
  @type update_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_web_acl_for_resource_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type get_web_acl_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_sql_injection_match_set_request() :: %{
        required("SqlInjectionMatchSetId") => String.t()
      }
      
  """
  @type get_sql_injection_match_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_ip_set_request() :: %{
        required("ChangeToken") => String.t(),
        required("IPSetId") => String.t()
      }
      
  """
  @type delete_ip_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_size_constraint_set_response() :: %{
        "SizeConstraintSet" => size_constraint_set()
      }
      
  """
  @type get_size_constraint_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_rule_request() :: %{
        required("RuleId") => String.t()
      }
      
  """
  @type get_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      byte_match_set_update() :: %{
        "Action" => list(any()),
        "ByteMatchTuple" => byte_match_tuple()
      }
      
  """
  @type byte_match_set_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_rule_group_response() :: %{
        "RuleGroup" => rule_group()
      }
      
  """
  @type get_rule_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      w_a_f_unavailable_entity_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type w_a_f_unavailable_entity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_regex_pattern_set_request() :: %{
        required("RegexPatternSetId") => String.t()
      }
      
  """
  @type get_regex_pattern_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_web_acl_response() :: %{
        "WebACL" => web_acl()
      }
      
  """
  @type get_web_acl_response() :: %{String.t() => any()}

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
      
      tag_info_for_resource() :: %{
        "ResourceARN" => String.t(),
        "TagList" => list(tag()())
      }
      
  """
  @type tag_info_for_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activated_rule() :: %{
        "Action" => waf_action(),
        "ExcludedRules" => list(excluded_rule()()),
        "OverrideAction" => waf_override_action(),
        "Priority" => integer(),
        "RuleId" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type activated_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      w_a_f_invalid_permission_policy_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type w_a_f_invalid_permission_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_rate_based_rule_response() :: %{
        "ChangeToken" => String.t(),
        "Rule" => rate_based_rule()
      }
      
  """
  @type create_rate_based_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_ip_set_request() :: %{
        required("ChangeToken") => String.t(),
        required("IPSetId") => String.t(),
        required("Updates") => list(ip_set_update()())
      }
      
  """
  @type update_ip_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rules_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t()
      }
      
  """
  @type list_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_size_constraint_set_request() :: %{
        required("ChangeToken") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_size_constraint_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_rate_based_rule_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type update_rate_based_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_sql_injection_match_set_response() :: %{
        "SqlInjectionMatchSet" => sql_injection_match_set()
      }
      
  """
  @type get_sql_injection_match_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      logging_configuration() :: %{
        "LogDestinationConfigs" => list(String.t()()),
        "RedactedFields" => list(field_to_match()()),
        "ResourceArn" => String.t()
      }
      
  """
  @type logging_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_regex_match_set_request() :: %{
        required("RegexMatchSetId") => String.t()
      }
      
  """
  @type get_regex_match_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      byte_match_tuple() :: %{
        "FieldToMatch" => field_to_match(),
        "PositionalConstraint" => list(any()),
        "TargetString" => binary(),
        "TextTransformation" => list(any())
      }
      
  """
  @type byte_match_tuple() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_sql_injection_match_sets_response() :: %{
        "NextMarker" => String.t(),
        "SqlInjectionMatchSets" => list(sql_injection_match_set_summary()())
      }
      
  """
  @type list_sql_injection_match_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_rule_group_response() :: %{
        "ChangeToken" => String.t(),
        "RuleGroup" => rule_group()
      }
      
  """
  @type create_rule_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_rule_group_request() :: %{
        optional("Tags") => list(tag()()),
        required("ChangeToken") => String.t(),
        required("MetricName") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_rule_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_logging_configuration_response() :: %{
        "LoggingConfiguration" => logging_configuration()
      }
      
  """
  @type put_logging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_rule_request() :: %{
        required("ChangeToken") => String.t(),
        required("RuleId") => String.t()
      }
      
  """
  @type delete_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      w_a_f_bad_request_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type w_a_f_bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_geo_match_set_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type delete_geo_match_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_rule_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type delete_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_regex_pattern_set_request() :: %{
        required("ChangeToken") => String.t(),
        required("RegexPatternSetId") => String.t()
      }
      
  """
  @type delete_regex_pattern_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_geo_match_sets_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t()
      }
      
  """
  @type list_geo_match_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      web_acl() :: %{
        "DefaultAction" => waf_action(),
        "MetricName" => String.t(),
        "Name" => String.t(),
        "Rules" => list(activated_rule()()),
        "WebACLArn" => String.t(),
        "WebACLId" => String.t()
      }
      
  """
  @type web_acl() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      w_a_f_internal_error_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type w_a_f_internal_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      regex_match_set() :: %{
        "Name" => String.t(),
        "RegexMatchSetId" => String.t(),
        "RegexMatchTuples" => list(regex_match_tuple()())
      }
      
  """
  @type regex_match_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_activated_rules_in_rule_group_response() :: %{
        "ActivatedRules" => list(activated_rule()()),
        "NextMarker" => String.t()
      }
      
  """
  @type list_activated_rules_in_rule_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_sql_injection_match_set_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type update_sql_injection_match_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscribed_rule_group_summary() :: %{
        "MetricName" => String.t(),
        "Name" => String.t(),
        "RuleGroupId" => String.t()
      }
      
  """
  @type subscribed_rule_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_geo_match_set_response() :: %{
        "GeoMatchSet" => geo_match_set()
      }
      
  """
  @type get_geo_match_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_permission_policy_response() :: %{}
      
  """
  @type delete_permission_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_size_constraint_set_request() :: %{
        required("ChangeToken") => String.t(),
        required("SizeConstraintSetId") => String.t()
      }
      
  """
  @type delete_size_constraint_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_rate_based_rule_managed_keys_request() :: %{
        optional("NextMarker") => String.t(),
        required("RuleId") => String.t()
      }
      
  """
  @type get_rate_based_rule_managed_keys_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_rule_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type update_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      w_a_f_referenced_item_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type w_a_f_referenced_item_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_regex_pattern_set_request() :: %{
        required("ChangeToken") => String.t(),
        required("RegexPatternSetId") => String.t(),
        required("Updates") => list(regex_pattern_set_update()())
      }
      
  """
  @type update_regex_pattern_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_rate_based_rule_response() :: %{
        "Rule" => rate_based_rule()
      }
      
  """
  @type get_rate_based_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      time_window() :: %{
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type time_window() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_ip_sets_response() :: %{
        "IPSets" => list(ip_set_summary()()),
        "NextMarker" => String.t()
      }
      
  """
  @type list_ip_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_subscribed_rule_groups_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t()
      }
      
  """
  @type list_subscribed_rule_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_xss_match_set_request() :: %{
        required("XssMatchSetId") => String.t()
      }
      
  """
  @type get_xss_match_set_request() :: %{String.t() => any()}

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
      
      create_web_acl_response() :: %{
        "ChangeToken" => String.t(),
        "WebACL" => web_acl()
      }
      
  """
  @type create_web_acl_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_sql_injection_match_set_request() :: %{
        required("ChangeToken") => String.t(),
        required("SqlInjectionMatchSetId") => String.t(),
        required("Updates") => list(sql_injection_match_set_update()())
      }
      
  """
  @type update_sql_injection_match_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_web_acl_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type update_web_acl_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_xss_match_set_request() :: %{
        required("ChangeToken") => String.t(),
        required("Updates") => list(xss_match_set_update()()),
        required("XssMatchSetId") => String.t()
      }
      
  """
  @type update_xss_match_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_logging_configuration_response() :: %{
        "LoggingConfiguration" => logging_configuration()
      }
      
  """
  @type get_logging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_regex_match_sets_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t()
      }
      
  """
  @type list_regex_match_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_rate_based_rule_request() :: %{
        required("ChangeToken") => String.t(),
        required("RateLimit") => float(),
        required("RuleId") => String.t(),
        required("Updates") => list(rule_update()())
      }
      
  """
  @type update_rate_based_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_regex_match_set_request() :: %{
        required("ChangeToken") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_regex_match_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      geo_match_set_summary() :: %{
        "GeoMatchSetId" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type geo_match_set_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_geo_match_set_request() :: %{
        required("ChangeToken") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_geo_match_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ip_set() :: %{
        "IPSetDescriptors" => list(ip_set_descriptor()()),
        "IPSetId" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type ip_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      w_a_f_invalid_account_exception() :: %{}
      
  """
  @type w_a_f_invalid_account_exception() :: %{}

  @typedoc """

  ## Example:
      
      get_change_token_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type get_change_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_web_acl_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type disassociate_web_acl_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      w_a_f_tag_operation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type w_a_f_tag_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "NextMarker" => String.t(),
        "TagInfoForResource" => tag_info_for_resource()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_xss_match_set_response() :: %{
        "ChangeToken" => String.t(),
        "XssMatchSet" => xss_match_set()
      }
      
  """
  @type create_xss_match_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_group_update() :: %{
        "Action" => list(any()),
        "ActivatedRule" => activated_rule()
      }
      
  """
  @type rule_group_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sampled_h_t_t_p_request() :: %{
        "Action" => String.t(),
        "Request" => h_t_t_p_request(),
        "RuleWithinRuleGroup" => String.t(),
        "Timestamp" => non_neg_integer(),
        "Weight" => float()
      }
      
  """
  @type sampled_h_t_t_p_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_web_acl_request() :: %{
        optional("DefaultAction") => waf_action(),
        optional("Updates") => list(web_acl_update()()),
        required("ChangeToken") => String.t(),
        required("WebACLId") => String.t()
      }
      
  """
  @type update_web_acl_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_web_acl_for_resource_response() :: %{
        "WebACLSummary" => web_acl_summary()
      }
      
  """
  @type get_web_acl_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_byte_match_sets_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t()
      }
      
  """
  @type list_byte_match_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_rate_based_rule_managed_keys_response() :: %{
        "ManagedKeys" => list(String.t()()),
        "NextMarker" => String.t()
      }
      
  """
  @type get_rate_based_rule_managed_keys_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      w_a_f_invalid_parameter_exception() :: %{
        "field" => list(any()),
        "parameter" => String.t(),
        "reason" => list(any())
      }
      
  """
  @type w_a_f_invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_geo_match_set_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type update_geo_match_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      w_a_f_entity_migration_exception() :: %{
        "MigrationErrorReason" => String.t(),
        "MigrationErrorType" => list(any()),
        "message" => String.t()
      }
      
  """
  @type w_a_f_entity_migration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_change_token_request() :: %{}
      
  """
  @type get_change_token_request() :: %{}

  @typedoc """

  ## Example:
      
      get_rule_response() :: %{
        "Rule" => rule()
      }
      
  """
  @type get_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_sql_injection_match_set_request() :: %{
        required("ChangeToken") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_sql_injection_match_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_rule_response() :: %{
        "ChangeToken" => String.t(),
        "Rule" => rule()
      }
      
  """
  @type create_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_regex_pattern_sets_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t()
      }
      
  """
  @type list_regex_pattern_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_xss_match_sets_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t()
      }
      
  """
  @type list_xss_match_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      byte_match_set_summary() :: %{
        "ByteMatchSetId" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type byte_match_set_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      waf_override_action() :: %{
        "Type" => list(any())
      }
      
  """
  @type waf_override_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_subscribed_rule_groups_response() :: %{
        "NextMarker" => String.t(),
        "RuleGroups" => list(subscribed_rule_group_summary()())
      }
      
  """
  @type list_subscribed_rule_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule() :: %{
        "MetricName" => String.t(),
        "Name" => String.t(),
        "Predicates" => list(predicate()()),
        "RuleId" => String.t()
      }
      
  """
  @type rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_regex_pattern_set_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type delete_regex_pattern_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      size_constraint_set() :: %{
        "Name" => String.t(),
        "SizeConstraintSetId" => String.t(),
        "SizeConstraints" => list(size_constraint()())
      }
      
  """
  @type size_constraint_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_logging_configuration_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type get_logging_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_regex_pattern_set_response() :: %{
        "RegexPatternSet" => regex_pattern_set()
      }
      
  """
  @type get_regex_pattern_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      geo_match_constraint() :: %{
        "Type" => list(any()),
        "Value" => list(any())
      }
      
  """
  @type geo_match_constraint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      regex_pattern_set_summary() :: %{
        "Name" => String.t(),
        "RegexPatternSetId" => String.t()
      }
      
  """
  @type regex_pattern_set_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_permission_policy_request() :: %{
        required("Policy") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type put_permission_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_regex_match_set_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type delete_regex_match_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_byte_match_set_request() :: %{
        required("ChangeToken") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_byte_match_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_sql_injection_match_sets_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t()
      }
      
  """
  @type list_sql_injection_match_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      w_a_f_invalid_operation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type w_a_f_invalid_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_summary() :: %{
        "Name" => String.t(),
        "RuleId" => String.t()
      }
      
  """
  @type rule_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      regex_match_set_summary() :: %{
        "Name" => String.t(),
        "RegexMatchSetId" => String.t()
      }
      
  """
  @type regex_match_set_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_change_token_status_response() :: %{
        "ChangeTokenStatus" => list(any())
      }
      
  """
  @type get_change_token_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_activated_rules_in_rule_group_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t(),
        optional("RuleGroupId") => String.t()
      }
      
  """
  @type list_activated_rules_in_rule_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      w_a_f_disallowed_name_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type w_a_f_disallowed_name_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_byte_match_sets_response() :: %{
        "ByteMatchSets" => list(byte_match_set_summary()()),
        "NextMarker" => String.t()
      }
      
  """
  @type list_byte_match_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_logging_configurations_response() :: %{
        "LoggingConfigurations" => list(logging_configuration()()),
        "NextMarker" => String.t()
      }
      
  """
  @type list_logging_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      h_t_t_p_header() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type h_t_t_p_header() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_size_constraint_set_request() :: %{
        required("SizeConstraintSetId") => String.t()
      }
      
  """
  @type get_size_constraint_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_permission_policy_response() :: %{
        "Policy" => String.t()
      }
      
  """
  @type get_permission_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_geo_match_sets_response() :: %{
        "GeoMatchSets" => list(geo_match_set_summary()()),
        "NextMarker" => String.t()
      }
      
  """
  @type list_geo_match_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_xss_match_set_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type update_xss_match_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      excluded_rule() :: %{
        "RuleId" => String.t()
      }
      
  """
  @type excluded_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_web_acl_request() :: %{
        optional("Tags") => list(tag()()),
        required("ChangeToken") => String.t(),
        required("DefaultAction") => waf_action(),
        required("MetricName") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_web_acl_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_ip_set_request() :: %{
        required("ChangeToken") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_ip_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      size_constraint_set_update() :: %{
        "Action" => list(any()),
        "SizeConstraint" => size_constraint()
      }
      
  """
  @type size_constraint_set_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_rule_group_request() :: %{
        required("ChangeToken") => String.t(),
        required("RuleGroupId") => String.t(),
        required("Updates") => list(rule_group_update()())
      }
      
  """
  @type update_rule_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rules_response() :: %{
        "NextMarker" => String.t(),
        "Rules" => list(rule_summary()())
      }
      
  """
  @type list_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_ip_set_response() :: %{
        "IPSet" => ip_set()
      }
      
  """
  @type get_ip_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_rule_group_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type delete_rule_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      h_t_t_p_request() :: %{
        "ClientIP" => String.t(),
        "Country" => String.t(),
        "HTTPVersion" => String.t(),
        "Headers" => list(h_t_t_p_header()()),
        "Method" => String.t(),
        "URI" => String.t()
      }
      
  """
  @type h_t_t_p_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      regex_pattern_set() :: %{
        "Name" => String.t(),
        "RegexPatternSetId" => String.t(),
        "RegexPatternStrings" => list(String.t()())
      }
      
  """
  @type regex_pattern_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_size_constraint_set_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type update_size_constraint_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_byte_match_set_request() :: %{
        required("ByteMatchSetId") => String.t()
      }
      
  """
  @type get_byte_match_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rate_based_rules_response() :: %{
        "NextMarker" => String.t(),
        "Rules" => list(rule_summary()())
      }
      
  """
  @type list_rate_based_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_group_summary() :: %{
        "Name" => String.t(),
        "RuleGroupId" => String.t()
      }
      
  """
  @type rule_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ip_set_summary() :: %{
        "IPSetId" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type ip_set_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_regex_pattern_set_request() :: %{
        required("ChangeToken") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_regex_pattern_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t(),
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      w_a_f_non_empty_entity_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type w_a_f_non_empty_entity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_permission_policy_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type delete_permission_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      xss_match_set_summary() :: %{
        "Name" => String.t(),
        "XssMatchSetId" => String.t()
      }
      
  """
  @type xss_match_set_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_regex_match_set_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type update_regex_match_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_regex_match_set_request() :: %{
        required("ChangeToken") => String.t(),
        required("RegexMatchSetId") => String.t(),
        required("Updates") => list(regex_match_set_update()())
      }
      
  """
  @type update_regex_match_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_permission_policy_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type get_permission_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      web_acl_update() :: %{
        "Action" => list(any()),
        "ActivatedRule" => activated_rule()
      }
      
  """
  @type web_acl_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      xss_match_tuple() :: %{
        "FieldToMatch" => field_to_match(),
        "TextTransformation" => list(any())
      }
      
  """
  @type xss_match_tuple() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predicate() :: %{
        "DataId" => String.t(),
        "Negated" => boolean(),
        "Type" => list(any())
      }
      
  """
  @type predicate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resources_for_web_acl_response() :: %{
        "ResourceArns" => list(String.t()())
      }
      
  """
  @type list_resources_for_web_acl_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_logging_configurations_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t()
      }
      
  """
  @type list_logging_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_logging_configuration_response() :: %{}
      
  """
  @type delete_logging_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      get_ip_set_request() :: %{
        required("IPSetId") => String.t()
      }
      
  """
  @type get_ip_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_size_constraint_set_response() :: %{
        "ChangeToken" => String.t(),
        "SizeConstraintSet" => size_constraint_set()
      }
      
  """
  @type create_size_constraint_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_web_acl_response() :: %{}
      
  """
  @type disassociate_web_acl_response() :: %{}

  @typedoc """

  ## Example:
      
      put_logging_configuration_request() :: %{
        required("LoggingConfiguration") => logging_configuration()
      }
      
  """
  @type put_logging_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_permission_policy_response() :: %{}
      
  """
  @type put_permission_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      regex_match_tuple() :: %{
        "FieldToMatch" => field_to_match(),
        "RegexPatternSetId" => String.t(),
        "TextTransformation" => list(any())
      }
      
  """
  @type regex_match_tuple() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_geo_match_set_request() :: %{
        required("ChangeToken") => String.t(),
        required("GeoMatchSetId") => String.t(),
        required("Updates") => list(geo_match_set_update()())
      }
      
  """
  @type update_geo_match_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_change_token_status_request() :: %{
        required("ChangeToken") => String.t()
      }
      
  """
  @type get_change_token_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_update() :: %{
        "Action" => list(any()),
        "Predicate" => predicate()
      }
      
  """
  @type rule_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_size_constraint_sets_response() :: %{
        "NextMarker" => String.t(),
        "SizeConstraintSets" => list(size_constraint_set_summary()())
      }
      
  """
  @type list_size_constraint_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      geo_match_set() :: %{
        "GeoMatchConstraints" => list(geo_match_constraint()()),
        "GeoMatchSetId" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type geo_match_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_logging_configuration_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type delete_logging_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_rate_based_rule_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type delete_rate_based_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_sampled_requests_response() :: %{
        "PopulationSize" => float(),
        "SampledRequests" => list(sampled_h_t_t_p_request()()),
        "TimeWindow" => time_window()
      }
      
  """
  @type get_sampled_requests_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_regex_pattern_sets_response() :: %{
        "NextMarker" => String.t(),
        "RegexPatternSets" => list(regex_pattern_set_summary()())
      }
      
  """
  @type list_regex_pattern_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sql_injection_match_set_update() :: %{
        "Action" => list(any()),
        "SqlInjectionMatchTuple" => sql_injection_match_tuple()
      }
      
  """
  @type sql_injection_match_set_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_web_acls_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t()
      }
      
  """
  @type list_web_acls_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_web_acl_migration_stack_request() :: %{
        required("IgnoreUnsupportedType") => boolean(),
        required("S3BucketName") => String.t(),
        required("WebACLId") => String.t()
      }
      
  """
  @type create_web_acl_migration_stack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ip_set_descriptor() :: %{
        "Type" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type ip_set_descriptor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_web_acls_response() :: %{
        "NextMarker" => String.t(),
        "WebACLs" => list(web_acl_summary()())
      }
      
  """
  @type list_web_acls_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_web_acl_migration_stack_response() :: %{
        "S3ObjectUrl" => String.t()
      }
      
  """
  @type create_web_acl_migration_stack_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_ip_set_response() :: %{
        "ChangeToken" => String.t(),
        "IPSet" => ip_set()
      }
      
  """
  @type create_ip_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_sql_injection_match_set_request() :: %{
        required("ChangeToken") => String.t(),
        required("SqlInjectionMatchSetId") => String.t()
      }
      
  """
  @type delete_sql_injection_match_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_regex_pattern_set_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type update_regex_pattern_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ip_set_update() :: %{
        "Action" => list(any()),
        "IPSetDescriptor" => ip_set_descriptor()
      }
      
  """
  @type ip_set_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_size_constraint_sets_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t()
      }
      
  """
  @type list_size_constraint_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_web_acl_request() :: %{
        required("WebACLId") => String.t()
      }
      
  """
  @type get_web_acl_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sql_injection_match_tuple() :: %{
        "FieldToMatch" => field_to_match(),
        "TextTransformation" => list(any())
      }
      
  """
  @type sql_injection_match_tuple() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_regex_match_set_response() :: %{
        "RegexMatchSet" => regex_match_set()
      }
      
  """
  @type get_regex_match_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_web_acl_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type delete_web_acl_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      w_a_f_subscription_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type w_a_f_subscription_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_rule_group_request() :: %{
        required("ChangeToken") => String.t(),
        required("RuleGroupId") => String.t()
      }
      
  """
  @type delete_rule_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      w_a_f_limits_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type w_a_f_limits_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_rate_based_rule_request() :: %{
        required("ChangeToken") => String.t(),
        required("RuleId") => String.t()
      }
      
  """
  @type delete_rate_based_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_web_acl_request() :: %{
        required("ChangeToken") => String.t(),
        required("WebACLId") => String.t()
      }
      
  """
  @type delete_web_acl_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_geo_match_set_request() :: %{
        required("ChangeToken") => String.t(),
        required("GeoMatchSetId") => String.t()
      }
      
  """
  @type delete_geo_match_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      w_a_f_tag_operation_internal_error_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type w_a_f_tag_operation_internal_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_sql_injection_match_set_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type delete_sql_injection_match_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      web_acl_summary() :: %{
        "Name" => String.t(),
        "WebACLId" => String.t()
      }
      
  """
  @type web_acl_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_size_constraint_set_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type delete_size_constraint_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_rate_based_rule_request() :: %{
        optional("Tags") => list(tag()()),
        required("ChangeToken") => String.t(),
        required("MetricName") => String.t(),
        required("Name") => String.t(),
        required("RateKey") => list(any()),
        required("RateLimit") => float()
      }
      
  """
  @type create_rate_based_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rule_groups_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t()
      }
      
  """
  @type list_rule_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      byte_match_set() :: %{
        "ByteMatchSetId" => String.t(),
        "ByteMatchTuples" => list(byte_match_tuple()()),
        "Name" => String.t()
      }
      
  """
  @type byte_match_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_ip_set_response() :: %{
        "ChangeToken" => String.t()
      }
      
  """
  @type delete_ip_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      size_constraint_set_summary() :: %{
        "Name" => String.t(),
        "SizeConstraintSetId" => String.t()
      }
      
  """
  @type size_constraint_set_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_regex_match_set_response() :: %{
        "ChangeToken" => String.t(),
        "RegexMatchSet" => regex_match_set()
      }
      
  """
  @type create_regex_match_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_xss_match_set_request() :: %{
        required("ChangeToken") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_xss_match_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_regex_pattern_set_response() :: %{
        "ChangeToken" => String.t(),
        "RegexPatternSet" => regex_pattern_set()
      }
      
  """
  @type create_regex_pattern_set_response() :: %{String.t() => any()}

  @type associate_web_acl_errors() ::
          w_a_f_invalid_parameter_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_unavailable_entity_exception()
          | w_a_f_nonexistent_item_exception()

  @type create_byte_match_set_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_disallowed_name_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_stale_data_exception()

  @type create_geo_match_set_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_disallowed_name_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_stale_data_exception()

  @type create_ip_set_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_disallowed_name_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_stale_data_exception()

  @type create_rate_based_rule_errors() ::
          w_a_f_tag_operation_internal_error_exception()
          | w_a_f_limits_exceeded_exception()
          | w_a_f_disallowed_name_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_tag_operation_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_bad_request_exception()
          | w_a_f_stale_data_exception()

  @type create_regex_match_set_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_disallowed_name_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_stale_data_exception()

  @type create_regex_pattern_set_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_disallowed_name_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_stale_data_exception()

  @type create_rule_errors() ::
          w_a_f_tag_operation_internal_error_exception()
          | w_a_f_limits_exceeded_exception()
          | w_a_f_disallowed_name_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_tag_operation_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_bad_request_exception()
          | w_a_f_stale_data_exception()

  @type create_rule_group_errors() ::
          w_a_f_tag_operation_internal_error_exception()
          | w_a_f_limits_exceeded_exception()
          | w_a_f_disallowed_name_exception()
          | w_a_f_tag_operation_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_bad_request_exception()
          | w_a_f_stale_data_exception()

  @type create_size_constraint_set_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_disallowed_name_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_stale_data_exception()

  @type create_sql_injection_match_set_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_disallowed_name_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_stale_data_exception()

  @type create_web_acl_errors() ::
          w_a_f_tag_operation_internal_error_exception()
          | w_a_f_limits_exceeded_exception()
          | w_a_f_disallowed_name_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_tag_operation_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_bad_request_exception()
          | w_a_f_stale_data_exception()

  @type create_web_acl_migration_stack_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_entity_migration_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type create_xss_match_set_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_disallowed_name_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_stale_data_exception()

  @type delete_byte_match_set_errors() ::
          w_a_f_non_empty_entity_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_referenced_item_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type delete_geo_match_set_errors() ::
          w_a_f_non_empty_entity_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_referenced_item_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type delete_ip_set_errors() ::
          w_a_f_non_empty_entity_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_referenced_item_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type delete_logging_configuration_errors() ::
          w_a_f_internal_error_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type delete_permission_policy_errors() ::
          w_a_f_internal_error_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type delete_rate_based_rule_errors() ::
          w_a_f_tag_operation_internal_error_exception()
          | w_a_f_non_empty_entity_exception()
          | w_a_f_tag_operation_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_referenced_item_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type delete_regex_match_set_errors() ::
          w_a_f_non_empty_entity_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_referenced_item_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type delete_regex_pattern_set_errors() ::
          w_a_f_non_empty_entity_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_referenced_item_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type delete_rule_errors() ::
          w_a_f_tag_operation_internal_error_exception()
          | w_a_f_non_empty_entity_exception()
          | w_a_f_tag_operation_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_referenced_item_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type delete_rule_group_errors() ::
          w_a_f_tag_operation_internal_error_exception()
          | w_a_f_non_empty_entity_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_tag_operation_exception()
          | w_a_f_referenced_item_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type delete_size_constraint_set_errors() ::
          w_a_f_non_empty_entity_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_referenced_item_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type delete_sql_injection_match_set_errors() ::
          w_a_f_non_empty_entity_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_referenced_item_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type delete_web_acl_errors() ::
          w_a_f_tag_operation_internal_error_exception()
          | w_a_f_non_empty_entity_exception()
          | w_a_f_tag_operation_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_referenced_item_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type delete_xss_match_set_errors() ::
          w_a_f_non_empty_entity_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_referenced_item_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type disassociate_web_acl_errors() ::
          w_a_f_invalid_parameter_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_byte_match_set_errors() ::
          w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_change_token_errors() :: w_a_f_internal_error_exception()

  @type get_change_token_status_errors() ::
          w_a_f_internal_error_exception() | w_a_f_nonexistent_item_exception()

  @type get_geo_match_set_errors() ::
          w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_ip_set_errors() ::
          w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_logging_configuration_errors() ::
          w_a_f_internal_error_exception() | w_a_f_nonexistent_item_exception()

  @type get_permission_policy_errors() ::
          w_a_f_internal_error_exception() | w_a_f_nonexistent_item_exception()

  @type get_rate_based_rule_errors() ::
          w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_rate_based_rule_managed_keys_errors() ::
          w_a_f_invalid_parameter_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_regex_match_set_errors() ::
          w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_regex_pattern_set_errors() ::
          w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_rule_errors() ::
          w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_rule_group_errors() ::
          w_a_f_internal_error_exception() | w_a_f_nonexistent_item_exception()

  @type get_sampled_requests_errors() ::
          w_a_f_internal_error_exception() | w_a_f_nonexistent_item_exception()

  @type get_size_constraint_set_errors() ::
          w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_sql_injection_match_set_errors() ::
          w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_web_acl_errors() ::
          w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_web_acl_for_resource_errors() ::
          w_a_f_invalid_parameter_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_unavailable_entity_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_xss_match_set_errors() ::
          w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type list_activated_rules_in_rule_group_errors() ::
          w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type list_byte_match_sets_errors() ::
          w_a_f_invalid_account_exception() | w_a_f_internal_error_exception()

  @type list_geo_match_sets_errors() ::
          w_a_f_invalid_account_exception() | w_a_f_internal_error_exception()

  @type list_ip_sets_errors() ::
          w_a_f_invalid_account_exception() | w_a_f_internal_error_exception()

  @type list_logging_configurations_errors() ::
          w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type list_rate_based_rules_errors() ::
          w_a_f_invalid_account_exception() | w_a_f_internal_error_exception()

  @type list_regex_match_sets_errors() ::
          w_a_f_invalid_account_exception() | w_a_f_internal_error_exception()

  @type list_regex_pattern_sets_errors() ::
          w_a_f_invalid_account_exception() | w_a_f_internal_error_exception()

  @type list_resources_for_web_acl_errors() ::
          w_a_f_invalid_parameter_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type list_rule_groups_errors() :: w_a_f_internal_error_exception()

  @type list_rules_errors() ::
          w_a_f_invalid_account_exception() | w_a_f_internal_error_exception()

  @type list_size_constraint_sets_errors() ::
          w_a_f_invalid_account_exception() | w_a_f_internal_error_exception()

  @type list_sql_injection_match_sets_errors() ::
          w_a_f_invalid_account_exception() | w_a_f_internal_error_exception()

  @type list_subscribed_rule_groups_errors() ::
          w_a_f_internal_error_exception() | w_a_f_nonexistent_item_exception()

  @type list_tags_for_resource_errors() ::
          w_a_f_tag_operation_internal_error_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_tag_operation_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_bad_request_exception()
          | w_a_f_nonexistent_item_exception()

  @type list_web_acls_errors() ::
          w_a_f_invalid_account_exception() | w_a_f_internal_error_exception()

  @type list_xss_match_sets_errors() ::
          w_a_f_invalid_account_exception() | w_a_f_internal_error_exception()

  @type put_logging_configuration_errors() ::
          w_a_f_internal_error_exception()
          | w_a_f_service_linked_role_error_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type put_permission_policy_errors() ::
          w_a_f_internal_error_exception()
          | w_a_f_invalid_permission_policy_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type tag_resource_errors() ::
          w_a_f_tag_operation_internal_error_exception()
          | w_a_f_limits_exceeded_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_tag_operation_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_bad_request_exception()
          | w_a_f_nonexistent_item_exception()

  @type untag_resource_errors() ::
          w_a_f_tag_operation_internal_error_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_tag_operation_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_bad_request_exception()
          | w_a_f_nonexistent_item_exception()

  @type update_byte_match_set_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_container_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type update_geo_match_set_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_referenced_item_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_container_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type update_ip_set_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_referenced_item_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_container_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type update_rate_based_rule_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_referenced_item_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_container_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type update_regex_match_set_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_disallowed_name_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_container_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type update_regex_pattern_set_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_container_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_invalid_regex_pattern_exception()
          | w_a_f_nonexistent_item_exception()

  @type update_rule_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_referenced_item_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_container_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type update_rule_group_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_container_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type update_size_constraint_set_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_referenced_item_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_container_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type update_sql_injection_match_set_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_container_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type update_web_acl_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_subscription_not_found_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_referenced_item_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_container_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  @type update_xss_match_set_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_invalid_account_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_container_exception()
          | w_a_f_stale_data_exception()
          | w_a_f_nonexistent_item_exception()

  def metadata do
    %{
      api_version: "2016-11-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "waf-regional",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "WAF Regional",
      signature_version: "v4",
      signing_name: "waf-regional",
      target_prefix: "AWSWAF_Regional_20161128"
    }
  end

  @doc """
  This is **AWS WAF Classic Regional** documentation. For more information, see
  [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20AssociateWebACL&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_web_acl_request`)
    %{
      required("ResourceArn") => String.t(),
      required("WebACLId") => String.t()
    }
  """

  @spec associate_web_acl(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, associate_web_acl_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_web_acl_errors()}

  def associate_web_acl(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateWebACL", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Creates a `ByteMatchSet`. You then use `UpdateByteMatchSet` to
  identify the part of a web request that you want AWS WAF to inspect, such as
  the values of the `User-Agent` header or the query string. For example, you
  can create a `ByteMatchSet` that matches any requests with `User-Agent`
  headers that contain the string `BadBot`. You can then configure AWS WAF to
  reject those requests.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20CreateByteMatchSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_byte_match_set_request`)
    %{
      required("ChangeToken") => String.t(),
      required("Name") => String.t()
    }
  """

  @spec create_byte_match_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_byte_match_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_byte_match_set_errors()}

  def create_byte_match_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateByteMatchSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Creates an `GeoMatchSet`, which you use to specify which web
  requests you want to allow or block based on the country that the requests
  originate from. For example, if you're receiving a lot of requests from one or
  more countries and you want to block the requests, you can create an
  `GeoMatchSet` that contains those countries and then configure AWS WAF to
  block the requests.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20CreateGeoMatchSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_geo_match_set_request`)
    %{
      required("ChangeToken") => String.t(),
      required("Name") => String.t()
    }
  """

  @spec create_geo_match_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_geo_match_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_geo_match_set_errors()}

  def create_geo_match_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateGeoMatchSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Creates an `IPSet`, which you use to specify which web
  requests that you want to allow or block based on the IP addresses that the
  requests originate from. For example, if you're receiving a lot of requests
  from one or more individual IP addresses or one or more ranges of IP addresses
  and you want to block the requests, you can create an `IPSet` that contains
  those IP addresses and then configure AWS WAF to block the requests.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20CreateIPSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_ip_set_request`)
    %{
      required("ChangeToken") => String.t(),
      required("Name") => String.t()
    }
  """

  @spec create_ip_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_ip_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_ip_set_errors()}

  def create_ip_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateIPSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Creates a `RateBasedRule`. The `RateBasedRule` contains a
  `RateLimit`, which specifies the maximum number of requests that AWS WAF
  allows from a specified IP address in a five-minute period. The
  `RateBasedRule` also contains the `IPSet` objects, `ByteMatchSet` objects, and
  other predicates that identify the requests that you want to count or block if
  these requests exceed the `RateLimit`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20CreateRateBasedRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_rate_based_rule_request`)
    %{
      optional("Tags") => list(tag()()),
      required("ChangeToken") => String.t(),
      required("MetricName") => String.t(),
      required("Name") => String.t(),
      required("RateKey") => list(any()),
      required("RateLimit") => float()
    }
  """

  @spec create_rate_based_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_rate_based_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_rate_based_rule_errors()}

  def create_rate_based_rule(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRateBasedRule", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Creates a `RegexMatchSet`. You then use `UpdateRegexMatchSet`
  to identify the part of a web request that you want AWS WAF to inspect, such
  as the values of the `User-Agent` header or the query string. For example, you
  can create a `RegexMatchSet` that contains a `RegexMatchTuple` that looks for
  any requests with `User-Agent` headers that match a `RegexPatternSet` with
  pattern `B[a@]dB[o0]t`. You can then configure AWS WAF to reject those
  requests. To create and configure a `RegexMatchSet`, perform the following
  steps:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20CreateRegexMatchSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_regex_match_set_request`)
    %{
      required("ChangeToken") => String.t(),
      required("Name") => String.t()
    }
  """

  @spec create_regex_match_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_regex_match_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_regex_match_set_errors()}

  def create_regex_match_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRegexMatchSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Creates a `RegexPatternSet`. You then use
  `UpdateRegexPatternSet` to specify the regular expression (regex) pattern that
  you want AWS WAF to search for, such as `B[a@]dB[o0]t`. You can then configure
  AWS WAF to reject those requests. To create and configure a `RegexPatternSet`,
  perform the following steps:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20CreateRegexPatternSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_regex_pattern_set_request`)
    %{
      required("ChangeToken") => String.t(),
      required("Name") => String.t()
    }
  """

  @spec create_regex_pattern_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_regex_pattern_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_regex_pattern_set_errors()}

  def create_regex_pattern_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRegexPatternSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Creates a `Rule`, which contains the `IPSet` objects,
  `ByteMatchSet` objects, and other predicates that identify the requests that
  you want to block. If you add more than one predicate to a `Rule`, a request
  must match all of the specifications to be allowed or blocked. For example,
  suppose that you add the following to a `Rule`:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20CreateRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_rule_request`)
    %{
      optional("Tags") => list(tag()()),
      required("ChangeToken") => String.t(),
      required("MetricName") => String.t(),
      required("Name") => String.t()
    }
  """

  @spec create_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_rule_errors()}

  def create_rule(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRule", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Creates a `RuleGroup`. A rule group is a collection of
  predefined rules that you add to a web ACL. You use `UpdateRuleGroup` to add
  rules to the rule group.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20CreateRuleGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_rule_group_request`)
    %{
      optional("Tags") => list(tag()()),
      required("ChangeToken") => String.t(),
      required("MetricName") => String.t(),
      required("Name") => String.t()
    }
  """

  @spec create_rule_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_rule_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_rule_group_errors()}

  def create_rule_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRuleGroup", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Creates a `SizeConstraintSet`. You then use
  `UpdateSizeConstraintSet` to identify the part of a web request that you want
  AWS WAF to check for length, such as the length of the `User-Agent` header or
  the length of the query string. For example, you can create a
  `SizeConstraintSet` that matches any requests that have a query string that is
  longer than 100 bytes. You can then configure AWS WAF to reject those
  requests.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20CreateSizeConstraintSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_size_constraint_set_request`)
    %{
      required("ChangeToken") => String.t(),
      required("Name") => String.t()
    }
  """

  @spec create_size_constraint_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_size_constraint_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_size_constraint_set_errors()}

  def create_size_constraint_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateSizeConstraintSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Creates a `SqlInjectionMatchSet`, which you use to allow,
  block, or count requests that contain snippets of SQL code in a specified part
  of web requests. AWS WAF searches for character sequences that are likely to
  be malicious strings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20CreateSqlInjectionMatchSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_sql_injection_match_set_request`)
    %{
      required("ChangeToken") => String.t(),
      required("Name") => String.t()
    }
  """

  @spec create_sql_injection_match_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_sql_injection_match_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_sql_injection_match_set_errors()}

  def create_sql_injection_match_set(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateSqlInjectionMatchSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Creates a `WebACL`, which contains the `Rules` that identify
  the CloudFront web requests that you want to allow, block, or count. AWS WAF
  evaluates `Rules` in order based on the value of `Priority` for each `Rule`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20CreateWebACL&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_web_acl_request`)
    %{
      optional("Tags") => list(tag()()),
      required("ChangeToken") => String.t(),
      required("DefaultAction") => waf_action(),
      required("MetricName") => String.t(),
      required("Name") => String.t()
    }
  """

  @spec create_web_acl(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_web_acl_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_web_acl_errors()}

  def create_web_acl(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateWebACL", input, options)
  end

  @doc """
  Creates an AWS CloudFormation WAFV2 template for the specified web ACL in the
  specified Amazon S3 bucket. Then, in CloudFormation, you create a stack from
  the template, to create the web ACL and its resources in AWS WAFV2. Use this
  to migrate your AWS WAF Classic web ACL to the latest version of AWS WAF.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20CreateWebACLMigrationStack&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_web_acl_migration_stack_request`)
    %{
      required("IgnoreUnsupportedType") => boolean(),
      required("S3BucketName") => String.t(),
      required("WebACLId") => String.t()
    }
  """

  @spec create_web_acl_migration_stack(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_web_acl_migration_stack_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_web_acl_migration_stack_errors()}

  def create_web_acl_migration_stack(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateWebACLMigrationStack", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Creates an `XssMatchSet`, which you use to allow, block, or
  count requests that contain cross-site scripting attacks in the specified part
  of web requests. AWS WAF searches for character sequences that are likely to
  be malicious strings.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20CreateXssMatchSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_xss_match_set_request`)
    %{
      required("ChangeToken") => String.t(),
      required("Name") => String.t()
    }
  """

  @spec create_xss_match_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_xss_match_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_xss_match_set_errors()}

  def create_xss_match_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateXssMatchSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20DeleteByteMatchSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_byte_match_set_request`)
    %{
      required("ByteMatchSetId") => String.t(),
      required("ChangeToken") => String.t()
    }
  """

  @spec delete_byte_match_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_byte_match_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_byte_match_set_errors()}

  def delete_byte_match_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteByteMatchSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20DeleteGeoMatchSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_geo_match_set_request`)
    %{
      required("ChangeToken") => String.t(),
      required("GeoMatchSetId") => String.t()
    }
  """

  @spec delete_geo_match_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_geo_match_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_geo_match_set_errors()}

  def delete_geo_match_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteGeoMatchSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20DeleteIPSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_ip_set_request`)
    %{
      required("ChangeToken") => String.t(),
      required("IPSetId") => String.t()
    }
  """

  @spec delete_ip_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_ip_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_ip_set_errors()}

  def delete_ip_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteIPSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20DeleteLoggingConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_logging_configuration_request`)
    %{
      required("ResourceArn") => String.t()
    }
  """

  @spec delete_logging_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_logging_configuration_errors()}

  def delete_logging_configuration(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteLoggingConfiguration", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20DeletePermissionPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_permission_policy_request`)
    %{
      required("ResourceArn") => String.t()
    }
  """

  @spec delete_permission_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_permission_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_permission_policy_errors()}

  def delete_permission_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePermissionPolicy", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20DeleteRateBasedRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_rate_based_rule_request`)
    %{
      required("ChangeToken") => String.t(),
      required("RuleId") => String.t()
    }
  """

  @spec delete_rate_based_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_rate_based_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_rate_based_rule_errors()}

  def delete_rate_based_rule(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRateBasedRule", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20DeleteRegexMatchSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_regex_match_set_request`)
    %{
      required("ChangeToken") => String.t(),
      required("RegexMatchSetId") => String.t()
    }
  """

  @spec delete_regex_match_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_regex_match_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_regex_match_set_errors()}

  def delete_regex_match_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRegexMatchSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20DeleteRegexPatternSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_regex_pattern_set_request`)
    %{
      required("ChangeToken") => String.t(),
      required("RegexPatternSetId") => String.t()
    }
  """

  @spec delete_regex_pattern_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_regex_pattern_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_regex_pattern_set_errors()}

  def delete_regex_pattern_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRegexPatternSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20DeleteRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_rule_request`)
    %{
      required("ChangeToken") => String.t(),
      required("RuleId") => String.t()
    }
  """

  @spec delete_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_rule_errors()}

  def delete_rule(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRule", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20DeleteRuleGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_rule_group_request`)
    %{
      required("ChangeToken") => String.t(),
      required("RuleGroupId") => String.t()
    }
  """

  @spec delete_rule_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_rule_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_rule_group_errors()}

  def delete_rule_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRuleGroup", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20DeleteSizeConstraintSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_size_constraint_set_request`)
    %{
      required("ChangeToken") => String.t(),
      required("SizeConstraintSetId") => String.t()
    }
  """

  @spec delete_size_constraint_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_size_constraint_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_size_constraint_set_errors()}

  def delete_size_constraint_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteSizeConstraintSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20DeleteSqlInjectionMatchSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_sql_injection_match_set_request`)
    %{
      required("ChangeToken") => String.t(),
      required("SqlInjectionMatchSetId") => String.t()
    }
  """

  @spec delete_sql_injection_match_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_sql_injection_match_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_sql_injection_match_set_errors()}

  def delete_sql_injection_match_set(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteSqlInjectionMatchSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20DeleteWebACL&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_web_acl_request`)
    %{
      required("ChangeToken") => String.t(),
      required("WebACLId") => String.t()
    }
  """

  @spec delete_web_acl(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_web_acl_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_web_acl_errors()}

  def delete_web_acl(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteWebACL", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20DeleteXssMatchSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_xss_match_set_request`)
    %{
      required("ChangeToken") => String.t(),
      required("XssMatchSetId") => String.t()
    }
  """

  @spec delete_xss_match_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_xss_match_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_xss_match_set_errors()}

  def delete_xss_match_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteXssMatchSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic Regional** documentation. For more information, see
  [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20DisassociateWebACL&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disassociate_web_acl_request`)
    %{
      required("ResourceArn") => String.t()
    }
  """

  @spec disassociate_web_acl(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disassociate_web_acl_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_web_acl_errors()}

  def disassociate_web_acl(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateWebACL", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20GetByteMatchSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_byte_match_set_request`)
    %{
      required("ByteMatchSetId") => String.t()
    }
  """

  @spec get_byte_match_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_byte_match_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_byte_match_set_errors()}

  def get_byte_match_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetByteMatchSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20GetChangeToken&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_change_token_request`)
    %{
      
    }
  """

  @spec get_change_token(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_change_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_change_token_errors()}

  def get_change_token(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetChangeToken", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20GetChangeTokenStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_change_token_status_request`)
    %{
      required("ChangeToken") => String.t()
    }
  """

  @spec get_change_token_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_change_token_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_change_token_status_errors()}

  def get_change_token_status(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetChangeTokenStatus", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20GetGeoMatchSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_geo_match_set_request`)
    %{
      required("GeoMatchSetId") => String.t()
    }
  """

  @spec get_geo_match_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_geo_match_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_geo_match_set_errors()}

  def get_geo_match_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetGeoMatchSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20GetIPSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_ip_set_request`)
    %{
      required("IPSetId") => String.t()
    }
  """

  @spec get_ip_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_ip_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_ip_set_errors()}

  def get_ip_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetIPSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20GetLoggingConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_logging_configuration_request`)
    %{
      required("ResourceArn") => String.t()
    }
  """

  @spec get_logging_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_logging_configuration_errors()}

  def get_logging_configuration(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetLoggingConfiguration", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20GetPermissionPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_permission_policy_request`)
    %{
      required("ResourceArn") => String.t()
    }
  """

  @spec get_permission_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_permission_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_permission_policy_errors()}

  def get_permission_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPermissionPolicy", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20GetRateBasedRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_rate_based_rule_request`)
    %{
      required("RuleId") => String.t()
    }
  """

  @spec get_rate_based_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_rate_based_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_rate_based_rule_errors()}

  def get_rate_based_rule(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRateBasedRule", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20GetRateBasedRuleManagedKeys&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_rate_based_rule_managed_keys_request`)
    %{
      optional("NextMarker") => String.t(),
      required("RuleId") => String.t()
    }
  """

  @spec get_rate_based_rule_managed_keys(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_rate_based_rule_managed_keys_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_rate_based_rule_managed_keys_errors()}

  def get_rate_based_rule_managed_keys(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRateBasedRuleManagedKeys", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20GetRegexMatchSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_regex_match_set_request`)
    %{
      required("RegexMatchSetId") => String.t()
    }
  """

  @spec get_regex_match_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_regex_match_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_regex_match_set_errors()}

  def get_regex_match_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRegexMatchSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20GetRegexPatternSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_regex_pattern_set_request`)
    %{
      required("RegexPatternSetId") => String.t()
    }
  """

  @spec get_regex_pattern_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_regex_pattern_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_regex_pattern_set_errors()}

  def get_regex_pattern_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRegexPatternSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20GetRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_rule_request`)
    %{
      required("RuleId") => String.t()
    }
  """

  @spec get_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_rule_errors()}

  def get_rule(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRule", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20GetRuleGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_rule_group_request`)
    %{
      required("RuleGroupId") => String.t()
    }
  """

  @spec get_rule_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_rule_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_rule_group_errors()}

  def get_rule_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRuleGroup", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20GetSampledRequests&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_sampled_requests_request`)
    %{
      required("MaxItems") => float(),
      required("RuleId") => String.t(),
      required("TimeWindow") => time_window(),
      required("WebAclId") => String.t()
    }
  """

  @spec get_sampled_requests(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_sampled_requests_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sampled_requests_errors()}

  def get_sampled_requests(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSampledRequests", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20GetSizeConstraintSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_size_constraint_set_request`)
    %{
      required("SizeConstraintSetId") => String.t()
    }
  """

  @spec get_size_constraint_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_size_constraint_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_size_constraint_set_errors()}

  def get_size_constraint_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSizeConstraintSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20GetSqlInjectionMatchSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_sql_injection_match_set_request`)
    %{
      required("SqlInjectionMatchSetId") => String.t()
    }
  """

  @spec get_sql_injection_match_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_sql_injection_match_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sql_injection_match_set_errors()}

  def get_sql_injection_match_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSqlInjectionMatchSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20GetWebACL&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_web_acl_request`)
    %{
      required("WebACLId") => String.t()
    }
  """

  @spec get_web_acl(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_web_acl_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_web_acl_errors()}

  def get_web_acl(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetWebACL", input, options)
  end

  @doc """
  This is **AWS WAF Classic Regional** documentation. For more information, see
  [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20GetWebACLForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_web_acl_for_resource_request`)
    %{
      required("ResourceArn") => String.t()
    }
  """

  @spec get_web_acl_for_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_web_acl_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_web_acl_for_resource_errors()}

  def get_web_acl_for_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetWebACLForResource", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20GetXssMatchSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_xss_match_set_request`)
    %{
      required("XssMatchSetId") => String.t()
    }
  """

  @spec get_xss_match_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_xss_match_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_xss_match_set_errors()}

  def get_xss_match_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetXssMatchSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20ListActivatedRulesInRuleGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_activated_rules_in_rule_group_request`)
    %{
      optional("Limit") => integer(),
      optional("NextMarker") => String.t(),
      optional("RuleGroupId") => String.t()
    }
  """

  @spec list_activated_rules_in_rule_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_activated_rules_in_rule_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_activated_rules_in_rule_group_errors()}

  def list_activated_rules_in_rule_group(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListActivatedRulesInRuleGroup", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20ListByteMatchSets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_byte_match_sets_request`)
    %{
      optional("Limit") => integer(),
      optional("NextMarker") => String.t()
    }
  """

  @spec list_byte_match_sets(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_byte_match_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_byte_match_sets_errors()}

  def list_byte_match_sets(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListByteMatchSets", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20ListGeoMatchSets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_geo_match_sets_request`)
    %{
      optional("Limit") => integer(),
      optional("NextMarker") => String.t()
    }
  """

  @spec list_geo_match_sets(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_geo_match_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_geo_match_sets_errors()}

  def list_geo_match_sets(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListGeoMatchSets", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20ListIPSets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_ip_sets_request`)
    %{
      optional("Limit") => integer(),
      optional("NextMarker") => String.t()
    }
  """

  @spec list_ip_sets(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_ip_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_ip_sets_errors()}

  def list_ip_sets(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListIPSets", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20ListLoggingConfigurations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_logging_configurations_request`)
    %{
      optional("Limit") => integer(),
      optional("NextMarker") => String.t()
    }
  """

  @spec list_logging_configurations(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_logging_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_logging_configurations_errors()}

  def list_logging_configurations(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListLoggingConfigurations", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20ListRateBasedRules&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_rate_based_rules_request`)
    %{
      optional("Limit") => integer(),
      optional("NextMarker") => String.t()
    }
  """

  @spec list_rate_based_rules(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_rate_based_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_rate_based_rules_errors()}

  def list_rate_based_rules(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRateBasedRules", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20ListRegexMatchSets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_regex_match_sets_request`)
    %{
      optional("Limit") => integer(),
      optional("NextMarker") => String.t()
    }
  """

  @spec list_regex_match_sets(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_regex_match_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_regex_match_sets_errors()}

  def list_regex_match_sets(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRegexMatchSets", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20ListRegexPatternSets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_regex_pattern_sets_request`)
    %{
      optional("Limit") => integer(),
      optional("NextMarker") => String.t()
    }
  """

  @spec list_regex_pattern_sets(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_regex_pattern_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_regex_pattern_sets_errors()}

  def list_regex_pattern_sets(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRegexPatternSets", input, options)
  end

  @doc """
  This is **AWS WAF Classic Regional** documentation. For more information, see
  [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20ListResourcesForWebACL&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_resources_for_web_acl_request`)
    %{
      optional("ResourceType") => list(any()),
      required("WebACLId") => String.t()
    }
  """

  @spec list_resources_for_web_acl(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_resources_for_web_acl_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resources_for_web_acl_errors()}

  def list_resources_for_web_acl(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListResourcesForWebACL", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20ListRuleGroups&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_rule_groups_request`)
    %{
      optional("Limit") => integer(),
      optional("NextMarker") => String.t()
    }
  """

  @spec list_rule_groups(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_rule_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_rule_groups_errors()}

  def list_rule_groups(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRuleGroups", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20ListRules&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_rules_request`)
    %{
      optional("Limit") => integer(),
      optional("NextMarker") => String.t()
    }
  """

  @spec list_rules(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_rules_errors()}

  def list_rules(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRules", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20ListSizeConstraintSets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_size_constraint_sets_request`)
    %{
      optional("Limit") => integer(),
      optional("NextMarker") => String.t()
    }
  """

  @spec list_size_constraint_sets(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_size_constraint_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_size_constraint_sets_errors()}

  def list_size_constraint_sets(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSizeConstraintSets", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20ListSqlInjectionMatchSets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_sql_injection_match_sets_request`)
    %{
      optional("Limit") => integer(),
      optional("NextMarker") => String.t()
    }
  """

  @spec list_sql_injection_match_sets(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_sql_injection_match_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_sql_injection_match_sets_errors()}

  def list_sql_injection_match_sets(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSqlInjectionMatchSets", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20ListSubscribedRuleGroups&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_subscribed_rule_groups_request`)
    %{
      optional("Limit") => integer(),
      optional("NextMarker") => String.t()
    }
  """

  @spec list_subscribed_rule_groups(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_subscribed_rule_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_subscribed_rule_groups_errors()}

  def list_subscribed_rule_groups(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSubscribedRuleGroups", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tags_for_resource_request`)
    %{
      optional("Limit") => integer(),
      optional("NextMarker") => String.t(),
      required("ResourceARN") => String.t()
    }
  """

  @spec list_tags_for_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}

  def list_tags_for_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20ListWebACLs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_web_acls_request`)
    %{
      optional("Limit") => integer(),
      optional("NextMarker") => String.t()
    }
  """

  @spec list_web_acls(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_web_acls_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_web_acls_errors()}

  def list_web_acls(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListWebACLs", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20ListXssMatchSets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_xss_match_sets_request`)
    %{
      optional("Limit") => integer(),
      optional("NextMarker") => String.t()
    }
  """

  @spec list_xss_match_sets(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_xss_match_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_xss_match_sets_errors()}

  def list_xss_match_sets(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListXssMatchSets", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Associates a `LoggingConfiguration` with a specified web ACL.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20PutLoggingConfiguration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_logging_configuration_request`)
    %{
      required("LoggingConfiguration") => logging_configuration()
    }
  """

  @spec put_logging_configuration(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_logging_configuration_errors()}

  def put_logging_configuration(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutLoggingConfiguration", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Attaches an IAM policy to the specified resource. The only
  supported use for this action is to share a RuleGroup across accounts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20PutPermissionPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:put_permission_policy_request`)
    %{
      required("Policy") => String.t(),
      required("ResourceArn") => String.t()
    }
  """

  @spec put_permission_policy(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, put_permission_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_permission_policy_errors()}

  def put_permission_policy(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutPermissionPolicy", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:tag_resource_request`)
    %{
      required("ResourceARN") => String.t(),
      required("Tags") => list(tag()())
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
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:untag_resource_request`)
    %{
      required("ResourceARN") => String.t(),
      required("TagKeys") => list(String.t()())
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
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Inserts or deletes `ByteMatchTuple` objects (filters) in a
  `ByteMatchSet`. For each `ByteMatchTuple` object, you specify the following
  values:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20UpdateByteMatchSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_byte_match_set_request`)
    %{
      required("ByteMatchSetId") => String.t(),
      required("ChangeToken") => String.t(),
      required("Updates") => list(byte_match_set_update()())
    }
  """

  @spec update_byte_match_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_byte_match_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_byte_match_set_errors()}

  def update_byte_match_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateByteMatchSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Inserts or deletes `GeoMatchConstraint` objects in an
  `GeoMatchSet`. For each `GeoMatchConstraint` object, you specify the following
  values:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20UpdateGeoMatchSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_geo_match_set_request`)
    %{
      required("ChangeToken") => String.t(),
      required("GeoMatchSetId") => String.t(),
      required("Updates") => list(geo_match_set_update()())
    }
  """

  @spec update_geo_match_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_geo_match_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_geo_match_set_errors()}

  def update_geo_match_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateGeoMatchSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Inserts or deletes `IPSetDescriptor` objects in an `IPSet`.
  For each `IPSetDescriptor` object, you specify the following values:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20UpdateIPSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_ip_set_request`)
    %{
      required("ChangeToken") => String.t(),
      required("IPSetId") => String.t(),
      required("Updates") => list(ip_set_update()())
    }
  """

  @spec update_ip_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_ip_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_ip_set_errors()}

  def update_ip_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateIPSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20UpdateRateBasedRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_rate_based_rule_request`)
    %{
      required("ChangeToken") => String.t(),
      required("RateLimit") => float(),
      required("RuleId") => String.t(),
      required("Updates") => list(rule_update()())
    }
  """

  @spec update_rate_based_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_rate_based_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_rate_based_rule_errors()}

  def update_rate_based_rule(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRateBasedRule", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Inserts or deletes `RegexMatchTuple` objects (filters) in a
  `RegexMatchSet`. For each `RegexMatchSetUpdate` object, you specify the
  following values:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20UpdateRegexMatchSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_regex_match_set_request`)
    %{
      required("ChangeToken") => String.t(),
      required("RegexMatchSetId") => String.t(),
      required("Updates") => list(regex_match_set_update()())
    }
  """

  @spec update_regex_match_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_regex_match_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_regex_match_set_errors()}

  def update_regex_match_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRegexMatchSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Inserts or deletes `RegexPatternString` objects in a
  `RegexPatternSet`. For each `RegexPatternString` object, you specify the
  following values:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20UpdateRegexPatternSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_regex_pattern_set_request`)
    %{
      required("ChangeToken") => String.t(),
      required("RegexPatternSetId") => String.t(),
      required("Updates") => list(regex_pattern_set_update()())
    }
  """

  @spec update_regex_pattern_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_regex_pattern_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_regex_pattern_set_errors()}

  def update_regex_pattern_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRegexPatternSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Inserts or deletes `Predicate` objects in a `Rule`. Each
  `Predicate` object identifies a predicate, such as a `ByteMatchSet` or an
  `IPSet`, that specifies the web requests that you want to allow, block, or
  count. If you add more than one predicate to a `Rule`, a request must match
  all of the specifications to be allowed, blocked, or counted. For example,
  suppose that you add the following to a `Rule`:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20UpdateRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_rule_request`)
    %{
      required("ChangeToken") => String.t(),
      required("RuleId") => String.t(),
      required("Updates") => list(rule_update()())
    }
  """

  @spec update_rule(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_rule_errors()}

  def update_rule(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRule", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Inserts or deletes `ActivatedRule` objects in a `RuleGroup`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20UpdateRuleGroup&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_rule_group_request`)
    %{
      required("ChangeToken") => String.t(),
      required("RuleGroupId") => String.t(),
      required("Updates") => list(rule_group_update()())
    }
  """

  @spec update_rule_group(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_rule_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_rule_group_errors()}

  def update_rule_group(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRuleGroup", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Inserts or deletes `SizeConstraint` objects (filters) in a
  `SizeConstraintSet`. For each `SizeConstraint` object, you specify the
  following values:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20UpdateSizeConstraintSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_size_constraint_set_request`)
    %{
      required("ChangeToken") => String.t(),
      required("SizeConstraintSetId") => String.t(),
      required("Updates") => list(size_constraint_set_update()())
    }
  """

  @spec update_size_constraint_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_size_constraint_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_size_constraint_set_errors()}

  def update_size_constraint_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSizeConstraintSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Inserts or deletes `SqlInjectionMatchTuple` objects (filters)
  in a `SqlInjectionMatchSet`. For each `SqlInjectionMatchTuple` object, you
  specify the following values:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20UpdateSqlInjectionMatchSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_sql_injection_match_set_request`)
    %{
      required("ChangeToken") => String.t(),
      required("SqlInjectionMatchSetId") => String.t(),
      required("Updates") => list(sql_injection_match_set_update()())
    }
  """

  @spec update_sql_injection_match_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_sql_injection_match_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_sql_injection_match_set_errors()}

  def update_sql_injection_match_set(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSqlInjectionMatchSet", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Inserts or deletes `ActivatedRule` objects in a `WebACL`. Each
  `Rule` identifies web requests that you want to allow, block, or count. When
  you update a `WebACL`, you specify the following values:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20UpdateWebACL&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_web_acl_request`)
    %{
      optional("DefaultAction") => waf_action(),
      optional("Updates") => list(web_acl_update()()),
      required("ChangeToken") => String.t(),
      required("WebACLId") => String.t()
    }
  """

  @spec update_web_acl(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_web_acl_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_web_acl_errors()}

  def update_web_acl(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateWebACL", input, options)
  end

  @doc """
  This is **AWS WAF Classic** documentation. For more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide. **For the latest version of AWS WAF**, use the AWS
  WAFV2 API and see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional
  and global use. Inserts or deletes `XssMatchTuple` objects (filters) in an
  `XssMatchSet`. For each `XssMatchTuple` object, you specify the following
  values:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=wafregional%20UpdateXssMatchSet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_xss_match_set_request`)
    %{
      required("ChangeToken") => String.t(),
      required("Updates") => list(xss_match_set_update()()),
      required("XssMatchSetId") => String.t()
    }
  """

  @spec update_xss_match_set(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_xss_match_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_xss_match_set_errors()}

  def update_xss_match_set(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateXssMatchSet", input, options)
  end
end
