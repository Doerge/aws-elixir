# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CleanRooms do
  @moduledoc """
  Welcome to the *Clean Rooms API Reference*. Clean Rooms is an Amazon Web
  Services service that helps multiple parties to join their data together in a
  secure collaboration workspace. In the collaboration, members who can query
  and receive results can get insights into the collective datasets without
  either party getting access to the other party's raw data.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      configured_table_summary() :: %{
        "analysisMethod" => String.t(),
        "analysisRuleTypes" => list(list(any())()),
        "arn" => String.t(),
        "createTime" => [non_neg_integer()],
        "id" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type configured_table_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_schemas_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("schemaType") => list(any())
      }

  """
  @type list_schemas_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configured_table_association_input() :: %{}

  """
  @type get_configured_table_association_input() :: %{}

  @typedoc """

  ## Example:

      list_configured_audience_model_associations_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_configured_audience_model_associations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_configured_audience_model_association_output() :: %{}

  """
  @type delete_configured_audience_model_association_output() :: %{}

  @typedoc """

  ## Example:

      list_analysis_templates_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_analysis_templates_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_analysis_templates_output() :: %{
        optional("nextToken") => String.t(),
        required("collaborationAnalysisTemplateSummaries") => list(collaboration_analysis_template_summary()())
      }

  """
  @type list_collaboration_analysis_templates_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configured_table_output() :: %{
        required("configuredTable") => configured_table()
      }

  """
  @type create_configured_table_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_privacy_budget_template_output() :: %{
        "privacyBudgetTemplate" => privacy_budget_template()
      }

  """
  @type create_privacy_budget_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      differential_privacy_preview_parameters_input() :: %{
        "epsilon" => integer(),
        "usersNoisePerQuery" => integer()
      }

  """
  @type differential_privacy_preview_parameters_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_configured_table_input() :: %{}

  """
  @type delete_configured_table_input() :: %{}

  @typedoc """

  ## Example:

      list_members_output() :: %{
        optional("nextToken") => String.t(),
        required("memberSummaries") => list(member_summary()())
      }

  """
  @type list_members_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_membership_input() :: %{
        optional("defaultResultConfiguration") => membership_protected_query_result_configuration(),
        optional("paymentConfiguration") => membership_payment_configuration(),
        optional("tags") => map(),
        required("collaborationIdentifier") => String.t(),
        required("queryLogStatus") => String.t()
      }

  """
  @type create_membership_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_collaboration_analysis_template_input() :: %{
        required("analysisTemplateArns") => list(String.t()())
      }

  """
  @type batch_get_collaboration_analysis_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configured_table_analysis_rule_output() :: %{
        required("analysisRule") => configured_table_analysis_rule()
      }

  """
  @type get_configured_table_analysis_rule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configured_table_input() :: %{
        optional("description") => String.t(),
        optional("tags") => map(),
        required("allowedColumns") => list(String.t()()),
        required("analysisMethod") => String.t(),
        required("name") => String.t(),
        required("tableReference") => list()
      }

  """
  @type create_configured_table_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_rule() :: %{
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "name" => String.t(),
        "policy" => list(),
        "type" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type analysis_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_protected_query_output() :: %{
        required("protectedQuery") => protected_query()
      }

  """
  @type get_protected_query_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_configured_table_associations_output() :: %{
        optional("nextToken") => String.t(),
        required("configuredTableAssociationSummaries") => list(configured_table_association_summary()())
      }

  """
  @type list_configured_table_associations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collaboration_analysis_template() :: %{
        "analysisParameters" => list(analysis_parameter()()),
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "description" => String.t(),
        "format" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "schema" => analysis_schema(),
        "source" => list(),
        "updateTime" => [non_neg_integer()],
        "validations" => list(analysis_template_validation_status_detail()())
      }

  """
  @type collaboration_analysis_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_analysis_template_input() :: %{}

  """
  @type get_analysis_template_input() :: %{}

  @typedoc """

  ## Example:

      list_analysis_templates_output() :: %{
        optional("nextToken") => String.t(),
        required("analysisTemplateSummaries") => list(analysis_template_summary()())
      }

  """
  @type list_analysis_templates_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_query_summary() :: %{
        "createTime" => [non_neg_integer()],
        "id" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "status" => String.t()
      }

  """
  @type protected_query_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_collaboration_analysis_template_input() :: %{}

  """
  @type get_collaboration_analysis_template_input() :: %{}

  @typedoc """

  ## Example:

      list_configured_table_associations_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_configured_table_associations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_privacy_budget_template_input() :: %{}

  """
  @type delete_privacy_budget_template_input() :: %{}

  @typedoc """

  ## Example:

      delete_membership_output() :: %{}

  """
  @type delete_membership_output() :: %{}

  @typedoc """

  ## Example:

      update_analysis_template_input() :: %{
        optional("description") => String.t()
      }

  """
  @type update_analysis_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column() :: %{
        "name" => String.t(),
        "type" => String.t()
      }

  """
  @type column() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_configured_tables_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_configured_tables_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_collaboration_output() :: %{
        required("collaboration") => collaboration()
      }

  """
  @type create_collaboration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_memberships_output() :: %{
        optional("nextToken") => String.t(),
        required("membershipSummaries") => list(membership_summary()())
      }

  """
  @type list_memberships_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configured_audience_model_association_summary() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "configuredAudienceModelArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "id" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type configured_audience_model_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_configured_table_analysis_rule_output() :: %{
        required("analysisRule") => configured_table_analysis_rule()
      }

  """
  @type update_configured_table_analysis_rule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_template_validation_status_detail() :: %{
        "reasons" => list(analysis_template_validation_status_reason()()),
        "status" => list(any()),
        "type" => list(any())
      }

  """
  @type analysis_template_validation_status_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_protected_queries_output() :: %{
        optional("nextToken") => String.t(),
        required("protectedQueries") => list(protected_query_summary()())
      }

  """
  @type list_protected_queries_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_protected_queries_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => String.t()
      }

  """
  @type list_protected_queries_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_configured_table_analysis_rule_input() :: %{
        required("analysisRulePolicy") => list()
      }

  """
  @type update_configured_table_analysis_rule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      differential_privacy_parameters() :: %{
        "sensitivityParameters" => list(differential_privacy_sensitivity_parameters()())
      }

  """
  @type differential_privacy_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_collaboration_privacy_budget_template_input() :: %{}

  """
  @type get_collaboration_privacy_budget_template_input() :: %{}

  @typedoc """

  ## Example:

      delete_configured_audience_model_association_input() :: %{}

  """
  @type delete_configured_audience_model_association_input() :: %{}

  @typedoc """

  ## Example:

      update_configured_table_output() :: %{
        required("configuredTable") => configured_table()
      }

  """
  @type update_configured_table_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configured_table_association() :: %{
        "arn" => String.t(),
        "configuredTableArn" => String.t(),
        "configuredTableId" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "id" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "name" => String.t(),
        "roleArn" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type configured_table_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_membership_output() :: %{
        required("membership") => membership()
      }

  """
  @type get_membership_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      differential_privacy_privacy_budget_aggregation() :: %{
        "maxCount" => [integer()],
        "remainingCount" => [integer()],
        "type" => list(any())
      }

  """
  @type differential_privacy_privacy_budget_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collaboration() :: %{
        "arn" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "creatorDisplayName" => String.t(),
        "dataEncryptionMetadata" => data_encryption_metadata(),
        "description" => String.t(),
        "id" => String.t(),
        "memberStatus" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "name" => String.t(),
        "queryLogStatus" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_rule_aggregation() :: %{
        "aggregateColumns" => list(aggregate_column()()),
        "allowedJoinOperators" => list(String.t()()),
        "dimensionColumns" => list(String.t()()),
        "joinColumns" => list(String.t()()),
        "joinRequired" => String.t(),
        "outputConstraints" => list(aggregation_constraint()()),
        "scalarFunctions" => list(String.t()())
      }

  """
  @type analysis_rule_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      differential_privacy_privacy_budget() :: %{
        "aggregations" => list(differential_privacy_privacy_budget_aggregation()()),
        "epsilon" => integer()
      }

  """
  @type differential_privacy_privacy_budget() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_privacy_budget_templates_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_privacy_budget_templates_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_analysis_template_output() :: %{
        required("analysisTemplate") => analysis_template()
      }

  """
  @type update_analysis_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_schema() :: %{
        "referencedTables" => list(String.t()())
      }

  """
  @type analysis_schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_collaboration_output() :: %{
        required("collaboration") => collaboration()
      }

  """
  @type update_collaboration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_privacy_budgets_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("privacyBudgetType") => list(any())
      }

  """
  @type list_collaboration_privacy_budgets_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schema_status_detail() :: %{
        "analysisRuleType" => list(any()),
        "configurations" => list(list(any())()),
        "reasons" => list(schema_status_reason()()),
        "status" => list(any())
      }

  """
  @type schema_status_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_configured_table_association_input() :: %{
        optional("description") => String.t(),
        optional("roleArn") => String.t()
      }

  """
  @type update_configured_table_association_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      differential_privacy_preview_aggregation() :: %{
        "maxCount" => [integer()],
        "type" => list(any())
      }

  """
  @type differential_privacy_preview_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_collaboration_input() :: %{
        optional("description") => String.t(),
        optional("name") => String.t()
      }

  """
  @type update_collaboration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      preview_privacy_impact_input() :: %{
        required("parameters") => list()
      }

  """
  @type preview_privacy_impact_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_memberships_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => String.t()
      }

  """
  @type list_memberships_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_schemas_output() :: %{
        optional("nextToken") => String.t(),
        required("schemaSummaries") => list(schema_summary()())
      }

  """
  @type list_schemas_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_analysis_template_input() :: %{}

  """
  @type delete_analysis_template_input() :: %{}

  @typedoc """

  ## Example:

      get_collaboration_privacy_budget_template_output() :: %{
        "collaborationPrivacyBudgetTemplate" => collaboration_privacy_budget_template()
      }

  """
  @type get_collaboration_privacy_budget_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_configured_table_analysis_rule_output() :: %{}

  """
  @type delete_configured_table_analysis_rule_output() :: %{}

  @typedoc """

  ## Example:

      update_privacy_budget_template_input() :: %{
        optional("parameters") => list(),
        required("privacyBudgetType") => list(any())
      }

  """
  @type update_privacy_budget_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_rule_custom() :: %{
        "allowedAnalyses" => list(String.t()()),
        "allowedAnalysisProviders" => list(String.t()()),
        "differentialPrivacy" => differential_privacy_configuration()
      }

  """
  @type analysis_rule_custom() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_member_output() :: %{}

  """
  @type delete_member_output() :: %{}

  @typedoc """

  ## Example:

      schema_analysis_rule_request() :: %{
        "name" => String.t(),
        "type" => list(any())
      }

  """
  @type schema_analysis_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_configured_table_association_output() :: %{}

  """
  @type delete_configured_table_association_output() :: %{}

  @typedoc """

  ## Example:

      create_analysis_template_output() :: %{
        required("analysisTemplate") => analysis_template()
      }

  """
  @type create_analysis_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_collaboration_input() :: %{}

  """
  @type get_collaboration_input() :: %{}

  @typedoc """

  ## Example:

      get_protected_query_input() :: %{}

  """
  @type get_protected_query_input() :: %{}

  @typedoc """

  ## Example:

      privacy_budget_template_summary() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "id" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "privacyBudgetType" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type privacy_budget_template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_collaboration_input() :: %{}

  """
  @type delete_collaboration_input() :: %{}

  @typedoc """

  ## Example:

      update_protected_query_input() :: %{
        required("targetStatus") => String.t()
      }

  """
  @type update_protected_query_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      membership_protected_query_result_configuration() :: %{
        "outputConfiguration" => list(),
        "roleArn" => String.t()
      }

  """
  @type membership_protected_query_result_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_member_input() :: %{}

  """
  @type delete_member_input() :: %{}

  @typedoc """

  ## Example:

      get_configured_audience_model_association_output() :: %{
        "configuredAudienceModelAssociation" => configured_audience_model_association()
      }

  """
  @type get_configured_audience_model_association_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_configured_audience_model_associations_output() :: %{
        "configuredAudienceModelAssociationSummaries" => list(configured_audience_model_association_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_configured_audience_model_associations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_privacy_budget_templates_output() :: %{
        "collaborationPrivacyBudgetTemplateSummaries" => list(collaboration_privacy_budget_template_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_collaboration_privacy_budget_templates_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()],
        "reason" => String.t(),
        "resourceId" => [String.t()],
        "resourceType" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configured_table_analysis_rule_input() :: %{
        required("analysisRulePolicy") => list(),
        required("analysisRuleType") => list(any())
      }

  """
  @type create_configured_table_analysis_rule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_query() :: %{
        "createTime" => [non_neg_integer()],
        "differentialPrivacy" => differential_privacy_parameters(),
        "error" => protected_query_error(),
        "id" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "result" => protected_query_result(),
        "resultConfiguration" => protected_query_result_configuration(),
        "sqlParameters" => protected_query_s_q_l_parameters(),
        "statistics" => protected_query_statistics(),
        "status" => String.t()
      }

  """
  @type protected_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_query_result_configuration() :: %{
        "outputConfiguration" => list()
      }

  """
  @type protected_query_result_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_configured_table_association_output() :: %{
        required("configuredTableAssociation") => configured_table_association()
      }

  """
  @type update_configured_table_association_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_schema_analysis_rule_output() :: %{
        "analysisRules" => list(analysis_rule()()),
        "errors" => list(batch_get_schema_analysis_rule_error()())
      }

  """
  @type batch_get_schema_analysis_rule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "quotaName" => [String.t()],
        "quotaValue" => [float()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collaboration_configured_audience_model_association() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "configuredAudienceModelArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_configured_audience_model_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configured_audience_model_association_input() :: %{
        optional("description") => String.t(),
        optional("tags") => map(),
        required("configuredAudienceModelArn") => String.t(),
        required("configuredAudienceModelAssociationName") => String.t(),
        required("manageResourcePolicies") => [boolean()]
      }

  """
  @type create_configured_audience_model_association_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      differential_privacy_template_parameters_input() :: %{
        "epsilon" => integer(),
        "usersNoisePerQuery" => integer()
      }

  """
  @type differential_privacy_template_parameters_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      membership_query_compute_payment_config() :: %{
        "isResponsible" => [boolean()]
      }

  """
  @type membership_query_compute_payment_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_query_result() :: %{
        "output" => list()
      }

  """
  @type protected_query_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schema_summary() :: %{
        "analysisMethod" => String.t(),
        "analysisRuleTypes" => list(list(any())()),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "name" => String.t(),
        "type" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type schema_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_configured_table_analysis_rule_input() :: %{}

  """
  @type delete_configured_table_analysis_rule_input() :: %{}

  @typedoc """

  ## Example:

      privacy_budget_template() :: %{
        "arn" => String.t(),
        "autoRefresh" => list(any()),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "id" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "parameters" => list(),
        "privacyBudgetType" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type privacy_budget_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      privacy_budget_summary() :: %{
        "budget" => list(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "id" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "privacyBudgetTemplateArn" => String.t(),
        "privacyBudgetTemplateId" => String.t(),
        "type" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type privacy_budget_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_schema_output() :: %{
        required("schema") => schema()
      }

  """
  @type get_schema_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_collaboration_configured_audience_model_association_output() :: %{
        "collaborationConfiguredAudienceModelAssociation" => collaboration_configured_audience_model_association()
      }

  """
  @type get_collaboration_configured_audience_model_association_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_schema_output() :: %{
        required("errors") => list(batch_get_schema_error()()),
        required("schemas") => list(schema()())
      }

  """
  @type batch_get_schema_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collaboration_summary() :: %{
        "arn" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "creatorDisplayName" => String.t(),
        "id" => String.t(),
        "memberStatus" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schema() :: %{
        "analysisMethod" => String.t(),
        "analysisRuleTypes" => list(list(any())()),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "columns" => list(column()()),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "description" => String.t(),
        "name" => String.t(),
        "partitionKeys" => list(column()()),
        "schemaStatusDetails" => list(schema_status_detail()()),
        "type" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      differential_privacy_column() :: %{
        "name" => [String.t()]
      }

  """
  @type differential_privacy_column() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_privacy_budget_templates_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_collaboration_privacy_budget_templates_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_privacy_budgets_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("privacyBudgetType") => list(any())
      }

  """
  @type list_privacy_budgets_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_configured_audience_model_associations_output() :: %{
        "collaborationConfiguredAudienceModelAssociationSummaries" => list(collaboration_configured_audience_model_association_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_collaboration_configured_audience_model_associations_output() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:

      delete_configured_table_association_input() :: %{}

  """
  @type delete_configured_table_association_input() :: %{}

  @typedoc """

  ## Example:

      list_privacy_budget_templates_output() :: %{
        "nextToken" => String.t(),
        "privacyBudgetTemplateSummaries" => list(privacy_budget_template_summary()())
      }

  """
  @type list_privacy_budget_templates_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_rule_list() :: %{
        "allowedJoinOperators" => list(String.t()()),
        "joinColumns" => list(String.t()()),
        "listColumns" => list(String.t()())
      }

  """
  @type analysis_rule_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      membership_summary() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationCreatorAccountId" => String.t(),
        "collaborationCreatorDisplayName" => String.t(),
        "collaborationId" => String.t(),
        "collaborationName" => String.t(),
        "createTime" => [non_neg_integer()],
        "id" => String.t(),
        "memberAbilities" => list(String.t()()),
        "paymentConfiguration" => membership_payment_configuration(),
        "status" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type membership_summary() :: %{String.t() => any()}

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

      get_configured_table_analysis_rule_input() :: %{}

  """
  @type get_configured_table_analysis_rule_input() :: %{}

  @typedoc """

  ## Example:

      list_collaboration_analysis_templates_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_collaboration_analysis_templates_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_query_s3_output() :: %{
        "location" => [String.t()]
      }

  """
  @type protected_query_s3_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collaboration_privacy_budget_summary() :: %{
        "budget" => list(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "id" => String.t(),
        "privacyBudgetTemplateArn" => String.t(),
        "privacyBudgetTemplateId" => String.t(),
        "type" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_privacy_budget_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_configured_audience_model_association_input() :: %{
        optional("description") => String.t(),
        optional("name") => String.t()
      }

  """
  @type update_configured_audience_model_association_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_configured_audience_model_associations_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_collaboration_configured_audience_model_associations_input() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_privacy_budget_template_input() :: %{
        optional("tags") => map(),
        required("autoRefresh") => list(any()),
        required("parameters") => list(),
        required("privacyBudgetType") => list(any())
      }

  """
  @type create_privacy_budget_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_privacy_budget_template_output() :: %{
        "privacyBudgetTemplate" => privacy_budget_template()
      }

  """
  @type get_privacy_budget_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_protected_query_output() :: %{
        required("protectedQuery") => protected_query()
      }

  """
  @type update_protected_query_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configured_table_association_output() :: %{
        required("configuredTableAssociation") => configured_table_association()
      }

  """
  @type create_configured_table_association_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      differential_privacy_privacy_impact() :: %{
        "aggregations" => list(differential_privacy_preview_aggregation()())
      }

  """
  @type differential_privacy_privacy_impact() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_parameter() :: %{
        "defaultValue" => String.t(),
        "name" => String.t(),
        "type" => list(any())
      }

  """
  @type analysis_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_collaboration_input() :: %{
        optional("creatorPaymentConfiguration") => payment_configuration(),
        optional("dataEncryptionMetadata") => data_encryption_metadata(),
        optional("tags") => map(),
        required("creatorDisplayName") => String.t(),
        required("creatorMemberAbilities") => list(String.t()()),
        required("description") => String.t(),
        required("members") => list(member_specification()()),
        required("name") => String.t(),
        required("queryLogStatus") => String.t()
      }

  """
  @type create_collaboration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configured_table_analysis_rule() :: %{
        "configuredTableArn" => String.t(),
        "configuredTableId" => String.t(),
        "createTime" => [non_neg_integer()],
        "policy" => list(),
        "type" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type configured_table_analysis_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_compute_payment_config() :: %{
        "isResponsible" => [boolean()]
      }

  """
  @type query_compute_payment_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_members_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_members_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      differential_privacy_template_update_parameters() :: %{
        "epsilon" => integer(),
        "usersNoisePerQuery" => integer()
      }

  """
  @type differential_privacy_template_update_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_output() :: %{}

  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:

      aggregation_constraint() :: %{
        "columnName" => String.t(),
        "minimum" => [integer()],
        "type" => String.t()
      }

  """
  @type aggregation_constraint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_privacy_budgets_output() :: %{
        "collaborationPrivacyBudgetSummaries" => list(collaboration_privacy_budget_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_collaboration_privacy_budgets_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collaboration_privacy_budget_template() :: %{
        "arn" => String.t(),
        "autoRefresh" => list(any()),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "id" => String.t(),
        "parameters" => list(),
        "privacyBudgetType" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_privacy_budget_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_schema_analysis_rule_input() :: %{}

  """
  @type get_schema_analysis_rule_input() :: %{}

  @typedoc """

  ## Example:

      configured_audience_model_association() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "configuredAudienceModelArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "id" => String.t(),
        "manageResourcePolicies" => [boolean()],
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type configured_audience_model_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_privacy_budget_template_output() :: %{
        "privacyBudgetTemplate" => privacy_budget_template()
      }

  """
  @type update_privacy_budget_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schema_status_reason() :: %{
        "code" => list(any()),
        "message" => [String.t()]
      }

  """
  @type schema_status_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_query_single_member_output() :: %{
        "accountId" => String.t()
      }

  """
  @type protected_query_single_member_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()],
        "reason" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      differential_privacy_configuration() :: %{
        "columns" => list(differential_privacy_column()())
      }

  """
  @type differential_privacy_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_schema_analysis_rule_input() :: %{
        required("schemaAnalysisRuleRequests") => list(schema_analysis_rule_request()())
      }

  """
  @type batch_get_schema_analysis_rule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_protected_query_output() :: %{
        required("protectedQuery") => protected_query()
      }

  """
  @type start_protected_query_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configured_table_analysis_rule_output() :: %{
        required("analysisRule") => configured_table_analysis_rule()
      }

  """
  @type create_configured_table_analysis_rule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_template() :: %{
        "analysisParameters" => list(analysis_parameter()()),
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "format" => String.t(),
        "id" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "name" => String.t(),
        "schema" => analysis_schema(),
        "source" => list(),
        "updateTime" => [non_neg_integer()],
        "validations" => list(analysis_template_validation_status_detail()())
      }

  """
  @type analysis_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_analysis_template_output() :: %{
        required("analysisTemplate") => analysis_template()
      }

  """
  @type get_analysis_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_schema_analysis_rule_error() :: %{
        "code" => [String.t()],
        "message" => [String.t()],
        "name" => String.t(),
        "type" => list(any())
      }

  """
  @type batch_get_schema_analysis_rule_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_configured_table_input() :: %{
        optional("description") => String.t(),
        optional("name") => String.t()
      }

  """
  @type update_configured_table_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_schema_input() :: %{}

  """
  @type get_schema_input() :: %{}

  @typedoc """

  ## Example:

      batch_get_collaboration_analysis_template_error() :: %{
        "arn" => String.t(),
        "code" => [String.t()],
        "message" => [String.t()]
      }

  """
  @type batch_get_collaboration_analysis_template_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaborations_output() :: %{
        optional("nextToken") => String.t(),
        required("collaborationList") => list(collaboration_summary()())
      }

  """
  @type list_collaborations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configured_table_association_summary() :: %{
        "arn" => String.t(),
        "configuredTableId" => String.t(),
        "createTime" => [non_neg_integer()],
        "id" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type configured_table_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collaboration_configured_audience_model_association_summary() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_configured_audience_model_association_summary() :: %{String.t() => any()}

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

      list_tags_for_resource_input() :: %{}

  """
  @type list_tags_for_resource_input() :: %{}

  @typedoc """

  ## Example:

      differential_privacy_template_parameters_output() :: %{
        "epsilon" => integer(),
        "usersNoisePerQuery" => integer()
      }

  """
  @type differential_privacy_template_parameters_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_output() :: %{}

  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:

      delete_collaboration_output() :: %{}

  """
  @type delete_collaboration_output() :: %{}

  @typedoc """

  ## Example:

      get_schema_analysis_rule_output() :: %{
        required("analysisRule") => analysis_rule()
      }

  """
  @type get_schema_analysis_rule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collaboration_analysis_template_summary() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_analysis_template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_query_s_q_l_parameters() :: %{
        "analysisTemplateArn" => String.t(),
        "parameters" => map(),
        "queryString" => [String.t()]
      }

  """
  @type protected_query_s_q_l_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_collaboration_output() :: %{
        required("collaboration") => collaboration()
      }

  """
  @type get_collaboration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_query_statistics() :: %{
        "totalDurationInMillis" => [float()]
      }

  """
  @type protected_query_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_template_summary() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "id" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type analysis_template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_configured_audience_model_association_output() :: %{
        "configuredAudienceModelAssociation" => configured_audience_model_association()
      }

  """
  @type update_configured_audience_model_association_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_membership_output() :: %{
        required("membership") => membership()
      }

  """
  @type update_membership_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_membership_input() :: %{
        optional("defaultResultConfiguration") => membership_protected_query_result_configuration(),
        optional("queryLogStatus") => String.t()
      }

  """
  @type update_membership_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member_summary() :: %{
        "abilities" => list(String.t()()),
        "accountId" => String.t(),
        "createTime" => [non_neg_integer()],
        "displayName" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "paymentConfiguration" => payment_configuration(),
        "status" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type member_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_collaboration_analysis_template_output() :: %{
        required("collaborationAnalysisTemplates") => list(collaboration_analysis_template()()),
        required("errors") => list(batch_get_collaboration_analysis_template_error()())
      }

  """
  @type batch_get_collaboration_analysis_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_schema_input() :: %{
        required("names") => list(String.t()())
      }

  """
  @type batch_get_schema_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      glue_table_reference() :: %{
        "databaseName" => String.t(),
        "tableName" => String.t()
      }

  """
  @type glue_table_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_query_error() :: %{
        "code" => [String.t()],
        "message" => [String.t()]
      }

  """
  @type protected_query_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_analysis_template_output() :: %{}

  """
  @type delete_analysis_template_output() :: %{}

  @typedoc """

  ## Example:

      get_configured_table_association_output() :: %{
        required("configuredTableAssociation") => configured_table_association()
      }

  """
  @type get_configured_table_association_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_membership_output() :: %{
        required("membership") => membership()
      }

  """
  @type create_membership_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      membership_payment_configuration() :: %{
        "queryCompute" => membership_query_compute_payment_config()
      }

  """
  @type membership_payment_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_membership_input() :: %{}

  """
  @type get_membership_input() :: %{}

  @typedoc """

  ## Example:

      get_configured_audience_model_association_input() :: %{}

  """
  @type get_configured_audience_model_association_input() :: %{}

  @typedoc """

  ## Example:

      create_configured_audience_model_association_output() :: %{
        "configuredAudienceModelAssociation" => configured_audience_model_association()
      }

  """
  @type create_configured_audience_model_association_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_protected_query_input() :: %{
        optional("resultConfiguration") => protected_query_result_configuration(),
        required("sqlParameters") => protected_query_s_q_l_parameters(),
        required("type") => String.t()
      }

  """
  @type start_protected_query_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collaboration_privacy_budget_template_summary() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "id" => String.t(),
        "privacyBudgetType" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_privacy_budget_template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      payment_configuration() :: %{
        "queryCompute" => query_compute_payment_config()
      }

  """
  @type payment_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configured_table() :: %{
        "allowedColumns" => list(String.t()()),
        "analysisMethod" => String.t(),
        "analysisRuleTypes" => list(list(any())()),
        "arn" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "tableReference" => list(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type configured_table() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_collaboration_analysis_template_output() :: %{
        required("collaborationAnalysisTemplate") => collaboration_analysis_template()
      }

  """
  @type get_collaboration_analysis_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_template_validation_status_reason() :: %{
        "message" => [String.t()]
      }

  """
  @type analysis_template_validation_status_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configured_table_input() :: %{}

  """
  @type get_configured_table_input() :: %{}

  @typedoc """

  ## Example:

      aggregate_column() :: %{
        "columnNames" => list(String.t()()),
        "function" => String.t()
      }

  """
  @type aggregate_column() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_privacy_budget_template_input() :: %{}

  """
  @type get_privacy_budget_template_input() :: %{}

  @typedoc """

  ## Example:

      create_analysis_template_input() :: %{
        optional("analysisParameters") => list(analysis_parameter()()),
        optional("description") => String.t(),
        optional("tags") => map(),
        required("format") => String.t(),
        required("name") => String.t(),
        required("source") => list()
      }

  """
  @type create_analysis_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_configured_tables_output() :: %{
        optional("nextToken") => String.t(),
        required("configuredTableSummaries") => list(configured_table_summary()())
      }

  """
  @type list_configured_tables_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_collaboration_configured_audience_model_association_input() :: %{}

  """
  @type get_collaboration_configured_audience_model_association_input() :: %{}

  @typedoc """

  ## Example:

      list_collaborations_input() :: %{
        optional("maxResults") => integer(),
        optional("memberStatus") => String.t(),
        optional("nextToken") => String.t()
      }

  """
  @type list_collaborations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_query_s3_output_configuration() :: %{
        "bucket" => [String.t()],
        "keyPrefix" => String.t(),
        "resultFormat" => String.t()
      }

  """
  @type protected_query_s3_output_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_encryption_metadata() :: %{
        "allowCleartext" => [boolean()],
        "allowDuplicates" => [boolean()],
        "allowJoinsOnColumnsWithDifferentNames" => [boolean()],
        "preserveNulls" => [boolean()]
      }

  """
  @type data_encryption_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_schema_error() :: %{
        "code" => [String.t()],
        "message" => [String.t()],
        "name" => String.t()
      }

  """
  @type batch_get_schema_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      preview_privacy_impact_output() :: %{
        "privacyImpact" => list()
      }

  """
  @type preview_privacy_impact_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member_specification() :: %{
        "accountId" => String.t(),
        "displayName" => String.t(),
        "memberAbilities" => list(String.t()()),
        "paymentConfiguration" => payment_configuration()
      }

  """
  @type member_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_membership_input() :: %{}

  """
  @type delete_membership_input() :: %{}

  @typedoc """

  ## Example:

      membership() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationCreatorAccountId" => String.t(),
        "collaborationCreatorDisplayName" => String.t(),
        "collaborationId" => String.t(),
        "collaborationName" => String.t(),
        "createTime" => [non_neg_integer()],
        "defaultResultConfiguration" => membership_protected_query_result_configuration(),
        "id" => String.t(),
        "memberAbilities" => list(String.t()()),
        "paymentConfiguration" => membership_payment_configuration(),
        "queryLogStatus" => String.t(),
        "status" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type membership() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_configured_table_output() :: %{}

  """
  @type delete_configured_table_output() :: %{}

  @typedoc """

  ## Example:

      create_configured_table_association_input() :: %{
        optional("description") => String.t(),
        optional("tags") => map(),
        required("configuredTableIdentifier") => String.t(),
        required("name") => String.t(),
        required("roleArn") => String.t()
      }

  """
  @type create_configured_table_association_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      differential_privacy_sensitivity_parameters() :: %{
        "aggregationExpression" => String.t(),
        "aggregationType" => list(any()),
        "maxColumnValue" => [float()],
        "minColumnValue" => [float()],
        "userContributionLimit" => [integer()]
      }

  """
  @type differential_privacy_sensitivity_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configured_table_output() :: %{
        required("configuredTable") => configured_table()
      }

  """
  @type get_configured_table_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_privacy_budgets_output() :: %{
        "nextToken" => String.t(),
        "privacyBudgetSummaries" => list(privacy_budget_summary()())
      }

  """
  @type list_privacy_budgets_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_privacy_budget_template_output() :: %{}

  """
  @type delete_privacy_budget_template_output() :: %{}

  @type batch_get_collaboration_analysis_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_get_schema_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_get_schema_analysis_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_analysis_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_collaboration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type create_configured_audience_model_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_configured_table_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_configured_table_analysis_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_configured_table_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_membership_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_privacy_budget_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_analysis_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_collaboration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type delete_configured_audience_model_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_configured_table_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_configured_table_analysis_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_configured_table_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_member_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_membership_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_privacy_budget_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_analysis_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_collaboration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_collaboration_analysis_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_collaboration_configured_audience_model_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_collaboration_privacy_budget_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_configured_audience_model_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_configured_table_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_configured_table_analysis_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_configured_table_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_membership_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_privacy_budget_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_protected_query_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_schema_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_schema_analysis_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_analysis_templates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_collaboration_analysis_templates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_collaboration_configured_audience_model_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_collaboration_privacy_budget_templates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_collaboration_privacy_budgets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_collaborations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_configured_audience_model_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_configured_table_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_configured_tables_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_members_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_memberships_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_privacy_budget_templates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_privacy_budgets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_protected_queries_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_schemas_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type preview_privacy_impact_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_protected_query_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type update_analysis_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_collaboration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type update_configured_audience_model_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_configured_table_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_configured_table_analysis_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_configured_table_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_membership_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_privacy_budget_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_protected_query_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2022-02-17",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cleanrooms",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "CleanRooms",
      signature_version: "v4",
      signing_name: "cleanrooms",
      target_prefix: nil
    }
  end

  @doc """
  Retrieves multiple analysis templates within a collaboration by their Amazon
  Resource Names (ARNs).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20BatchGetCollaborationAnalysisTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:collaboration_identifier` (`t:string`) A unique identifier for the
    collaboration that the analysis templates belong to. Currently accepts
    collaboration ID.

  ## Optional parameters:
  """
  @spec batch_get_collaboration_analysis_template(
          AWS.Client.t(),
          String.t(),
          batch_get_collaboration_analysis_template_input(),
          Keyword.t()
        ) ::
          {:ok, batch_get_collaboration_analysis_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_collaboration_analysis_template_errors()}
  def batch_get_collaboration_analysis_template(
        %Client{} = client,
        collaboration_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/batch-analysistemplates"

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
  Retrieves multiple schemas by their identifiers.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20BatchGetSchema&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:collaboration_identifier` (`t:string`) A unique identifier for the
    collaboration that the schemas belong to. Currently accepts collaboration
    ID.

  ## Optional parameters:
  """
  @spec batch_get_schema(AWS.Client.t(), String.t(), batch_get_schema_input(), Keyword.t()) ::
          {:ok, batch_get_schema_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_schema_errors()}
  def batch_get_schema(%Client{} = client, collaboration_identifier, input, options \\ []) do
    url_path = "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/batch-schema"
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
  Retrieves multiple analysis rule schemas.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20BatchGetSchemaAnalysisRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:collaboration_identifier` (`t:string`) The unique identifier of the
    collaboration that contains the schema analysis rule.

  ## Optional parameters:
  """
  @spec batch_get_schema_analysis_rule(
          AWS.Client.t(),
          String.t(),
          batch_get_schema_analysis_rule_input(),
          Keyword.t()
        ) ::
          {:ok, batch_get_schema_analysis_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_schema_analysis_rule_errors()}
  def batch_get_schema_analysis_rule(
        %Client{} = client,
        collaboration_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/batch-schema-analysis-rule"

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
  Creates a new analysis template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20CreateAnalysisTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:membership_identifier` (`t:string`) The identifier for a membership
    resource.

  ## Optional parameters:
  """
  @spec create_analysis_template(
          AWS.Client.t(),
          String.t(),
          create_analysis_template_input(),
          Keyword.t()
        ) ::
          {:ok, create_analysis_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_analysis_template_errors()}
  def create_analysis_template(%Client{} = client, membership_identifier, input, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/analysistemplates"
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
  Creates a new collaboration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20CreateCollaboration&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_collaboration(AWS.Client.t(), create_collaboration_input(), Keyword.t()) ::
          {:ok, create_collaboration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_collaboration_errors()}
  def create_collaboration(%Client{} = client, input, options \\ []) do
    url_path = "/collaborations"
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
  Provides the details necessary to create a configured audience model
  association.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20CreateConfiguredAudienceModelAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:membership_identifier` (`t:string`) A unique identifier for one of your
    memberships for a collaboration. The configured audience model is associated
    to the collaboration that this membership belongs to. Accepts a membership
    ID.

  ## Optional parameters:
  """
  @spec create_configured_audience_model_association(
          AWS.Client.t(),
          String.t(),
          create_configured_audience_model_association_input(),
          Keyword.t()
        ) ::
          {:ok, create_configured_audience_model_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_configured_audience_model_association_errors()}
  def create_configured_audience_model_association(
        %Client{} = client,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredaudiencemodelassociations"

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
  Creates a new configured table resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20CreateConfiguredTable&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_configured_table(AWS.Client.t(), create_configured_table_input(), Keyword.t()) ::
          {:ok, create_configured_table_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_configured_table_errors()}
  def create_configured_table(%Client{} = client, input, options \\ []) do
    url_path = "/configuredTables"
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
  Creates a new analysis rule for a configured table. Currently, only one analysis
  rule can be created for a given configured table.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20CreateConfiguredTableAnalysisRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configured_table_identifier` (`t:string`) The identifier for the configured
    table to create the analysis rule for. Currently accepts the configured
    table ID.

  ## Optional parameters:
  """
  @spec create_configured_table_analysis_rule(
          AWS.Client.t(),
          String.t(),
          create_configured_table_analysis_rule_input(),
          Keyword.t()
        ) ::
          {:ok, create_configured_table_analysis_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_configured_table_analysis_rule_errors()}
  def create_configured_table_analysis_rule(
        %Client{} = client,
        configured_table_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/configuredTables/#{AWS.Util.encode_uri(configured_table_identifier)}/analysisRule"

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
  Creates a configured table association. A configured table association links a
  configured table with a collaboration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20CreateConfiguredTableAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:membership_identifier` (`t:string`) A unique identifier for one of your
    memberships for a collaboration. The configured table is associated to the
    collaboration that this membership belongs to. Currently accepts a
    membership ID.

  ## Optional parameters:
  """
  @spec create_configured_table_association(
          AWS.Client.t(),
          String.t(),
          create_configured_table_association_input(),
          Keyword.t()
        ) ::
          {:ok, create_configured_table_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_configured_table_association_errors()}
  def create_configured_table_association(
        %Client{} = client,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredTableAssociations"

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
  Creates a membership for a specific collaboration identifier and joins the
  collaboration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20CreateMembership&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """
  @spec create_membership(AWS.Client.t(), create_membership_input(), Keyword.t()) ::
          {:ok, create_membership_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_membership_errors()}
  def create_membership(%Client{} = client, input, options \\ []) do
    url_path = "/memberships"
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
  Creates a privacy budget template for a specified membership. Each membership
  can have only one privacy budget template, but it can be deleted and
  recreated. If you need to change the privacy budget template for a membership,
  use the `UpdatePrivacyBudgetTemplate` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20CreatePrivacyBudgetTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:membership_identifier` (`t:string`) A unique identifier for one of your
    memberships for a collaboration. The privacy budget template is created in
    the collaboration that this membership belongs to. Accepts a membership ID.

  ## Optional parameters:
  """
  @spec create_privacy_budget_template(
          AWS.Client.t(),
          String.t(),
          create_privacy_budget_template_input(),
          Keyword.t()
        ) ::
          {:ok, create_privacy_budget_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_privacy_budget_template_errors()}
  def create_privacy_budget_template(
        %Client{} = client,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/privacybudgettemplates"
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
  Deletes an analysis template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20DeleteAnalysisTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:analysis_template_identifier` (`t:string`) The identifier for the analysis
    template resource.
  * `:membership_identifier` (`t:string`) The identifier for a membership
    resource.

  ## Optional parameters:
  """
  @spec delete_analysis_template(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_analysis_template_input(),
          Keyword.t()
        ) ::
          {:ok, delete_analysis_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_analysis_template_errors()}
  def delete_analysis_template(
        %Client{} = client,
        analysis_template_identifier,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/analysistemplates/#{AWS.Util.encode_uri(analysis_template_identifier)}"

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
  Deletes a collaboration. It can only be called by the collaboration owner.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20DeleteCollaboration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:collaboration_identifier` (`t:string`) The identifier for the collaboration.

  ## Optional parameters:
  """
  @spec delete_collaboration(
          AWS.Client.t(),
          String.t(),
          delete_collaboration_input(),
          Keyword.t()
        ) ::
          {:ok, delete_collaboration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_collaboration_errors()}
  def delete_collaboration(%Client{} = client, collaboration_identifier, input, options \\ []) do
    url_path = "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}"
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
  Provides the information necessary to delete a configured audience model
  association.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20DeleteConfiguredAudienceModelAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configured_audience_model_association_identifier` (`t:string`) A unique
    identifier of the configured audience model association that you want to
    delete.
  * `:membership_identifier` (`t:string`) A unique identifier of the membership
    that contains the audience model association that you want to delete.

  ## Optional parameters:
  """
  @spec delete_configured_audience_model_association(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_configured_audience_model_association_input(),
          Keyword.t()
        ) ::
          {:ok, delete_configured_audience_model_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_configured_audience_model_association_errors()}
  def delete_configured_audience_model_association(
        %Client{} = client,
        configured_audience_model_association_identifier,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredaudiencemodelassociations/#{AWS.Util.encode_uri(configured_audience_model_association_identifier)}"

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
  Deletes a configured table.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20DeleteConfiguredTable&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configured_table_identifier` (`t:string`) The unique ID for the configured
    table to delete.

  ## Optional parameters:
  """
  @spec delete_configured_table(
          AWS.Client.t(),
          String.t(),
          delete_configured_table_input(),
          Keyword.t()
        ) ::
          {:ok, delete_configured_table_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_configured_table_errors()}
  def delete_configured_table(
        %Client{} = client,
        configured_table_identifier,
        input,
        options \\ []
      ) do
    url_path = "/configuredTables/#{AWS.Util.encode_uri(configured_table_identifier)}"
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
  Deletes a configured table analysis rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20DeleteConfiguredTableAnalysisRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:analysis_rule_type` (`t:enum["AGGREGATION|CUSTOM|LIST"]`) The analysis rule
    type to be deleted. Configured table analysis rules are uniquely identified
    by their configured table identifier and analysis rule type.
  * `:configured_table_identifier` (`t:string`) The unique identifier for the
    configured table that the analysis rule applies to. Currently accepts the
    configured table ID.

  ## Optional parameters:
  """
  @spec delete_configured_table_analysis_rule(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_configured_table_analysis_rule_input(),
          Keyword.t()
        ) ::
          {:ok, delete_configured_table_analysis_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_configured_table_analysis_rule_errors()}
  def delete_configured_table_analysis_rule(
        %Client{} = client,
        analysis_rule_type,
        configured_table_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/configuredTables/#{AWS.Util.encode_uri(configured_table_identifier)}/analysisRule/#{AWS.Util.encode_uri(analysis_rule_type)}"

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
  Deletes a configured table association.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20DeleteConfiguredTableAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configured_table_association_identifier` (`t:string`) The unique ID for the
    configured table association to be deleted. Currently accepts the configured
    table ID.
  * `:membership_identifier` (`t:string`) A unique identifier for the membership
    that the configured table association belongs to. Currently accepts the
    membership ID.

  ## Optional parameters:
  """
  @spec delete_configured_table_association(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_configured_table_association_input(),
          Keyword.t()
        ) ::
          {:ok, delete_configured_table_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_configured_table_association_errors()}
  def delete_configured_table_association(
        %Client{} = client,
        configured_table_association_identifier,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredTableAssociations/#{AWS.Util.encode_uri(configured_table_association_identifier)}"

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
  Removes the specified member from a collaboration. The removed member is placed
  in the Removed status and can't interact with the collaboration. The removed
  member's data is inaccessible to active members of the collaboration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20DeleteMember&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:account_id` (`t:string`) The account ID of the member to remove.
  * `:collaboration_identifier` (`t:string`) The unique identifier for the
    associated collaboration.

  ## Optional parameters:
  """
  @spec delete_member(AWS.Client.t(), String.t(), String.t(), delete_member_input(), Keyword.t()) ::
          {:ok, delete_member_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_member_errors()}
  def delete_member(
        %Client{} = client,
        account_id,
        collaboration_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/member/#{AWS.Util.encode_uri(account_id)}"

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
  Deletes a specified membership. All resources under a membership must be
  deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20DeleteMembership&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:membership_identifier` (`t:string`) The identifier for a membership
    resource.

  ## Optional parameters:
  """
  @spec delete_membership(AWS.Client.t(), String.t(), delete_membership_input(), Keyword.t()) ::
          {:ok, delete_membership_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_membership_errors()}
  def delete_membership(%Client{} = client, membership_identifier, input, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}"
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
  Deletes a privacy budget template for a specified membership.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20DeletePrivacyBudgetTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:membership_identifier` (`t:string`) A unique identifier for one of your
    memberships for a collaboration. The privacy budget template is deleted from
    the collaboration that this membership belongs to. Accepts a membership ID.
  * `:privacy_budget_template_identifier` (`t:string`) A unique identifier for
    your privacy budget template.

  ## Optional parameters:
  """
  @spec delete_privacy_budget_template(
          AWS.Client.t(),
          String.t(),
          String.t(),
          delete_privacy_budget_template_input(),
          Keyword.t()
        ) ::
          {:ok, delete_privacy_budget_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_privacy_budget_template_errors()}
  def delete_privacy_budget_template(
        %Client{} = client,
        membership_identifier,
        privacy_budget_template_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/privacybudgettemplates/#{AWS.Util.encode_uri(privacy_budget_template_identifier)}"

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
  Retrieves an analysis template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20GetAnalysisTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:analysis_template_identifier` (`t:string`) The identifier for the analysis
    template resource.
  * `:membership_identifier` (`t:string`) The identifier for a membership
    resource.

  ## Optional parameters:
  """
  @spec get_analysis_template(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_analysis_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_analysis_template_errors()}
  def get_analysis_template(
        %Client{} = client,
        analysis_template_identifier,
        membership_identifier,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/analysistemplates/#{AWS.Util.encode_uri(analysis_template_identifier)}"

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
  Returns metadata about a collaboration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20GetCollaboration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:collaboration_identifier` (`t:string`) The identifier for the collaboration.

  ## Optional parameters:
  """
  @spec get_collaboration(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_collaboration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_collaboration_errors()}
  def get_collaboration(%Client{} = client, collaboration_identifier, options \\ []) do
    url_path = "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}"

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
  Retrieves an analysis template within a collaboration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20GetCollaborationAnalysisTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:analysis_template_arn` (`t:string`) The Amazon Resource Name (ARN)
    associated with the analysis template within a collaboration.
  * `:collaboration_identifier` (`t:string`) A unique identifier for the
    collaboration that the analysis templates belong to. Currently accepts
    collaboration ID.

  ## Optional parameters:
  """
  @spec get_collaboration_analysis_template(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_collaboration_analysis_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_collaboration_analysis_template_errors()}
  def get_collaboration_analysis_template(
        %Client{} = client,
        analysis_template_arn,
        collaboration_identifier,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/analysistemplates/#{AWS.Util.encode_uri(analysis_template_arn)}"

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
  Retrieves a configured audience model association within a collaboration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20GetCollaborationConfiguredAudienceModelAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:collaboration_identifier` (`t:string`) A unique identifier for the
    collaboration that the configured audience model association belongs to.
    Accepts a collaboration ID.
  * `:configured_audience_model_association_identifier` (`t:string`) A unique
    identifier for the configured audience model association that you want to
    retrieve.

  ## Optional parameters:
  """
  @spec get_collaboration_configured_audience_model_association(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_collaboration_configured_audience_model_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_collaboration_configured_audience_model_association_errors()}
  def get_collaboration_configured_audience_model_association(
        %Client{} = client,
        collaboration_identifier,
        configured_audience_model_association_identifier,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/configuredaudiencemodelassociations/#{AWS.Util.encode_uri(configured_audience_model_association_identifier)}"

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
  Returns details about a specified privacy budget template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20GetCollaborationPrivacyBudgetTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:collaboration_identifier` (`t:string`) A unique identifier for one of your
    collaborations.
  * `:privacy_budget_template_identifier` (`t:string`) A unique identifier for one
    of your privacy budget templates.

  ## Optional parameters:
  """
  @spec get_collaboration_privacy_budget_template(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_collaboration_privacy_budget_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_collaboration_privacy_budget_template_errors()}
  def get_collaboration_privacy_budget_template(
        %Client{} = client,
        collaboration_identifier,
        privacy_budget_template_identifier,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/privacybudgettemplates/#{AWS.Util.encode_uri(privacy_budget_template_identifier)}"

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
  Returns information about a configured audience model association.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20GetConfiguredAudienceModelAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configured_audience_model_association_identifier` (`t:string`) A unique
    identifier for the configured audience model association that you want to
    retrieve.
  * `:membership_identifier` (`t:string`) A unique identifier for the membership
    that contains the configured audience model association that you want to
    retrieve.

  ## Optional parameters:
  """
  @spec get_configured_audience_model_association(
          AWS.Client.t(),
          String.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, get_configured_audience_model_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_configured_audience_model_association_errors()}
  def get_configured_audience_model_association(
        %Client{} = client,
        configured_audience_model_association_identifier,
        membership_identifier,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredaudiencemodelassociations/#{AWS.Util.encode_uri(configured_audience_model_association_identifier)}"

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
  Retrieves a configured table.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20GetConfiguredTable&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configured_table_identifier` (`t:string`) The unique ID for the configured
    table to retrieve.

  ## Optional parameters:
  """
  @spec get_configured_table(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_configured_table_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_configured_table_errors()}
  def get_configured_table(%Client{} = client, configured_table_identifier, options \\ []) do
    url_path = "/configuredTables/#{AWS.Util.encode_uri(configured_table_identifier)}"

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
  Retrieves a configured table analysis rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20GetConfiguredTableAnalysisRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:analysis_rule_type` (`t:enum["AGGREGATION|CUSTOM|LIST"]`) The analysis rule
    to be retrieved. Configured table analysis rules are uniquely identified by
    their configured table identifier and analysis rule type.
  * `:configured_table_identifier` (`t:string`) The unique identifier for the
    configured table to retrieve. Currently accepts the configured table ID.

  ## Optional parameters:
  """
  @spec get_configured_table_analysis_rule(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_configured_table_analysis_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_configured_table_analysis_rule_errors()}
  def get_configured_table_analysis_rule(
        %Client{} = client,
        analysis_rule_type,
        configured_table_identifier,
        options \\ []
      ) do
    url_path =
      "/configuredTables/#{AWS.Util.encode_uri(configured_table_identifier)}/analysisRule/#{AWS.Util.encode_uri(analysis_rule_type)}"

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
  Retrieves a configured table association.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20GetConfiguredTableAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configured_table_association_identifier` (`t:string`) The unique ID for the
    configured table association to retrieve. Currently accepts the configured
    table ID.
  * `:membership_identifier` (`t:string`) A unique identifier for the membership
    that the configured table association belongs to. Currently accepts the
    membership ID.

  ## Optional parameters:
  """
  @spec get_configured_table_association(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_configured_table_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_configured_table_association_errors()}
  def get_configured_table_association(
        %Client{} = client,
        configured_table_association_identifier,
        membership_identifier,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredTableAssociations/#{AWS.Util.encode_uri(configured_table_association_identifier)}"

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
  Retrieves a specified membership for an identifier.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20GetMembership&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:membership_identifier` (`t:string`) The identifier for a membership
    resource.

  ## Optional parameters:
  """
  @spec get_membership(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_membership_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_membership_errors()}
  def get_membership(%Client{} = client, membership_identifier, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}"

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
  Returns details for a specified privacy budget template.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20GetPrivacyBudgetTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:membership_identifier` (`t:string`) A unique identifier for one of your
    memberships for a collaboration. The privacy budget template is retrieved
    from the collaboration that this membership belongs to. Accepts a membership
    ID.
  * `:privacy_budget_template_identifier` (`t:string`) A unique identifier for
    your privacy budget template.

  ## Optional parameters:
  """
  @spec get_privacy_budget_template(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_privacy_budget_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_privacy_budget_template_errors()}
  def get_privacy_budget_template(
        %Client{} = client,
        membership_identifier,
        privacy_budget_template_identifier,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/privacybudgettemplates/#{AWS.Util.encode_uri(privacy_budget_template_identifier)}"

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
  Returns query processing metadata.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20GetProtectedQuery&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:membership_identifier` (`t:string`) The identifier for a membership in a
    protected query instance.
  * `:protected_query_identifier` (`t:string`) The identifier for a protected
    query instance.

  ## Optional parameters:
  """
  @spec get_protected_query(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_protected_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_protected_query_errors()}
  def get_protected_query(
        %Client{} = client,
        membership_identifier,
        protected_query_identifier,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/protectedQueries/#{AWS.Util.encode_uri(protected_query_identifier)}"

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
  Retrieves the schema for a relation within a collaboration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20GetSchema&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:collaboration_identifier` (`t:string`) A unique identifier for the
    collaboration that the schema belongs to. Currently accepts a collaboration
    ID.
  * `:name` (`t:string`) The name of the relation to retrieve the schema for.

  ## Optional parameters:
  """
  @spec get_schema(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_schema_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_schema_errors()}
  def get_schema(%Client{} = client, collaboration_identifier, name, options \\ []) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/schemas/#{AWS.Util.encode_uri(name)}"

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
  Retrieves a schema analysis rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20GetSchemaAnalysisRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:collaboration_identifier` (`t:string`) A unique identifier for the
    collaboration that the schema belongs to. Currently accepts a collaboration
    ID.
  * `:name` (`t:string`) The name of the schema to retrieve the analysis rule for.
  * `:type` (`t:enum["AGGREGATION|CUSTOM|LIST"]`) The type of the schema analysis
    rule to retrieve. Schema analysis rules are uniquely identified by a
    combination of the collaboration, the schema name, and their type.

  ## Optional parameters:
  """
  @spec get_schema_analysis_rule(AWS.Client.t(), String.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, get_schema_analysis_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_schema_analysis_rule_errors()}
  def get_schema_analysis_rule(
        %Client{} = client,
        collaboration_identifier,
        name,
        type,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/schemas/#{AWS.Util.encode_uri(name)}/analysisRule/#{AWS.Util.encode_uri(type)}"

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
  Lists analysis templates that the caller owns.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20ListAnalysisTemplates&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:membership_identifier` (`t:string`) The identifier for a membership
    resource.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum size of the results that is returned
    per call.
  * `:next_token` (`t:string`) The token value retrieved from a previous call to
    access the next page of results.
  """
  @spec list_analysis_templates(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_analysis_templates_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_analysis_templates_errors()}
  def list_analysis_templates(%Client{} = client, membership_identifier, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/analysistemplates"

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
  Lists analysis templates within a collaboration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20ListCollaborationAnalysisTemplates&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:collaboration_identifier` (`t:string`) A unique identifier for the
    collaboration that the analysis templates belong to. Currently accepts
    collaboration ID.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum size of the results that is returned
    per call.
  * `:next_token` (`t:string`) The token value retrieved from a previous call to
    access the next page of results.
  """
  @spec list_collaboration_analysis_templates(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_collaboration_analysis_templates_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_collaboration_analysis_templates_errors()}
  def list_collaboration_analysis_templates(
        %Client{} = client,
        collaboration_identifier,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/analysistemplates"

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
  Lists configured audience model associations within a collaboration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20ListCollaborationConfiguredAudienceModelAssociations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:collaboration_identifier` (`t:string`) A unique identifier for the
    collaboration that the configured audience model association belongs to.
    Accepts a collaboration ID.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum size of the results that is returned
    per call.
  * `:next_token` (`t:string`) The token value retrieved from a previous call to
    access the next page of results.
  """
  @spec list_collaboration_configured_audience_model_associations(
          AWS.Client.t(),
          String.t(),
          Keyword.t()
        ) ::
          {:ok, list_collaboration_configured_audience_model_associations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_collaboration_configured_audience_model_associations_errors()}
  def list_collaboration_configured_audience_model_associations(
        %Client{} = client,
        collaboration_identifier,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/configuredaudiencemodelassociations"

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
  Returns an array that summarizes each privacy budget template in a specified
  collaboration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20ListCollaborationPrivacyBudgetTemplates&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:collaboration_identifier` (`t:string`) A unique identifier for one of your
    collaborations.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum size of the results that is returned
    per call. Service chooses a default if it has not been set. Service may
    return a nextToken even if the maximum results has not been met.
  * `:next_token` (`t:string`) The token value retrieved from a previous call to
    access the next page of results.
  """
  @spec list_collaboration_privacy_budget_templates(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_collaboration_privacy_budget_templates_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_collaboration_privacy_budget_templates_errors()}
  def list_collaboration_privacy_budget_templates(
        %Client{} = client,
        collaboration_identifier,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/privacybudgettemplates"

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
  Returns an array that summarizes each privacy budget in a specified
  collaboration. The summary includes the collaboration ARN, creation time,
  creating account, and privacy budget details.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20ListCollaborationPrivacyBudgets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:collaboration_identifier` (`t:string`) A unique identifier for one of your
    collaborations.
  * `:privacy_budget_type` (`t:enum["DIFFERENTIAL_PRIVACY"]`) Specifies the type
    of the privacy budget.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum size of the results that is returned
    per call. Service chooses a default if it has not been set. Service may
    return a nextToken even if the maximum results has not been met.
  * `:next_token` (`t:string`) The token value retrieved from a previous call to
    access the next page of results.
  """
  @spec list_collaboration_privacy_budgets(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_collaboration_privacy_budgets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_collaboration_privacy_budgets_errors()}
  def list_collaboration_privacy_budgets(
        %Client{} = client,
        collaboration_identifier,
        privacy_budget_type,
        options \\ []
      ) do
    url_path = "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/privacybudgets"

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
    query_params = [{"privacyBudgetType", privacy_budget_type}]

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
  Lists collaborations the caller owns, is active in, or has been invited to.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20ListCollaborations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum size of the results that is returned
    per call. Service chooses a default if it has not been set. Service may
    return a nextToken even if the maximum results has not been met.
  * `:member_status` (`t:string`) The caller's status in a collaboration.
  * `:next_token` (`t:string`) The token value retrieved from a previous call to
    access the next page of results.
  """
  @spec list_collaborations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_collaborations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_collaborations_errors()}
  def list_collaborations(%Client{} = client, options \\ []) do
    url_path = "/collaborations"

    # Validate optional parameters
    optional_params = [max_results: nil, member_status: nil, next_token: nil]

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
      if opt_val = Keyword.get(options, :member_status) do
        [{"memberStatus", opt_val} | query_params]
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
      |> Keyword.drop([:max_results, :member_status, :next_token])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists information about requested configured audience model associations.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20ListConfiguredAudienceModelAssociations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:membership_identifier` (`t:string`) A unique identifier for a membership
    that contains the configured audience model associations that you want to
    retrieve.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum size of the results that is returned
    per call. Service chooses a default if it has not been set. Service may
    return a nextToken even if the maximum results has not been met.
  * `:next_token` (`t:string`) The token value retrieved from a previous call to
    access the next page of results.
  """
  @spec list_configured_audience_model_associations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_configured_audience_model_associations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_configured_audience_model_associations_errors()}
  def list_configured_audience_model_associations(
        %Client{} = client,
        membership_identifier,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredaudiencemodelassociations"

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
  Lists configured table associations for a membership.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20ListConfiguredTableAssociations&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:membership_identifier` (`t:string`) A unique identifier for the membership
    to list configured table associations for. Currently accepts the membership
    ID.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum size of the results that is returned
    per call.
  * `:next_token` (`t:string`) The token value retrieved from a previous call to
    access the next page of results.
  """
  @spec list_configured_table_associations(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_configured_table_associations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_configured_table_associations_errors()}
  def list_configured_table_associations(%Client{} = client, membership_identifier, options \\ []) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredTableAssociations"

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
  Lists configured tables.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20ListConfiguredTables&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum size of the results that is returned
    per call.
  * `:next_token` (`t:string`) The token value retrieved from a previous call to
    access the next page of results.
  """
  @spec list_configured_tables(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_configured_tables_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_configured_tables_errors()}
  def list_configured_tables(%Client{} = client, options \\ []) do
    url_path = "/configuredTables"

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
  Lists all members within a collaboration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20ListMembers&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:collaboration_identifier` (`t:string`) The identifier of the collaboration
    in which the members are listed.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum size of the results that is returned
    per call.
  * `:next_token` (`t:string`) The token value retrieved from a previous call to
    access the next page of results.
  """
  @spec list_members(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_members_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_members_errors()}
  def list_members(%Client{} = client, collaboration_identifier, options \\ []) do
    url_path = "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/members"

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
  Lists all memberships resources within the caller's account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20ListMemberships&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum size of the results that is returned
    per call.
  * `:next_token` (`t:string`) The token value retrieved from a previous call to
    access the next page of results.
  * `:status` (`t:string`) A filter which will return only memberships in the
    specified status.
  """
  @spec list_memberships(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_memberships_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_memberships_errors()}
  def list_memberships(%Client{} = client, options \\ []) do
    url_path = "/memberships"

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
      |> Keyword.drop([:max_results, :next_token, :status])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns detailed information about the privacy budget templates in a specified
  membership.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20ListPrivacyBudgetTemplates&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:membership_identifier` (`t:string`) A unique identifier for one of your
    memberships for a collaboration. The privacy budget templates are retrieved
    from the collaboration that this membership belongs to. Accepts a membership
    ID.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum size of the results that is returned
    per call. Service chooses a default if it has not been set. Service may
    return a nextToken even if the maximum results has not been met.
  * `:next_token` (`t:string`) The token value retrieved from a previous call to
    access the next page of results.
  """
  @spec list_privacy_budget_templates(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_privacy_budget_templates_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_privacy_budget_templates_errors()}
  def list_privacy_budget_templates(%Client{} = client, membership_identifier, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/privacybudgettemplates"

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
  Returns detailed information about the privacy budgets in a specified
  membership.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20ListPrivacyBudgets&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:membership_identifier` (`t:string`) A unique identifier for one of your
    memberships for a collaboration. The privacy budget is retrieved from the
    collaboration that this membership belongs to. Accepts a membership ID.
  * `:privacy_budget_type` (`t:enum["DIFFERENTIAL_PRIVACY"]`) The privacy budget
    type.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum size of the results that is returned
    per call. Service chooses a default if it has not been set. Service may
    return a nextToken even if the maximum results has not been met.
  * `:next_token` (`t:string`) The token value retrieved from a previous call to
    access the next page of results.
  """
  @spec list_privacy_budgets(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, list_privacy_budgets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_privacy_budgets_errors()}
  def list_privacy_budgets(
        %Client{} = client,
        membership_identifier,
        privacy_budget_type,
        options \\ []
      ) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/privacybudgets"

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
    query_params = [{"privacyBudgetType", privacy_budget_type}]

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
  Lists protected queries, sorted by the most recent query.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20ListProtectedQueries&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:membership_identifier` (`t:string`) The identifier for the membership in the
    collaboration.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum size of the results that is returned
    per call. Service chooses a default if it has not been set. Service can
    return a nextToken even if the maximum results has not been met.
  * `:next_token` (`t:string`) The token value retrieved from a previous call to
    access the next page of results.
  * `:status` (`t:string`) A filter on the status of the protected query.
  """
  @spec list_protected_queries(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_protected_queries_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_protected_queries_errors()}
  def list_protected_queries(%Client{} = client, membership_identifier, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/protectedQueries"

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
      |> Keyword.drop([:max_results, :next_token, :status])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the schemas for relations within a collaboration.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20ListSchemas&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:collaboration_identifier` (`t:string`) A unique identifier for the
    collaboration that the schema belongs to. Currently accepts a collaboration
    ID.

  ## Optional parameters:
  * `:max_results` (`t:integer`) The maximum size of the results that is returned
    per call.
  * `:next_token` (`t:string`) The token value retrieved from a previous call to
    access the next page of results.
  * `:schema_type` (`t:enum["TABLE"]`) If present, filter schemas by schema type.
    The only valid schema type is currently `TABLE`.
  """
  @spec list_schemas(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_schemas_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_schemas_errors()}
  def list_schemas(%Client{} = client, collaboration_identifier, options \\ []) do
    url_path = "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/schemas"

    # Validate optional parameters
    optional_params = [max_results: nil, next_token: nil, schema_type: nil]

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
      if opt_val = Keyword.get(options, :schema_type) do
        [{"schemaType", opt_val} | query_params]
      else
        query_params
      end

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
      |> Keyword.drop([:max_results, :next_token, :schema_type])

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all of the tags that have been added to a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) associated with
    the resource you want to list tags on.

  ## Optional parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_output(), any()}
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
  An estimate of the number of aggregation functions that the member who can query
  can run given epsilon and noise parameters.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20PreviewPrivacyImpact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:membership_identifier` (`t:string`) A unique identifier for one of your
    memberships for a collaboration. Accepts a membership ID.

  ## Optional parameters:
  """
  @spec preview_privacy_impact(
          AWS.Client.t(),
          String.t(),
          preview_privacy_impact_input(),
          Keyword.t()
        ) ::
          {:ok, preview_privacy_impact_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, preview_privacy_impact_errors()}
  def preview_privacy_impact(%Client{} = client, membership_identifier, input, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/previewprivacyimpact"
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
  Creates a protected query that is started by Clean Rooms.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20StartProtectedQuery&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:membership_identifier` (`t:string`) A unique identifier for the membership
    to run this query against. Currently accepts a membership ID.

  ## Optional parameters:
  """
  @spec start_protected_query(
          AWS.Client.t(),
          String.t(),
          start_protected_query_input(),
          Keyword.t()
        ) ::
          {:ok, start_protected_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_protected_query_errors()}
  def start_protected_query(%Client{} = client, membership_identifier, input, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/protectedQueries"
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
  Tags a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) associated with
    the resource you want to tag.

  ## Optional parameters:
  """
  @spec tag_resource(AWS.Client.t(), String.t(), tag_resource_input(), Keyword.t()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Removes a tag or list of tags from a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_arn` (`t:string`) The Amazon Resource Name (ARN) associated with
    the resource you want to remove the tag from.
  * `:tag_keys` (`t:list[com.amazonaws.cleanrooms#TagKey]`) A list of key names of
    tags to be removed.

  ## Optional parameters:
  """
  @spec untag_resource(AWS.Client.t(), String.t(), untag_resource_input(), Keyword.t()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

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
      200
    )
  end

  @doc """
  Updates the analysis template metadata.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20UpdateAnalysisTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:analysis_template_identifier` (`t:string`) The identifier for the analysis
    template resource.
  * `:membership_identifier` (`t:string`) The identifier for a membership
    resource.

  ## Optional parameters:
  """
  @spec update_analysis_template(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_analysis_template_input(),
          Keyword.t()
        ) ::
          {:ok, update_analysis_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_analysis_template_errors()}
  def update_analysis_template(
        %Client{} = client,
        analysis_template_identifier,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/analysistemplates/#{AWS.Util.encode_uri(analysis_template_identifier)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates collaboration metadata and can only be called by the collaboration
  owner.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20UpdateCollaboration&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:collaboration_identifier` (`t:string`) The identifier for the collaboration.

  ## Optional parameters:
  """
  @spec update_collaboration(
          AWS.Client.t(),
          String.t(),
          update_collaboration_input(),
          Keyword.t()
        ) ::
          {:ok, update_collaboration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_collaboration_errors()}
  def update_collaboration(%Client{} = client, collaboration_identifier, input, options \\ []) do
    url_path = "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Provides the details necessary to update a configured audience model
  association.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20UpdateConfiguredAudienceModelAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configured_audience_model_association_identifier` (`t:string`) A unique
    identifier for the configured audience model association that you want to
    update.
  * `:membership_identifier` (`t:string`) A unique identifier of the membership
    that contains the configured audience model association that you want to
    update.

  ## Optional parameters:
  """
  @spec update_configured_audience_model_association(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_configured_audience_model_association_input(),
          Keyword.t()
        ) ::
          {:ok, update_configured_audience_model_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_configured_audience_model_association_errors()}
  def update_configured_audience_model_association(
        %Client{} = client,
        configured_audience_model_association_identifier,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredaudiencemodelassociations/#{AWS.Util.encode_uri(configured_audience_model_association_identifier)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a configured table.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20UpdateConfiguredTable&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configured_table_identifier` (`t:string`) The identifier for the configured
    table to update. Currently accepts the configured table ID.

  ## Optional parameters:
  """
  @spec update_configured_table(
          AWS.Client.t(),
          String.t(),
          update_configured_table_input(),
          Keyword.t()
        ) ::
          {:ok, update_configured_table_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_configured_table_errors()}
  def update_configured_table(
        %Client{} = client,
        configured_table_identifier,
        input,
        options \\ []
      ) do
    url_path = "/configuredTables/#{AWS.Util.encode_uri(configured_table_identifier)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a configured table analysis rule.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20UpdateConfiguredTableAnalysisRule&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:analysis_rule_type` (`t:enum["AGGREGATION|CUSTOM|LIST"]`) The analysis rule
    type to be updated. Configured table analysis rules are uniquely identified
    by their configured table identifier and analysis rule type.
  * `:configured_table_identifier` (`t:string`) The unique identifier for the
    configured table that the analysis rule applies to. Currently accepts the
    configured table ID.

  ## Optional parameters:
  """
  @spec update_configured_table_analysis_rule(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_configured_table_analysis_rule_input(),
          Keyword.t()
        ) ::
          {:ok, update_configured_table_analysis_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_configured_table_analysis_rule_errors()}
  def update_configured_table_analysis_rule(
        %Client{} = client,
        analysis_rule_type,
        configured_table_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/configuredTables/#{AWS.Util.encode_uri(configured_table_identifier)}/analysisRule/#{AWS.Util.encode_uri(analysis_rule_type)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a configured table association.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20UpdateConfiguredTableAssociation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:configured_table_association_identifier` (`t:string`) The unique identifier
    for the configured table association to update. Currently accepts the
    configured table association ID.
  * `:membership_identifier` (`t:string`) The unique ID for the membership that
    the configured table association belongs to.

  ## Optional parameters:
  """
  @spec update_configured_table_association(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_configured_table_association_input(),
          Keyword.t()
        ) ::
          {:ok, update_configured_table_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_configured_table_association_errors()}
  def update_configured_table_association(
        %Client{} = client,
        configured_table_association_identifier,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredTableAssociations/#{AWS.Util.encode_uri(configured_table_association_identifier)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a membership.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20UpdateMembership&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:membership_identifier` (`t:string`) The unique identifier of the membership.

  ## Optional parameters:
  """
  @spec update_membership(AWS.Client.t(), String.t(), update_membership_input(), Keyword.t()) ::
          {:ok, update_membership_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_membership_errors()}
  def update_membership(%Client{} = client, membership_identifier, input, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}"
    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the privacy budget template for the specified membership.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20UpdatePrivacyBudgetTemplate&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:membership_identifier` (`t:string`) A unique identifier for one of your
    memberships for a collaboration. The privacy budget template is updated in
    the collaboration that this membership belongs to. Accepts a membership ID.
  * `:privacy_budget_template_identifier` (`t:string`) A unique identifier for
    your privacy budget template that you want to update.

  ## Optional parameters:
  """
  @spec update_privacy_budget_template(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_privacy_budget_template_input(),
          Keyword.t()
        ) ::
          {:ok, update_privacy_budget_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_privacy_budget_template_errors()}
  def update_privacy_budget_template(
        %Client{} = client,
        membership_identifier,
        privacy_budget_template_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/privacybudgettemplates/#{AWS.Util.encode_uri(privacy_budget_template_identifier)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the processing of a currently running query.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=cleanrooms%20UpdateProtectedQuery&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:membership_identifier` (`t:string`) The identifier for a member of a
    protected query instance.
  * `:protected_query_identifier` (`t:string`) The identifier for a protected
    query instance.

  ## Optional parameters:
  """
  @spec update_protected_query(
          AWS.Client.t(),
          String.t(),
          String.t(),
          update_protected_query_input(),
          Keyword.t()
        ) ::
          {:ok, update_protected_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_protected_query_errors()}
  def update_protected_query(
        %Client{} = client,
        membership_identifier,
        protected_query_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/protectedQueries/#{AWS.Util.encode_uri(protected_query_identifier)}"

    headers = []
    query_params = []

    meta =
      metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
