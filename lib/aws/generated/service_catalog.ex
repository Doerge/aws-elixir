# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ServiceCatalog do
  @moduledoc """
  Service Catalog
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_tag_options_input() :: %{
        optional("Filters") => list_tag_options_filters(),
        optional("PageSize") => integer(),
        optional("PageToken") => String.t()
      }
      
  """
  @type list_tag_options_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_provisioning_artifact_output() :: %{
        "Info" => map(),
        "ProvisioningArtifactDetail" => provisioning_artifact_detail(),
        "Status" => list(any())
      }
      
  """
  @type create_provisioning_artifact_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_product_output() :: %{
        "CopyProductToken" => String.t()
      }
      
  """
  @type copy_product_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_provisioned_product_plans_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("AccessLevelFilter") => access_level_filter(),
        optional("PageSize") => integer(),
        optional("PageToken") => String.t(),
        optional("ProvisionProductId") => String.t()
      }
      
  """
  @type list_provisioned_product_plans_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_service_action_from_provisioning_artifact_output() :: %{}
      
  """
  @type disassociate_service_action_from_provisioning_artifact_output() :: %{}

  @typedoc """

  ## Example:
      
      notify_terminate_provisioned_product_engine_workflow_result_output() :: %{}
      
  """
  @type notify_terminate_provisioned_product_engine_workflow_result_output() :: %{}

  @typedoc """

  ## Example:
      
      copy_product_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("CopyOptions") => list(list(any())()),
        optional("SourceProvisioningArtifactIdentifiers") => list(map()()),
        optional("TargetProductId") => String.t(),
        optional("TargetProductName") => String.t(),
        required("IdempotencyToken") => String.t(),
        required("SourceProductArn") => String.t()
      }
      
  """
  @type copy_product_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_budget_from_resource_output() :: %{}
      
  """
  @type disassociate_budget_from_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      delete_constraint_input() :: %{
        optional("AcceptLanguage") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type delete_constraint_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_portfolio_share_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("PortfolioShareType") => list(any()),
        required("PortfolioId") => String.t()
      }
      
  """
  @type accept_portfolio_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_tag_option_from_resource_output() :: %{}
      
  """
  @type disassociate_tag_option_from_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      list_provisioning_artifacts_for_service_action_output() :: %{
        "NextPageToken" => String.t(),
        "ProvisioningArtifactViews" => list(provisioning_artifact_view()())
      }
      
  """
  @type list_provisioning_artifacts_for_service_action_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_accepted_portfolio_shares_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("PageSize") => integer(),
        optional("PageToken") => String.t(),
        optional("PortfolioShareType") => list(any())
      }
      
  """
  @type list_accepted_portfolio_shares_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_portfolio_share_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("AccountId") => String.t(),
        optional("OrganizationNode") => organization_node(),
        optional("SharePrincipals") => boolean(),
        optional("ShareTagOptions") => boolean(),
        required("PortfolioId") => String.t()
      }
      
  """
  @type update_portfolio_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_portfolio_output() :: %{}
      
  """
  @type delete_portfolio_output() :: %{}

  @typedoc """

  ## Example:
      
      list_constraints_for_portfolio_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("PageSize") => integer(),
        optional("PageToken") => String.t(),
        optional("ProductId") => String.t(),
        required("PortfolioId") => String.t()
      }
      
  """
  @type list_constraints_for_portfolio_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_service_action_with_provisioning_artifact_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("IdempotencyToken") => String.t(),
        required("ProductId") => String.t(),
        required("ProvisioningArtifactId") => String.t(),
        required("ServiceActionId") => String.t()
      }
      
  """
  @type associate_service_action_with_provisioning_artifact_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_constraint_output() :: %{
        "ConstraintDetail" => constraint_detail(),
        "ConstraintParameters" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type describe_constraint_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_portfolio_share_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("AccountId") => String.t(),
        optional("OrganizationNode") => organization_node(),
        required("PortfolioId") => String.t()
      }
      
  """
  @type delete_portfolio_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_constraints() :: %{
        "AllowedPattern" => String.t(),
        "AllowedValues" => list(String.t()()),
        "ConstraintDescription" => String.t(),
        "MaxLength" => String.t(),
        "MaxValue" => String.t(),
        "MinLength" => String.t(),
        "MinValue" => String.t()
      }
      
  """
  @type parameter_constraints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_provisioning_parameters_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("PathId") => String.t(),
        optional("PathName") => String.t(),
        optional("ProductId") => String.t(),
        optional("ProductName") => String.t(),
        optional("ProvisioningArtifactId") => String.t(),
        optional("ProvisioningArtifactName") => String.t()
      }
      
  """
  @type describe_provisioning_parameters_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioned_product_detail() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Id" => String.t(),
        "IdempotencyToken" => String.t(),
        "LastProvisioningRecordId" => String.t(),
        "LastRecordId" => String.t(),
        "LastSuccessfulProvisioningRecordId" => String.t(),
        "LaunchRoleArn" => String.t(),
        "Name" => String.t(),
        "ProductId" => String.t(),
        "ProvisioningArtifactId" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type provisioned_product_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_product_output() :: %{
        "Budgets" => list(budget_detail()()),
        "LaunchPaths" => list(launch_path()()),
        "ProductViewSummary" => product_view_summary(),
        "ProvisioningArtifacts" => list(provisioning_artifact()())
      }
      
  """
  @type describe_product_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_provisioned_product_outputs_output() :: %{
        "NextPageToken" => String.t(),
        "Outputs" => list(record_output()())
      }
      
  """
  @type get_provisioned_product_outputs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioning_artifact_properties() :: %{
        "Description" => String.t(),
        "DisableTemplateValidation" => boolean(),
        "Info" => map(),
        "Name" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type provisioning_artifact_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      engine_workflow_resource_identifier() :: %{
        "UniqueTag" => unique_tag_resource_identifier()
      }
      
  """
  @type engine_workflow_resource_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_provisioning_parameters_output() :: %{
        "ConstraintSummaries" => list(constraint_summary()()),
        "ProvisioningArtifactOutputKeys" => list(provisioning_artifact_output()()),
        "ProvisioningArtifactOutputs" => list(provisioning_artifact_output()()),
        "ProvisioningArtifactParameters" => list(provisioning_artifact_parameter()()),
        "ProvisioningArtifactPreferences" => provisioning_artifact_preferences(),
        "TagOptions" => list(tag_option_summary()()),
        "UsageInstructions" => list(usage_instruction()())
      }
      
  """
  @type describe_provisioning_parameters_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aws_organizations_access_status_output() :: %{
        "AccessStatus" => list(any())
      }
      
  """
  @type get_aws_organizations_access_status_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_principal_from_portfolio_output() :: %{}
      
  """
  @type disassociate_principal_from_portfolio_output() :: %{}

  @typedoc """

  ## Example:
      
      describe_product_view_output() :: %{
        "ProductViewSummary" => product_view_summary(),
        "ProvisioningArtifacts" => list(provisioning_artifact()())
      }
      
  """
  @type describe_product_view_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_principals_for_portfolio_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("PageSize") => integer(),
        optional("PageToken") => String.t(),
        required("PortfolioId") => String.t()
      }
      
  """
  @type list_principals_for_portfolio_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execute_provisioned_product_service_action_output() :: %{
        "RecordDetail" => record_detail()
      }
      
  """
  @type execute_provisioned_product_service_action_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_portfolio_access_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("OrganizationParentId") => String.t(),
        optional("PageSize") => integer(),
        optional("PageToken") => String.t(),
        required("PortfolioId") => String.t()
      }
      
  """
  @type list_portfolio_access_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execute_provisioned_product_plan_output() :: %{
        "RecordDetail" => record_detail()
      }
      
  """
  @type execute_provisioned_product_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_product_with_portfolio_output() :: %{}
      
  """
  @type associate_product_with_portfolio_output() :: %{}

  @typedoc """

  ## Example:
      
      create_constraint_output() :: %{
        "ConstraintDetail" => constraint_detail(),
        "ConstraintParameters" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type create_constraint_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_product_with_portfolio_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("SourcePortfolioId") => String.t(),
        required("PortfolioId") => String.t(),
        required("ProductId") => String.t()
      }
      
  """
  @type associate_product_with_portfolio_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      share_details() :: %{
        "ShareErrors" => list(share_error()()),
        "SuccessfulShares" => list(String.t()())
      }
      
  """
  @type share_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_target_definition() :: %{
        "Attribute" => list(any()),
        "Name" => String.t(),
        "RequiresRecreation" => list(any())
      }
      
  """
  @type resource_target_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_provisioning_artifacts_for_service_action_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("PageSize") => integer(),
        optional("PageToken") => String.t(),
        required("ServiceActionId") => String.t()
      }
      
  """
  @type list_provisioning_artifacts_for_service_action_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_action_summary() :: %{
        "DefinitionType" => list(any()),
        "Description" => String.t(),
        "Id" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type service_action_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tag_option_input() :: %{
        required("Id") => String.t()
      }
      
  """
  @type describe_tag_option_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      terminate_provisioned_product_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("IgnoreErrors") => boolean(),
        optional("ProvisionedProductId") => String.t(),
        optional("ProvisionedProductName") => String.t(),
        optional("RetainPhysicalResources") => boolean(),
        required("TerminateToken") => String.t()
      }
      
  """
  @type terminate_provisioned_product_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_portfolio_output() :: %{
        "Budgets" => list(budget_detail()()),
        "PortfolioDetail" => portfolio_detail(),
        "TagOptions" => list(tag_option_detail()()),
        "Tags" => list(tag()())
      }
      
  """
  @type describe_portfolio_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_organization_portfolio_access_output() :: %{
        "NextPageToken" => String.t(),
        "OrganizationNodes" => list(organization_node()())
      }
      
  """
  @type list_organization_portfolio_access_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_products_as_admin_output() :: %{
        "NextPageToken" => String.t(),
        "ProductViewDetails" => list(product_view_detail()())
      }
      
  """
  @type search_products_as_admin_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_connection_detail() :: %{
        "ConnectionParameters" => source_connection_parameters(),
        "LastSync" => last_sync(),
        "Type" => list(any())
      }
      
  """
  @type source_connection_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_record_history_search_filter() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type list_record_history_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      principal() :: %{
        "PrincipalARN" => String.t(),
        "PrincipalType" => list(any())
      }
      
  """
  @type principal() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_aws_organizations_access_output() :: %{}
      
  """
  @type disable_aws_organizations_access_output() :: %{}

  @typedoc """

  ## Example:
      
      product_view_aggregation_value() :: %{
        "ApproximateCount" => integer(),
        "Value" => String.t()
      }
      
  """
  @type product_view_aggregation_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_state_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_action_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("IdempotencyToken") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type delete_service_action_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_disassociate_service_action_from_provisioning_artifact_input() :: %{
        optional("AcceptLanguage") => String.t(),
        required("ServiceActionAssociations") => list(service_action_association()())
      }
      
  """
  @type batch_disassociate_service_action_from_provisioning_artifact_input() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:
      
      usage_instruction() :: %{
        "Type" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type usage_instruction() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_service_action_input() :: %{
        optional("AcceptLanguage") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type describe_service_action_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_aws_organizations_access_input() :: %{}
      
  """
  @type disable_aws_organizations_access_input() :: %{}

  @typedoc """

  ## Example:
      
      stack_instance() :: %{
        "Account" => String.t(),
        "Region" => String.t(),
        "StackInstanceStatus" => list(any())
      }
      
  """
  @type stack_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_portfolio_input() :: %{
        optional("AcceptLanguage") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type delete_portfolio_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_portfolio_output() :: %{
        "PortfolioDetail" => portfolio_detail(),
        "Tags" => list(tag()())
      }
      
  """
  @type update_portfolio_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      budget_detail() :: %{
        "BudgetName" => String.t()
      }
      
  """
  @type budget_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_provisioning_artifact_output() :: %{
        "Info" => map(),
        "ProvisioningArtifactDetail" => provisioning_artifact_detail(),
        "ProvisioningArtifactParameters" => list(provisioning_artifact_parameter()()),
        "Status" => list(any())
      }
      
  """
  @type describe_provisioning_artifact_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unique_tag_resource_identifier() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type unique_tag_resource_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioning_artifact_summary() :: %{
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "ProvisioningArtifactMetadata" => map()
      }
      
  """
  @type provisioning_artifact_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_budget_with_resource_output() :: %{}
      
  """
  @type associate_budget_with_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      list_principals_for_portfolio_output() :: %{
        "NextPageToken" => String.t(),
        "Principals" => list(principal()())
      }
      
  """
  @type list_principals_for_portfolio_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_tag_option_output() :: %{
        "TagOptionDetail" => tag_option_detail()
      }
      
  """
  @type create_tag_option_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_product_view_input() :: %{
        optional("AcceptLanguage") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type describe_product_view_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_associate_service_action_with_provisioning_artifact_input() :: %{
        optional("AcceptLanguage") => String.t(),
        required("ServiceActionAssociations") => list(service_action_association()())
      }
      
  """
  @type batch_associate_service_action_with_provisioning_artifact_input() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:
      
      constraint_summary() :: %{
        "Description" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type constraint_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_connection() :: %{
        "ConnectionParameters" => source_connection_parameters(),
        "Type" => list(any())
      }
      
  """
  @type source_connection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tag_option_output() :: %{
        "TagOptionDetail" => tag_option_detail()
      }
      
  """
  @type describe_tag_option_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notify_provision_product_engine_workflow_result_output() :: %{}
      
  """
  @type notify_provision_product_engine_workflow_result_output() :: %{}

  @typedoc """

  ## Example:
      
      import_as_provisioned_product_output() :: %{
        "RecordDetail" => record_detail()
      }
      
  """
  @type import_as_provisioned_product_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_product_output() :: %{
        "ProductViewDetail" => product_view_detail(),
        "Tags" => list(tag()())
      }
      
  """
  @type update_product_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_portfolio_input() :: %{
        optional("AcceptLanguage") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type describe_portfolio_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notify_update_provisioned_product_engine_workflow_result_output() :: %{}
      
  """
  @type notify_update_provisioned_product_engine_workflow_result_output() :: %{}

  @typedoc """

  ## Example:
      
      provisioned_product_plan_summary() :: %{
        "PlanId" => String.t(),
        "PlanName" => String.t(),
        "PlanType" => list(any()),
        "ProvisionProductId" => String.t(),
        "ProvisionProductName" => String.t(),
        "ProvisioningArtifactId" => String.t()
      }
      
  """
  @type provisioned_product_plan_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tag_options_filters() :: %{
        "Active" => boolean(),
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type list_tag_options_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_star_parameters() :: %{
        "ArtifactPath" => String.t(),
        "Branch" => String.t(),
        "ConnectionArn" => String.t(),
        "Repository" => String.t()
      }
      
  """
  @type code_star_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_product_output() :: %{}
      
  """
  @type delete_product_output() :: %{}

  @typedoc """

  ## Example:
      
      service_action_association() :: %{
        "ProductId" => String.t(),
        "ProvisioningArtifactId" => String.t(),
        "ServiceActionId" => String.t()
      }
      
  """
  @type service_action_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_provisioned_products_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("AccessLevelFilter") => access_level_filter(),
        optional("Filters") => map(),
        optional("PageSize") => integer(),
        optional("PageToken") => String.t(),
        optional("SortBy") => String.t(),
        optional("SortOrder") => list(any())
      }
      
  """
  @type search_provisioned_products_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_provisioned_product_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("PathId") => String.t(),
        optional("PathName") => String.t(),
        optional("ProductId") => String.t(),
        optional("ProductName") => String.t(),
        optional("ProvisionedProductId") => String.t(),
        optional("ProvisionedProductName") => String.t(),
        optional("ProvisioningArtifactId") => String.t(),
        optional("ProvisioningArtifactName") => String.t(),
        optional("ProvisioningParameters") => list(update_provisioning_parameter()()),
        optional("ProvisioningPreferences") => update_provisioning_preferences(),
        optional("Tags") => list(tag()()),
        required("UpdateToken") => String.t()
      }
      
  """
  @type update_provisioned_product_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_portfolio_share_output() :: %{
        "PortfolioShareToken" => String.t()
      }
      
  """
  @type create_portfolio_share_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scan_provisioned_products_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("AccessLevelFilter") => access_level_filter(),
        optional("PageSize") => integer(),
        optional("PageToken") => String.t()
      }
      
  """
  @type scan_provisioned_products_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      product_view_detail() :: %{
        "CreatedTime" => non_neg_integer(),
        "ProductARN" => String.t(),
        "ProductViewSummary" => product_view_summary(),
        "SourceConnection" => source_connection_detail(),
        "Status" => list(any())
      }
      
  """
  @type product_view_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_accepted_portfolio_shares_output() :: %{
        "NextPageToken" => String.t(),
        "PortfolioDetails" => list(portfolio_detail()())
      }
      
  """
  @type list_accepted_portfolio_shares_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioning_artifact_detail() :: %{
        "Active" => boolean(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "Guidance" => list(any()),
        "Id" => String.t(),
        "Name" => String.t(),
        "SourceRevision" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type provisioning_artifact_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_budgets_for_resource_output() :: %{
        "Budgets" => list(budget_detail()()),
        "NextPageToken" => String.t()
      }
      
  """
  @type list_budgets_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_product_from_portfolio_output() :: %{}
      
  """
  @type disassociate_product_from_portfolio_output() :: %{}

  @typedoc """

  ## Example:
      
      execute_provisioned_product_plan_input() :: %{
        optional("AcceptLanguage") => String.t(),
        required("IdempotencyToken") => String.t(),
        required("PlanId") => String.t()
      }
      
  """
  @type execute_provisioned_product_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_portfolio_shares_input() :: %{
        optional("PageSize") => integer(),
        optional("PageToken") => String.t(),
        required("PortfolioId") => String.t(),
        required("Type") => list(any())
      }
      
  """
  @type describe_portfolio_shares_input() :: %{String.t() => any()}

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
      
      constraint_detail() :: %{
        "ConstraintId" => String.t(),
        "Description" => String.t(),
        "Owner" => String.t(),
        "PortfolioId" => String.t(),
        "ProductId" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type constraint_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notify_terminate_provisioned_product_engine_workflow_result_input() :: %{
        optional("FailureReason") => String.t(),
        required("IdempotencyToken") => String.t(),
        required("RecordId") => String.t(),
        required("Status") => list(any()),
        required("WorkflowToken") => String.t()
      }
      
  """
  @type notify_terminate_provisioned_product_engine_workflow_result_input() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:
      
      record_tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type record_tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_principal_from_portfolio_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("PrincipalType") => list(any()),
        required("PortfolioId") => String.t(),
        required("PrincipalARN") => String.t()
      }
      
  """
  @type disassociate_principal_from_portfolio_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioned_product_attribute() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Id" => String.t(),
        "IdempotencyToken" => String.t(),
        "LastProvisioningRecordId" => String.t(),
        "LastRecordId" => String.t(),
        "LastSuccessfulProvisioningRecordId" => String.t(),
        "Name" => String.t(),
        "PhysicalId" => String.t(),
        "ProductId" => String.t(),
        "ProductName" => String.t(),
        "ProvisioningArtifactId" => String.t(),
        "ProvisioningArtifactName" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t(),
        "Tags" => list(tag()()),
        "Type" => String.t(),
        "UserArn" => String.t(),
        "UserArnSession" => String.t()
      }
      
  """
  @type provisioned_product_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_constraint_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("Description") => String.t(),
        required("IdempotencyToken") => String.t(),
        required("Parameters") => String.t(),
        required("PortfolioId") => String.t(),
        required("ProductId") => String.t(),
        required("Type") => String.t()
      }
      
  """
  @type create_constraint_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_associate_service_action_with_provisioning_artifact_output() :: %{
        "FailedServiceActionAssociations" => list(failed_service_action_association()())
      }
      
  """
  @type batch_associate_service_action_with_provisioning_artifact_output() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:
      
      create_portfolio_output() :: %{
        "PortfolioDetail" => portfolio_detail(),
        "Tags" => list(tag()())
      }
      
  """
  @type create_portfolio_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_copy_product_status_output() :: %{
        "CopyProductStatus" => list(any()),
        "StatusDetail" => String.t(),
        "TargetProductId" => String.t()
      }
      
  """
  @type describe_copy_product_status_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_tag_option_from_resource_input() :: %{
        required("ResourceId") => String.t(),
        required("TagOptionId") => String.t()
      }
      
  """
  @type disassociate_tag_option_from_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_provisioned_product_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("Id") => String.t(),
        optional("Name") => String.t()
      }
      
  """
  @type describe_provisioned_product_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_portfolios_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("PageSize") => integer(),
        optional("PageToken") => String.t()
      }
      
  """
  @type list_portfolios_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      record_error() :: %{
        "Code" => String.t(),
        "Description" => String.t()
      }
      
  """
  @type record_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_portfolios_output() :: %{
        "NextPageToken" => String.t(),
        "PortfolioDetails" => list(portfolio_detail()())
      }
      
  """
  @type list_portfolios_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_record_output() :: %{
        "NextPageToken" => String.t(),
        "RecordDetail" => record_detail(),
        "RecordOutputs" => list(record_output()())
      }
      
  """
  @type describe_record_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioning_artifact_view() :: %{
        "ProductViewSummary" => product_view_summary(),
        "ProvisioningArtifact" => provisioning_artifact()
      }
      
  """
  @type provisioning_artifact_view() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_provisioned_product_output() :: %{
        "CloudWatchDashboards" => list(cloud_watch_dashboard()()),
        "ProvisionedProductDetail" => provisioned_product_detail()
      }
      
  """
  @type describe_provisioned_product_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_portfolio_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("Description") => String.t(),
        optional("Tags") => list(tag()()),
        required("DisplayName") => String.t(),
        required("IdempotencyToken") => String.t(),
        required("ProviderName") => String.t()
      }
      
  """
  @type create_portfolio_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_portfolio_share_output() :: %{
        "PortfolioShareToken" => String.t()
      }
      
  """
  @type delete_portfolio_share_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_provisioned_product_plan_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("NotificationArns") => list(String.t()()),
        optional("PathId") => String.t(),
        optional("ProvisioningParameters") => list(update_provisioning_parameter()()),
        optional("Tags") => list(tag()()),
        required("IdempotencyToken") => String.t(),
        required("PlanName") => String.t(),
        required("PlanType") => list(any()),
        required("ProductId") => String.t(),
        required("ProvisionedProductName") => String.t(),
        required("ProvisioningArtifactId") => String.t()
      }
      
  """
  @type create_provisioned_product_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_tag_option_input() :: %{
        required("Key") => String.t(),
        required("Value") => String.t()
      }
      
  """
  @type create_tag_option_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_provisioned_product_plans_output() :: %{
        "NextPageToken" => String.t(),
        "ProvisionedProductPlans" => list(provisioned_product_plan_summary()())
      }
      
  """
  @type list_provisioned_product_plans_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_tag_option_input() :: %{
        optional("Active") => boolean(),
        optional("Value") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type update_tag_option_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      portfolio_detail() :: %{
        "ARN" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "DisplayName" => String.t(),
        "Id" => String.t(),
        "ProviderName" => String.t()
      }
      
  """
  @type portfolio_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_aws_organizations_access_input() :: %{}
      
  """
  @type enable_aws_organizations_access_input() :: %{}

  @typedoc """

  ## Example:
      
      list_service_actions_for_provisioning_artifact_output() :: %{
        "NextPageToken" => String.t(),
        "ServiceActionSummaries" => list(service_action_summary()())
      }
      
  """
  @type list_service_actions_for_provisioning_artifact_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_option_detail() :: %{
        "Active" => boolean(),
        "Id" => String.t(),
        "Key" => String.t(),
        "Owner" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag_option_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      share_error() :: %{
        "Accounts" => list(String.t()()),
        "Error" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type share_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_node() :: %{
        "Type" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type organization_node() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_aws_organizations_access_output() :: %{}
      
  """
  @type enable_aws_organizations_access_output() :: %{}

  @typedoc """

  ## Example:
      
      list_budgets_for_resource_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("PageSize") => integer(),
        optional("PageToken") => String.t(),
        required("ResourceId") => String.t()
      }
      
  """
  @type list_budgets_for_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_portfolio_shares_output() :: %{
        "NextPageToken" => String.t(),
        "PortfolioShareDetails" => list(portfolio_share_detail()())
      }
      
  """
  @type describe_portfolio_shares_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      launch_path() :: %{
        "Id" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type launch_path() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameters_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_parameters_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_tag_option_with_resource_input() :: %{
        required("ResourceId") => String.t(),
        required("TagOptionId") => String.t()
      }
      
  """
  @type associate_tag_option_with_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provision_product_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("NotificationArns") => list(String.t()()),
        optional("PathId") => String.t(),
        optional("PathName") => String.t(),
        optional("ProductId") => String.t(),
        optional("ProductName") => String.t(),
        optional("ProvisioningArtifactId") => String.t(),
        optional("ProvisioningArtifactName") => String.t(),
        optional("ProvisioningParameters") => list(provisioning_parameter()()),
        optional("ProvisioningPreferences") => provisioning_preferences(),
        optional("Tags") => list(tag()()),
        required("ProvisionToken") => String.t(),
        required("ProvisionedProductName") => String.t()
      }
      
  """
  @type provision_product_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_launch_paths_output() :: %{
        "LaunchPathSummaries" => list(launch_path_summary()()),
        "NextPageToken" => String.t()
      }
      
  """
  @type list_launch_paths_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_provisioned_product_plan_output() :: %{
        "NextPageToken" => String.t(),
        "ProvisionedProductPlanDetails" => provisioned_product_plan_details(),
        "ResourceChanges" => list(resource_change()())
      }
      
  """
  @type describe_provisioned_product_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_portfolio_share_status_input() :: %{
        required("PortfolioShareToken") => String.t()
      }
      
  """
  @type describe_portfolio_share_status_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resources_for_tag_option_output() :: %{
        "PageToken" => String.t(),
        "ResourceDetails" => list(resource_detail()())
      }
      
  """
  @type list_resources_for_tag_option_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_product_from_portfolio_input() :: %{
        optional("AcceptLanguage") => String.t(),
        required("PortfolioId") => String.t(),
        required("ProductId") => String.t()
      }
      
  """
  @type disassociate_product_from_portfolio_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_provisioned_product_plan_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("IgnoreErrors") => boolean(),
        required("PlanId") => String.t()
      }
      
  """
  @type delete_provisioned_product_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_product_output() :: %{
        "ProductViewDetail" => product_view_detail(),
        "ProvisioningArtifactDetail" => provisioning_artifact_detail(),
        "Tags" => list(tag()())
      }
      
  """
  @type create_product_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_action_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("Definition") => map(),
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type update_service_action_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_disassociate_service_action_from_provisioning_artifact_output() :: %{
        "FailedServiceActionAssociations" => list(failed_service_action_association()())
      }
      
  """
  @type batch_disassociate_service_action_from_provisioning_artifact_output() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:
      
      create_product_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("Description") => String.t(),
        optional("Distributor") => String.t(),
        optional("ProvisioningArtifactParameters") => provisioning_artifact_properties(),
        optional("SourceConnection") => source_connection(),
        optional("SupportDescription") => String.t(),
        optional("SupportEmail") => String.t(),
        optional("SupportUrl") => String.t(),
        optional("Tags") => list(tag()()),
        required("IdempotencyToken") => String.t(),
        required("Name") => String.t(),
        required("Owner") => String.t(),
        required("ProductType") => list(any())
      }
      
  """
  @type create_product_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_actions_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("PageSize") => integer(),
        optional("PageToken") => String.t()
      }
      
  """
  @type list_service_actions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_as_provisioned_product_input() :: %{
        optional("AcceptLanguage") => String.t(),
        required("IdempotencyToken") => String.t(),
        required("PhysicalId") => String.t(),
        required("ProductId") => String.t(),
        required("ProvisionedProductName") => String.t(),
        required("ProvisioningArtifactId") => String.t()
      }
      
  """
  @type import_as_provisioned_product_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_constraint_input() :: %{
        optional("AcceptLanguage") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type describe_constraint_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execute_provisioned_product_service_action_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("Parameters") => map(),
        required("ExecuteToken") => String.t(),
        required("ProvisionedProductId") => String.t(),
        required("ServiceActionId") => String.t()
      }
      
  """
  @type execute_provisioned_product_service_action_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioning_parameter() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type provisioning_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_principal_with_portfolio_output() :: %{}
      
  """
  @type associate_principal_with_portfolio_output() :: %{}

  @typedoc """

  ## Example:
      
      failed_service_action_association() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t(),
        "ProductId" => String.t(),
        "ProvisioningArtifactId" => String.t(),
        "ServiceActionId" => String.t()
      }
      
  """
  @type failed_service_action_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      portfolio_share_detail() :: %{
        "Accepted" => boolean(),
        "PrincipalId" => String.t(),
        "SharePrincipals" => boolean(),
        "ShareTagOptions" => boolean(),
        "Type" => list(any())
      }
      
  """
  @type portfolio_share_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_provisioning_artifacts_output() :: %{
        "NextPageToken" => String.t(),
        "ProvisioningArtifactDetails" => list(provisioning_artifact_detail()())
      }
      
  """
  @type list_provisioning_artifacts_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_parameter() :: %{
        "DefaultValues" => list(String.t()()),
        "Name" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type execution_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_provisioning_artifact_input() :: %{
        optional("AcceptLanguage") => String.t(),
        required("ProductId") => String.t(),
        required("ProvisioningArtifactId") => String.t()
      }
      
  """
  @type delete_provisioning_artifact_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_provisioned_product_plan_output() :: %{}
      
  """
  @type delete_provisioned_product_plan_output() :: %{}

  @typedoc """

  ## Example:
      
      update_provisioned_product_output() :: %{
        "RecordDetail" => record_detail()
      }
      
  """
  @type update_provisioned_product_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      record_output() :: %{
        "Description" => String.t(),
        "OutputKey" => String.t(),
        "OutputValue" => String.t()
      }
      
  """
  @type record_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_provisioning_preferences() :: %{
        "StackSetAccounts" => list(String.t()()),
        "StackSetFailureToleranceCount" => integer(),
        "StackSetFailureTolerancePercentage" => integer(),
        "StackSetMaxConcurrencyCount" => integer(),
        "StackSetMaxConcurrencyPercentage" => integer(),
        "StackSetOperationType" => list(any()),
        "StackSetRegions" => list(String.t()())
      }
      
  """
  @type update_provisioning_preferences() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      product_view_summary() :: %{
        "Distributor" => String.t(),
        "HasDefaultPath" => boolean(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Owner" => String.t(),
        "ProductId" => String.t(),
        "ShortDescription" => String.t(),
        "SupportDescription" => String.t(),
        "SupportEmail" => String.t(),
        "SupportUrl" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type product_view_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tag_options_output() :: %{
        "PageToken" => String.t(),
        "TagOptionDetails" => list(tag_option_detail()())
      }
      
  """
  @type list_tag_options_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_provisioned_product_plan_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("PageSize") => integer(),
        optional("PageToken") => String.t(),
        required("PlanId") => String.t()
      }
      
  """
  @type describe_provisioned_product_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_provisioning_artifact_input() :: %{
        optional("AcceptLanguage") => String.t(),
        required("IdempotencyToken") => String.t(),
        required("Parameters") => provisioning_artifact_properties(),
        required("ProductId") => String.t()
      }
      
  """
  @type create_provisioning_artifact_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioning_artifact_parameter() :: %{
        "DefaultValue" => String.t(),
        "Description" => String.t(),
        "IsNoEcho" => boolean(),
        "ParameterConstraints" => parameter_constraints(),
        "ParameterKey" => String.t(),
        "ParameterType" => String.t()
      }
      
  """
  @type provisioning_artifact_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_constraint_output() :: %{}
      
  """
  @type delete_constraint_output() :: %{}

  @typedoc """

  ## Example:
      
      list_launch_paths_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("PageSize") => integer(),
        optional("PageToken") => String.t(),
        required("ProductId") => String.t()
      }
      
  """
  @type list_launch_paths_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_products_as_admin_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("Filters") => map(),
        optional("PageSize") => integer(),
        optional("PageToken") => String.t(),
        optional("PortfolioId") => String.t(),
        optional("ProductSource") => list(any()),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type search_products_as_admin_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_provisioning_artifact_output() :: %{
        "Info" => map(),
        "ProvisioningArtifactDetail" => provisioning_artifact_detail(),
        "Status" => list(any())
      }
      
  """
  @type update_provisioning_artifact_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_portfolio_share_output() :: %{}
      
  """
  @type reject_portfolio_share_output() :: %{}

  @typedoc """

  ## Example:
      
      notify_update_provisioned_product_engine_workflow_result_input() :: %{
        optional("FailureReason") => String.t(),
        optional("Outputs") => list(record_output()()),
        required("IdempotencyToken") => String.t(),
        required("RecordId") => String.t(),
        required("Status") => list(any()),
        required("WorkflowToken") => String.t()
      }
      
  """
  @type notify_update_provisioned_product_engine_workflow_result_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_portfolio_access_output() :: %{
        "AccountIds" => list(String.t()()),
        "NextPageToken" => String.t()
      }
      
  """
  @type list_portfolio_access_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_provisioned_product_plan_output() :: %{
        "PlanId" => String.t(),
        "PlanName" => String.t(),
        "ProvisionProductId" => String.t(),
        "ProvisionedProductName" => String.t(),
        "ProvisioningArtifactId" => String.t()
      }
      
  """
  @type create_provisioned_product_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_tag_option_output() :: %{
        "TagOptionDetail" => tag_option_detail()
      }
      
  """
  @type update_tag_option_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aws_organizations_access_status_input() :: %{}
      
  """
  @type get_aws_organizations_access_status_input() :: %{}

  @typedoc """

  ## Example:
      
      associate_principal_with_portfolio_input() :: %{
        optional("AcceptLanguage") => String.t(),
        required("PortfolioId") => String.t(),
        required("PrincipalARN") => String.t(),
        required("PrincipalType") => list(any())
      }
      
  """
  @type associate_principal_with_portfolio_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_actions_output() :: %{
        "NextPageToken" => String.t(),
        "ServiceActionSummaries" => list(service_action_summary()())
      }
      
  """
  @type list_service_actions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_portfolio_share_output() :: %{}
      
  """
  @type accept_portfolio_share_output() :: %{}

  @typedoc """

  ## Example:
      
      list_portfolios_for_product_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("PageSize") => integer(),
        optional("PageToken") => String.t(),
        required("ProductId") => String.t()
      }
      
  """
  @type list_portfolios_for_product_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_portfolios_for_product_output() :: %{
        "NextPageToken" => String.t(),
        "PortfolioDetails" => list(portfolio_detail()())
      }
      
  """
  @type list_portfolios_for_product_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_portfolio_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("AddTags") => list(tag()()),
        optional("Description") => String.t(),
        optional("DisplayName") => String.t(),
        optional("ProviderName") => String.t(),
        optional("RemoveTags") => list(String.t()()),
        required("Id") => String.t()
      }
      
  """
  @type update_portfolio_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_product_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("Id") => String.t(),
        optional("Name") => String.t()
      }
      
  """
  @type describe_product_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_provisioned_product_properties_output() :: %{
        "ProvisionedProductId" => String.t(),
        "ProvisionedProductProperties" => map(),
        "RecordId" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type update_provisioned_product_properties_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_option_summary() :: %{
        "Key" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type tag_option_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_constraints_for_portfolio_output() :: %{
        "ConstraintDetails" => list(constraint_detail()()),
        "NextPageToken" => String.t()
      }
      
  """
  @type list_constraints_for_portfolio_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioning_artifact() :: %{
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "Guidance" => list(any()),
        "Id" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type provisioning_artifact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_provisioning_artifact_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("IncludeProvisioningArtifactParameters") => boolean(),
        optional("ProductId") => String.t(),
        optional("ProductName") => String.t(),
        optional("ProvisioningArtifactId") => String.t(),
        optional("ProvisioningArtifactName") => String.t(),
        optional("Verbose") => boolean()
      }
      
  """
  @type describe_provisioning_artifact_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_action_output() :: %{}
      
  """
  @type delete_service_action_output() :: %{}

  @typedoc """

  ## Example:
      
      search_products_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("Filters") => map(),
        optional("PageSize") => integer(),
        optional("PageToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type search_products_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_dashboard() :: %{
        "Name" => String.t()
      }
      
  """
  @type cloud_watch_dashboard() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_service_action_with_provisioning_artifact_output() :: %{}
      
  """
  @type associate_service_action_with_provisioning_artifact_output() :: %{}

  @typedoc """

  ## Example:
      
      describe_portfolio_share_status_output() :: %{
        "OrganizationNodeValue" => String.t(),
        "PortfolioId" => String.t(),
        "PortfolioShareToken" => String.t(),
        "ShareDetails" => share_details(),
        "Status" => list(any())
      }
      
  """
  @type describe_portfolio_share_status_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_change_detail() :: %{
        "CausingEntity" => String.t(),
        "Evaluation" => list(any()),
        "Target" => resource_target_definition()
      }
      
  """
  @type resource_change_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_service_action_output() :: %{
        "ServiceActionDetail" => service_action_detail()
      }
      
  """
  @type describe_service_action_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resources_for_tag_option_input() :: %{
        optional("PageSize") => integer(),
        optional("PageToken") => String.t(),
        optional("ResourceType") => String.t(),
        required("TagOptionId") => String.t()
      }
      
  """
  @type list_resources_for_tag_option_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_provisioning_parameter() :: %{
        "Key" => String.t(),
        "UsePreviousValue" => boolean(),
        "Value" => String.t()
      }
      
  """
  @type update_provisioning_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_provisioning_artifact_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("Active") => boolean(),
        optional("Description") => String.t(),
        optional("Guidance") => list(any()),
        optional("Name") => String.t(),
        required("ProductId") => String.t(),
        required("ProvisioningArtifactId") => String.t()
      }
      
  """
  @type update_provisioning_artifact_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_connection_parameters() :: %{
        "CodeStar" => code_star_parameters()
      }
      
  """
  @type source_connection_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      last_sync() :: %{
        "LastSuccessfulSyncProvisioningArtifactId" => String.t(),
        "LastSuccessfulSyncTime" => non_neg_integer(),
        "LastSyncStatus" => list(any()),
        "LastSyncStatusMessage" => String.t(),
        "LastSyncTime" => non_neg_integer()
      }
      
  """
  @type last_sync() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tag_option_input() :: %{
        required("Id") => String.t()
      }
      
  """
  @type delete_tag_option_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_action_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("Description") => String.t(),
        required("Definition") => map(),
        required("DefinitionType") => list(any()),
        required("IdempotencyToken") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_service_action_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stack_instances_for_provisioned_product_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("PageSize") => integer(),
        optional("PageToken") => String.t(),
        required("ProvisionedProductId") => String.t()
      }
      
  """
  @type list_stack_instances_for_provisioned_product_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_products_output() :: %{
        "NextPageToken" => String.t(),
        "ProductViewAggregations" => map(),
        "ProductViewSummaries" => list(product_view_summary()())
      }
      
  """
  @type search_products_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioning_artifact_preferences() :: %{
        "StackSetAccounts" => list(String.t()()),
        "StackSetRegions" => list(String.t()())
      }
      
  """
  @type provisioning_artifact_preferences() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_action_output() :: %{
        "ServiceActionDetail" => service_action_detail()
      }
      
  """
  @type create_service_action_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_level_filter() :: %{
        "Key" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type access_level_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_option_not_migrated_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type tag_option_not_migrated_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_constraint_output() :: %{
        "ConstraintDetail" => constraint_detail(),
        "ConstraintParameters" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type update_constraint_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_record_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("PageSize") => integer(),
        optional("PageToken") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type describe_record_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_service_action_from_provisioning_artifact_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("IdempotencyToken") => String.t(),
        required("ProductId") => String.t(),
        required("ProvisioningArtifactId") => String.t(),
        required("ServiceActionId") => String.t()
      }
      
  """
  @type disassociate_service_action_from_provisioning_artifact_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_service_action_execution_parameters_output() :: %{
        "ServiceActionParameters" => list(execution_parameter()())
      }
      
  """
  @type describe_service_action_execution_parameters_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_provisioned_product_outputs_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("OutputKeys") => list(String.t()()),
        optional("PageSize") => integer(),
        optional("PageToken") => String.t(),
        optional("ProvisionedProductId") => String.t(),
        optional("ProvisionedProductName") => String.t()
      }
      
  """
  @type get_provisioned_product_outputs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_constraint_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("Description") => String.t(),
        optional("Parameters") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type update_constraint_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_provisioned_products_output() :: %{
        "NextPageToken" => String.t(),
        "ProvisionedProducts" => list(provisioned_product_attribute()()),
        "TotalResultsCount" => integer()
      }
      
  """
  @type search_provisioned_products_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_copy_product_status_input() :: %{
        optional("AcceptLanguage") => String.t(),
        required("CopyProductToken") => String.t()
      }
      
  """
  @type describe_copy_product_status_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioning_artifact_output() :: %{
        "Description" => String.t(),
        "Key" => String.t()
      }
      
  """
  @type provisioning_artifact_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notify_provision_product_engine_workflow_result_input() :: %{
        optional("FailureReason") => String.t(),
        optional("Outputs") => list(record_output()()),
        optional("ResourceIdentifier") => engine_workflow_resource_identifier(),
        required("IdempotencyToken") => String.t(),
        required("RecordId") => String.t(),
        required("Status") => list(any()),
        required("WorkflowToken") => String.t()
      }
      
  """
  @type notify_provision_product_engine_workflow_result_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_portfolio_share_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("PortfolioShareType") => list(any()),
        required("PortfolioId") => String.t()
      }
      
  """
  @type reject_portfolio_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      record_detail() :: %{
        "CreatedTime" => non_neg_integer(),
        "LaunchRoleArn" => String.t(),
        "PathId" => String.t(),
        "ProductId" => String.t(),
        "ProvisionedProductId" => String.t(),
        "ProvisionedProductName" => String.t(),
        "ProvisionedProductType" => String.t(),
        "ProvisioningArtifactId" => String.t(),
        "RecordErrors" => list(record_error()()),
        "RecordId" => String.t(),
        "RecordTags" => list(record_tag()()),
        "RecordType" => String.t(),
        "Status" => list(any()),
        "UpdatedTime" => non_neg_integer()
      }
      
  """
  @type record_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_action_detail() :: %{
        "Definition" => map(),
        "ServiceActionSummary" => service_action_summary()
      }
      
  """
  @type service_action_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_budget_with_resource_input() :: %{
        required("BudgetName") => String.t(),
        required("ResourceId") => String.t()
      }
      
  """
  @type associate_budget_with_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_provisioned_product_properties_input() :: %{
        optional("AcceptLanguage") => String.t(),
        required("IdempotencyToken") => String.t(),
        required("ProvisionedProductId") => String.t(),
        required("ProvisionedProductProperties") => map()
      }
      
  """
  @type update_provisioned_product_properties_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_service_action_execution_parameters_input() :: %{
        optional("AcceptLanguage") => String.t(),
        required("ProvisionedProductId") => String.t(),
        required("ServiceActionId") => String.t()
      }
      
  """
  @type describe_service_action_execution_parameters_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_provisioning_artifacts_input() :: %{
        optional("AcceptLanguage") => String.t(),
        required("ProductId") => String.t()
      }
      
  """
  @type list_provisioning_artifacts_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_tag_option_with_resource_output() :: %{}
      
  """
  @type associate_tag_option_with_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      list_stack_instances_for_provisioned_product_output() :: %{
        "NextPageToken" => String.t(),
        "StackInstances" => list(stack_instance()())
      }
      
  """
  @type list_stack_instances_for_provisioned_product_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_actions_for_provisioning_artifact_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("PageSize") => integer(),
        optional("PageToken") => String.t(),
        required("ProductId") => String.t(),
        required("ProvisioningArtifactId") => String.t()
      }
      
  """
  @type list_service_actions_for_provisioning_artifact_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation_not_supported_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type operation_not_supported_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scan_provisioned_products_output() :: %{
        "NextPageToken" => String.t(),
        "ProvisionedProducts" => list(provisioned_product_detail()())
      }
      
  """
  @type scan_provisioned_products_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      terminate_provisioned_product_output() :: %{
        "RecordDetail" => record_detail()
      }
      
  """
  @type terminate_provisioned_product_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_action_output() :: %{
        "ServiceActionDetail" => service_action_detail()
      }
      
  """
  @type update_service_action_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_product_input() :: %{
        optional("AcceptLanguage") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type delete_product_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_portfolio_share_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("AccountId") => String.t(),
        optional("OrganizationNode") => organization_node(),
        optional("SharePrincipals") => boolean(),
        optional("ShareTagOptions") => boolean(),
        required("PortfolioId") => String.t()
      }
      
  """
  @type create_portfolio_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_provisioning_artifact_output() :: %{}
      
  """
  @type delete_provisioning_artifact_output() :: %{}

  @typedoc """

  ## Example:
      
      list_record_history_output() :: %{
        "NextPageToken" => String.t(),
        "RecordDetails" => list(record_detail()())
      }
      
  """
  @type list_record_history_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_change() :: %{
        "Action" => list(any()),
        "Details" => list(resource_change_detail()()),
        "LogicalResourceId" => String.t(),
        "PhysicalResourceId" => String.t(),
        "Replacement" => list(any()),
        "ResourceType" => String.t(),
        "Scope" => list(list(any())())
      }
      
  """
  @type resource_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_portfolio_share_output() :: %{
        "PortfolioShareToken" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type update_portfolio_share_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      launch_path_summary() :: %{
        "ConstraintSummaries" => list(constraint_summary()()),
        "Id" => String.t(),
        "Name" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type launch_path_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_budget_from_resource_input() :: %{
        required("BudgetName") => String.t(),
        required("ResourceId") => String.t()
      }
      
  """
  @type disassociate_budget_from_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_resource_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type duplicate_resource_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_product_as_admin_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("Id") => String.t(),
        optional("Name") => String.t(),
        optional("SourcePortfolioId") => String.t()
      }
      
  """
  @type describe_product_as_admin_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_product_as_admin_output() :: %{
        "Budgets" => list(budget_detail()()),
        "ProductViewDetail" => product_view_detail(),
        "ProvisioningArtifactSummaries" => list(provisioning_artifact_summary()()),
        "TagOptions" => list(tag_option_detail()()),
        "Tags" => list(tag()())
      }
      
  """
  @type describe_product_as_admin_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_product_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("AddTags") => list(tag()()),
        optional("Description") => String.t(),
        optional("Distributor") => String.t(),
        optional("Name") => String.t(),
        optional("Owner") => String.t(),
        optional("RemoveTags") => list(String.t()()),
        optional("SourceConnection") => source_connection(),
        optional("SupportDescription") => String.t(),
        optional("SupportEmail") => String.t(),
        optional("SupportUrl") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type update_product_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_record_history_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("AccessLevelFilter") => access_level_filter(),
        optional("PageSize") => integer(),
        optional("PageToken") => String.t(),
        optional("SearchFilter") => list_record_history_search_filter()
      }
      
  """
  @type list_record_history_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioned_product_plan_details() :: %{
        "CreatedTime" => non_neg_integer(),
        "NotificationArns" => list(String.t()()),
        "PathId" => String.t(),
        "PlanId" => String.t(),
        "PlanName" => String.t(),
        "PlanType" => list(any()),
        "ProductId" => String.t(),
        "ProvisionProductId" => String.t(),
        "ProvisionProductName" => String.t(),
        "ProvisioningArtifactId" => String.t(),
        "ProvisioningParameters" => list(update_provisioning_parameter()()),
        "Status" => list(any()),
        "StatusMessage" => String.t(),
        "Tags" => list(tag()()),
        "UpdatedTime" => non_neg_integer()
      }
      
  """
  @type provisioned_product_plan_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_organization_portfolio_access_input() :: %{
        optional("AcceptLanguage") => String.t(),
        optional("PageSize") => integer(),
        optional("PageToken") => String.t(),
        required("OrganizationNodeType") => list(any()),
        required("PortfolioId") => String.t()
      }
      
  """
  @type list_organization_portfolio_access_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioning_preferences() :: %{
        "StackSetAccounts" => list(String.t()()),
        "StackSetFailureToleranceCount" => integer(),
        "StackSetFailureTolerancePercentage" => integer(),
        "StackSetMaxConcurrencyCount" => integer(),
        "StackSetMaxConcurrencyPercentage" => integer(),
        "StackSetRegions" => list(String.t()())
      }
      
  """
  @type provisioning_preferences() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tag_option_output() :: %{}
      
  """
  @type delete_tag_option_output() :: %{}

  @typedoc """

  ## Example:
      
      resource_detail() :: %{
        "ARN" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "Id" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type resource_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provision_product_output() :: %{
        "RecordDetail" => record_detail()
      }
      
  """
  @type provision_product_output() :: %{String.t() => any()}

  @type accept_portfolio_share_errors() ::
          limit_exceeded_exception()
          | invalid_parameters_exception()
          | resource_not_found_exception()

  @type associate_budget_with_resource_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | invalid_parameters_exception()
          | resource_not_found_exception()

  @type associate_principal_with_portfolio_errors() ::
          limit_exceeded_exception()
          | invalid_parameters_exception()
          | resource_not_found_exception()

  @type associate_product_with_portfolio_errors() ::
          limit_exceeded_exception()
          | invalid_parameters_exception()
          | resource_not_found_exception()

  @type associate_service_action_with_provisioning_artifact_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | invalid_parameters_exception()
          | resource_not_found_exception()

  @type associate_tag_option_with_resource_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | tag_option_not_migrated_exception()
          | invalid_parameters_exception()
          | resource_not_found_exception()
          | invalid_state_exception()

  @type batch_associate_service_action_with_provisioning_artifact_errors() ::
          invalid_parameters_exception()

  @type batch_disassociate_service_action_from_provisioning_artifact_errors() ::
          invalid_parameters_exception()

  @type copy_product_errors() :: invalid_parameters_exception() | resource_not_found_exception()

  @type create_constraint_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | invalid_parameters_exception()
          | resource_not_found_exception()

  @type create_portfolio_errors() ::
          limit_exceeded_exception()
          | tag_option_not_migrated_exception()
          | invalid_parameters_exception()

  @type create_portfolio_share_errors() ::
          operation_not_supported_exception()
          | limit_exceeded_exception()
          | invalid_parameters_exception()
          | resource_not_found_exception()
          | invalid_state_exception()

  @type create_product_errors() ::
          limit_exceeded_exception()
          | tag_option_not_migrated_exception()
          | invalid_parameters_exception()

  @type create_provisioned_product_plan_errors() ::
          invalid_parameters_exception()
          | resource_not_found_exception()
          | invalid_state_exception()

  @type create_provisioning_artifact_errors() ::
          limit_exceeded_exception()
          | invalid_parameters_exception()
          | resource_not_found_exception()

  @type create_service_action_errors() ::
          limit_exceeded_exception() | invalid_parameters_exception()

  @type create_tag_option_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | tag_option_not_migrated_exception()

  @type delete_constraint_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type delete_portfolio_errors() ::
          tag_option_not_migrated_exception()
          | invalid_parameters_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_portfolio_share_errors() ::
          operation_not_supported_exception()
          | invalid_parameters_exception()
          | resource_not_found_exception()
          | invalid_state_exception()

  @type delete_product_errors() ::
          tag_option_not_migrated_exception()
          | invalid_parameters_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_provisioned_product_plan_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type delete_provisioning_artifact_errors() ::
          invalid_parameters_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_service_action_errors() ::
          resource_not_found_exception() | resource_in_use_exception()

  @type delete_tag_option_errors() ::
          tag_option_not_migrated_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type describe_constraint_errors() :: resource_not_found_exception()

  @type describe_copy_product_status_errors() :: resource_not_found_exception()

  @type describe_portfolio_errors() :: resource_not_found_exception()

  @type describe_portfolio_share_status_errors() ::
          operation_not_supported_exception()
          | invalid_parameters_exception()
          | resource_not_found_exception()

  @type describe_portfolio_shares_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type describe_product_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type describe_product_as_admin_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type describe_product_view_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type describe_provisioned_product_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type describe_provisioned_product_plan_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type describe_provisioning_artifact_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type describe_provisioning_parameters_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type describe_record_errors() :: resource_not_found_exception()

  @type describe_service_action_errors() :: resource_not_found_exception()

  @type describe_service_action_execution_parameters_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type describe_tag_option_errors() ::
          tag_option_not_migrated_exception() | resource_not_found_exception()

  @type disable_aws_organizations_access_errors() ::
          operation_not_supported_exception()
          | resource_not_found_exception()
          | invalid_state_exception()

  @type disassociate_budget_from_resource_errors() :: resource_not_found_exception()

  @type disassociate_principal_from_portfolio_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type disassociate_product_from_portfolio_errors() ::
          invalid_parameters_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type disassociate_service_action_from_provisioning_artifact_errors() ::
          resource_not_found_exception()

  @type disassociate_tag_option_from_resource_errors() ::
          tag_option_not_migrated_exception() | resource_not_found_exception()

  @type enable_aws_organizations_access_errors() ::
          operation_not_supported_exception()
          | resource_not_found_exception()
          | invalid_state_exception()

  @type execute_provisioned_product_plan_errors() ::
          invalid_parameters_exception()
          | resource_not_found_exception()
          | invalid_state_exception()

  @type execute_provisioned_product_service_action_errors() ::
          invalid_parameters_exception()
          | resource_not_found_exception()
          | invalid_state_exception()

  @type get_aws_organizations_access_status_errors() ::
          operation_not_supported_exception() | resource_not_found_exception()

  @type get_provisioned_product_outputs_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type import_as_provisioned_product_errors() ::
          duplicate_resource_exception()
          | invalid_parameters_exception()
          | resource_not_found_exception()
          | invalid_state_exception()

  @type list_accepted_portfolio_shares_errors() ::
          operation_not_supported_exception() | invalid_parameters_exception()

  @type list_budgets_for_resource_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type list_constraints_for_portfolio_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type list_launch_paths_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type list_organization_portfolio_access_errors() ::
          operation_not_supported_exception()
          | invalid_parameters_exception()
          | resource_not_found_exception()

  @type list_portfolio_access_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type list_portfolios_errors() :: invalid_parameters_exception()

  @type list_portfolios_for_product_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type list_principals_for_portfolio_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type list_provisioned_product_plans_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type list_provisioning_artifacts_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type list_provisioning_artifacts_for_service_action_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type list_record_history_errors() :: invalid_parameters_exception()

  @type list_resources_for_tag_option_errors() ::
          tag_option_not_migrated_exception()
          | invalid_parameters_exception()
          | resource_not_found_exception()

  @type list_service_actions_errors() :: invalid_parameters_exception()

  @type list_service_actions_for_provisioning_artifact_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type list_stack_instances_for_provisioned_product_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type list_tag_options_errors() ::
          tag_option_not_migrated_exception() | invalid_parameters_exception()

  @type notify_provision_product_engine_workflow_result_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type notify_terminate_provisioned_product_engine_workflow_result_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type notify_update_provisioned_product_engine_workflow_result_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type provision_product_errors() ::
          duplicate_resource_exception()
          | invalid_parameters_exception()
          | resource_not_found_exception()

  @type reject_portfolio_share_errors() :: resource_not_found_exception()

  @type scan_provisioned_products_errors() :: invalid_parameters_exception()

  @type search_products_errors() :: invalid_parameters_exception()

  @type search_products_as_admin_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type search_provisioned_products_errors() :: invalid_parameters_exception()

  @type terminate_provisioned_product_errors() :: resource_not_found_exception()

  @type update_constraint_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type update_portfolio_errors() ::
          limit_exceeded_exception()
          | tag_option_not_migrated_exception()
          | invalid_parameters_exception()
          | resource_not_found_exception()

  @type update_portfolio_share_errors() ::
          operation_not_supported_exception()
          | invalid_parameters_exception()
          | resource_not_found_exception()
          | invalid_state_exception()

  @type update_product_errors() ::
          tag_option_not_migrated_exception()
          | invalid_parameters_exception()
          | resource_not_found_exception()

  @type update_provisioned_product_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type update_provisioned_product_properties_errors() ::
          invalid_parameters_exception()
          | resource_not_found_exception()
          | invalid_state_exception()

  @type update_provisioning_artifact_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type update_service_action_errors() ::
          invalid_parameters_exception() | resource_not_found_exception()

  @type update_tag_option_errors() ::
          duplicate_resource_exception()
          | tag_option_not_migrated_exception()
          | invalid_parameters_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2015-12-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "servicecatalog",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Service Catalog",
      signature_version: "v4",
      signing_name: "servicecatalog",
      target_prefix: "AWS242ServiceCatalogService"
    }
  end

  @doc """
   
  Accepts an offer to share the specified portfolio.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20AcceptPortfolioShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:accept_portfolio_share_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("PortfolioShareType") => list(any()),
      required("PortfolioId") => String.t()
    }
  """
  @spec accept_portfolio_share(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, accept_portfolio_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_portfolio_share_errors()}
  def accept_portfolio_share(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AcceptPortfolioShare", input, options)
  end

  @doc """
   
  Associates the specified budget with the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20AssociateBudgetWithResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_budget_with_resource_input`)
    %{
      required("BudgetName") => String.t(),
      required("ResourceId") => String.t()
    }
  """
  @spec associate_budget_with_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, associate_budget_with_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_budget_with_resource_errors()}
  def associate_budget_with_resource(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateBudgetWithResource", input, options)
  end

  @doc """
   
  Associates the specified principal ARN with the specified portfolio. If you
  share the portfolio with principal name sharing enabled, the `PrincipalARN`
  association is included in the share.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20AssociatePrincipalWithPortfolio&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_principal_with_portfolio_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      required("PortfolioId") => String.t(),
      required("PrincipalARN") => String.t(),
      required("PrincipalType") => list(any())
    }
  """
  @spec associate_principal_with_portfolio(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, associate_principal_with_portfolio_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_principal_with_portfolio_errors()}
  def associate_principal_with_portfolio(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociatePrincipalWithPortfolio", input, options)
  end

  @doc """
   
  Associates the specified product with the specified portfolio.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20AssociateProductWithPortfolio&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_product_with_portfolio_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("SourcePortfolioId") => String.t(),
      required("PortfolioId") => String.t(),
      required("ProductId") => String.t()
    }
  """
  @spec associate_product_with_portfolio(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, associate_product_with_portfolio_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_product_with_portfolio_errors()}
  def associate_product_with_portfolio(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateProductWithPortfolio", input, options)
  end

  @doc """
   
  Associates a self-service action with a provisioning artifact.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20AssociateServiceActionWithProvisioningArtifact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_service_action_with_provisioning_artifact_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("IdempotencyToken") => String.t(),
      required("ProductId") => String.t(),
      required("ProvisioningArtifactId") => String.t(),
      required("ServiceActionId") => String.t()
    }
  """
  @spec associate_service_action_with_provisioning_artifact(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, associate_service_action_with_provisioning_artifact_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_service_action_with_provisioning_artifact_errors()}
  def associate_service_action_with_provisioning_artifact(
        %Client{} = client,
        input,
        options \\ []
      )
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "AssociateServiceActionWithProvisioningArtifact",
      input,
      options
    )
  end

  @doc """
   
  Associate the specified TagOption with the specified portfolio or product.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20AssociateTagOptionWithResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:associate_tag_option_with_resource_input`)
    %{
      required("ResourceId") => String.t(),
      required("TagOptionId") => String.t()
    }
  """
  @spec associate_tag_option_with_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, associate_tag_option_with_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_tag_option_with_resource_errors()}
  def associate_tag_option_with_resource(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateTagOptionWithResource", input, options)
  end

  @doc """
   
  Associates multiple self-service actions with provisioning artifacts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20BatchAssociateServiceActionWithProvisioningArtifact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:batch_associate_service_action_with_provisioning_artifact_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      required("ServiceActionAssociations") => list(service_action_association()())
    }
  """
  @spec batch_associate_service_action_with_provisioning_artifact(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, batch_associate_service_action_with_provisioning_artifact_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_associate_service_action_with_provisioning_artifact_errors()}
  def batch_associate_service_action_with_provisioning_artifact(
        %Client{} = client,
        input,
        options \\ []
      )
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "BatchAssociateServiceActionWithProvisioningArtifact",
      input,
      options
    )
  end

  @doc """
   
  Disassociates a batch of self-service actions from the specified provisioning
  artifact.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20BatchDisassociateServiceActionFromProvisioningArtifact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:batch_disassociate_service_action_from_provisioning_artifact_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      required("ServiceActionAssociations") => list(service_action_association()())
    }
  """
  @spec batch_disassociate_service_action_from_provisioning_artifact(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, batch_disassociate_service_action_from_provisioning_artifact_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_disassociate_service_action_from_provisioning_artifact_errors()}
  def batch_disassociate_service_action_from_provisioning_artifact(
        %Client{} = client,
        input,
        options \\ []
      )
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "BatchDisassociateServiceActionFromProvisioningArtifact",
      input,
      options
    )
  end

  @doc """
   
  Copies the specified source product to the specified target product or a new
  product. You can copy a product to the same account or another account. You
  can copy a product to the same Region or another Region. If you copy a product
  to another account, you must first share the product in a portfolio using
  `CreatePortfolioShare`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20CopyProduct&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:copy_product_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("CopyOptions") => list(list(any())()),
      optional("SourceProvisioningArtifactIdentifiers") => list(map()()),
      optional("TargetProductId") => String.t(),
      optional("TargetProductName") => String.t(),
      required("IdempotencyToken") => String.t(),
      required("SourceProductArn") => String.t()
    }
  """
  @spec copy_product(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, copy_product_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, copy_product_errors()}
  def copy_product(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CopyProduct", input, options)
  end

  @doc """
   
  Creates a constraint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20CreateConstraint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_constraint_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("Description") => String.t(),
      required("IdempotencyToken") => String.t(),
      required("Parameters") => String.t(),
      required("PortfolioId") => String.t(),
      required("ProductId") => String.t(),
      required("Type") => String.t()
    }
  """
  @spec create_constraint(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_constraint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_constraint_errors()}
  def create_constraint(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateConstraint", input, options)
  end

  @doc """
   
  Creates a portfolio.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20CreatePortfolio&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_portfolio_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("Description") => String.t(),
      optional("Tags") => list(tag()()),
      required("DisplayName") => String.t(),
      required("IdempotencyToken") => String.t(),
      required("ProviderName") => String.t()
    }
  """
  @spec create_portfolio(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_portfolio_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_portfolio_errors()}
  def create_portfolio(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePortfolio", input, options)
  end

  @doc """
   
  Shares the specified portfolio with the specified account or organization node.
  Shares to an organization node can only be created by the management account
  of an organization or by a delegated administrator. You can share portfolios
  to an organization, an organizational unit, or a specific account. Note that
  if a delegated admin is de-registered, they can no longer create portfolio
  shares.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20CreatePortfolioShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_portfolio_share_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("AccountId") => String.t(),
      optional("OrganizationNode") => organization_node(),
      optional("SharePrincipals") => boolean(),
      optional("ShareTagOptions") => boolean(),
      required("PortfolioId") => String.t()
    }
  """
  @spec create_portfolio_share(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_portfolio_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_portfolio_share_errors()}
  def create_portfolio_share(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePortfolioShare", input, options)
  end

  @doc """
   
  Creates a product. A delegated admin is authorized to invoke this command.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20CreateProduct&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_product_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("Description") => String.t(),
      optional("Distributor") => String.t(),
      optional("ProvisioningArtifactParameters") => provisioning_artifact_properties(),
      optional("SourceConnection") => source_connection(),
      optional("SupportDescription") => String.t(),
      optional("SupportEmail") => String.t(),
      optional("SupportUrl") => String.t(),
      optional("Tags") => list(tag()()),
      required("IdempotencyToken") => String.t(),
      required("Name") => String.t(),
      required("Owner") => String.t(),
      required("ProductType") => list(any())
    }
  """
  @spec create_product(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_product_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_product_errors()}
  def create_product(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateProduct", input, options)
  end

  @doc """
   
  Creates a plan. A plan includes the list of resources to be created (when
  provisioning a new product) or modified (when updating a provisioned product)
  when the plan is executed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20CreateProvisionedProductPlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_provisioned_product_plan_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("NotificationArns") => list(String.t()()),
      optional("PathId") => String.t(),
      optional("ProvisioningParameters") => list(update_provisioning_parameter()()),
      optional("Tags") => list(tag()()),
      required("IdempotencyToken") => String.t(),
      required("PlanName") => String.t(),
      required("PlanType") => list(any()),
      required("ProductId") => String.t(),
      required("ProvisionedProductName") => String.t(),
      required("ProvisioningArtifactId") => String.t()
    }
  """
  @spec create_provisioned_product_plan(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_provisioned_product_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_provisioned_product_plan_errors()}
  def create_provisioned_product_plan(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateProvisionedProductPlan", input, options)
  end

  @doc """
   
  Creates a provisioning artifact (also known as a version) for the specified
  product. You cannot create a provisioning artifact for a product that was
  shared with you.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20CreateProvisioningArtifact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_provisioning_artifact_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      required("IdempotencyToken") => String.t(),
      required("Parameters") => provisioning_artifact_properties(),
      required("ProductId") => String.t()
    }
  """
  @spec create_provisioning_artifact(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_provisioning_artifact_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_provisioning_artifact_errors()}
  def create_provisioning_artifact(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateProvisioningArtifact", input, options)
  end

  @doc """
   
  Creates a self-service action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20CreateServiceAction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_service_action_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("Description") => String.t(),
      required("Definition") => map(),
      required("DefinitionType") => list(any()),
      required("IdempotencyToken") => String.t(),
      required("Name") => String.t()
    }
  """
  @spec create_service_action(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_service_action_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_service_action_errors()}
  def create_service_action(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateServiceAction", input, options)
  end

  @doc """
   
  Creates a TagOption.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20CreateTagOption&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:create_tag_option_input`)
    %{
      required("Key") => String.t(),
      required("Value") => String.t()
    }
  """
  @spec create_tag_option(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, create_tag_option_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_tag_option_errors()}
  def create_tag_option(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTagOption", input, options)
  end

  @doc """
   
  Deletes the specified constraint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DeleteConstraint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_constraint_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      required("Id") => String.t()
    }
  """
  @spec delete_constraint(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_constraint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_constraint_errors()}
  def delete_constraint(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteConstraint", input, options)
  end

  @doc """
   
  Deletes the specified portfolio. You cannot delete a portfolio if it was shared
  with you or if it has associated products, users, constraints, or shared
  accounts.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DeletePortfolio&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_portfolio_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      required("Id") => String.t()
    }
  """
  @spec delete_portfolio(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_portfolio_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_portfolio_errors()}
  def delete_portfolio(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePortfolio", input, options)
  end

  @doc """
   
  Stops sharing the specified portfolio with the specified account or organization
  node. Shares to an organization node can only be deleted by the management
  account of an organization or by a delegated administrator.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DeletePortfolioShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_portfolio_share_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("AccountId") => String.t(),
      optional("OrganizationNode") => organization_node(),
      required("PortfolioId") => String.t()
    }
  """
  @spec delete_portfolio_share(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_portfolio_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_portfolio_share_errors()}
  def delete_portfolio_share(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePortfolioShare", input, options)
  end

  @doc """
   
  Deletes the specified product. You cannot delete a product if it was shared with
  you or is associated with a portfolio.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DeleteProduct&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_product_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      required("Id") => String.t()
    }
  """
  @spec delete_product(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_product_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_product_errors()}
  def delete_product(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteProduct", input, options)
  end

  @doc """
   
  Deletes the specified plan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DeleteProvisionedProductPlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_provisioned_product_plan_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("IgnoreErrors") => boolean(),
      required("PlanId") => String.t()
    }
  """
  @spec delete_provisioned_product_plan(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_provisioned_product_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_provisioned_product_plan_errors()}
  def delete_provisioned_product_plan(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteProvisionedProductPlan", input, options)
  end

  @doc """
   
  Deletes the specified provisioning artifact (also known as a version) for the
  specified product.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DeleteProvisioningArtifact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_provisioning_artifact_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      required("ProductId") => String.t(),
      required("ProvisioningArtifactId") => String.t()
    }
  """
  @spec delete_provisioning_artifact(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_provisioning_artifact_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_provisioning_artifact_errors()}
  def delete_provisioning_artifact(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteProvisioningArtifact", input, options)
  end

  @doc """
   
  Deletes a self-service action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DeleteServiceAction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_service_action_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("IdempotencyToken") => String.t(),
      required("Id") => String.t()
    }
  """
  @spec delete_service_action(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_service_action_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_service_action_errors()}
  def delete_service_action(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteServiceAction", input, options)
  end

  @doc """
   
  Deletes the specified TagOption.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DeleteTagOption&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:delete_tag_option_input`)
    %{
      required("Id") => String.t()
    }
  """
  @spec delete_tag_option(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, delete_tag_option_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_tag_option_errors()}
  def delete_tag_option(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTagOption", input, options)
  end

  @doc """
   
  Gets information about the specified constraint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DescribeConstraint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_constraint_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      required("Id") => String.t()
    }
  """
  @spec describe_constraint(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_constraint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_constraint_errors()}
  def describe_constraint(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeConstraint", input, options)
  end

  @doc """
   
  Gets the status of the specified copy product operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DescribeCopyProductStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_copy_product_status_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      required("CopyProductToken") => String.t()
    }
  """
  @spec describe_copy_product_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_copy_product_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_copy_product_status_errors()}
  def describe_copy_product_status(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCopyProductStatus", input, options)
  end

  @doc """
   
  Gets information about the specified portfolio.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DescribePortfolio&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_portfolio_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      required("Id") => String.t()
    }
  """
  @spec describe_portfolio(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_portfolio_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_portfolio_errors()}
  def describe_portfolio(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribePortfolio", input, options)
  end

  @doc """
   
  Gets the status of the specified portfolio share operation. This API can only be
  called by the management account in the organization or by a delegated admin.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DescribePortfolioShareStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_portfolio_share_status_input`)
    %{
      required("PortfolioShareToken") => String.t()
    }
  """
  @spec describe_portfolio_share_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_portfolio_share_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_portfolio_share_status_errors()}
  def describe_portfolio_share_status(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribePortfolioShareStatus", input, options)
  end

  @doc """
   
  Returns a summary of each of the portfolio shares that were created for the
  specified portfolio. You can use this API to determine which accounts or
  organizational nodes this portfolio have been shared, whether the recipient
  entity has imported the share, and whether TagOptions are included with the
  share.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DescribePortfolioShares&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_portfolio_shares_input`)
    %{
      optional("PageSize") => integer(),
      optional("PageToken") => String.t(),
      required("PortfolioId") => String.t(),
      required("Type") => list(any())
    }
  """
  @spec describe_portfolio_shares(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_portfolio_shares_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_portfolio_shares_errors()}
  def describe_portfolio_shares(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribePortfolioShares", input, options)
  end

  @doc """
   
  Gets information about the specified product.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DescribeProduct&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_product_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("Id") => String.t(),
      optional("Name") => String.t()
    }
  """
  @spec describe_product(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_product_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_product_errors()}
  def describe_product(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeProduct", input, options)
  end

  @doc """
   
  Gets information about the specified product. This operation is run with
  administrator access.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DescribeProductAsAdmin&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_product_as_admin_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("Id") => String.t(),
      optional("Name") => String.t(),
      optional("SourcePortfolioId") => String.t()
    }
  """
  @spec describe_product_as_admin(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_product_as_admin_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_product_as_admin_errors()}
  def describe_product_as_admin(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeProductAsAdmin", input, options)
  end

  @doc """
   
  Gets information about the specified product.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DescribeProductView&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_product_view_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      required("Id") => String.t()
    }
  """
  @spec describe_product_view(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_product_view_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_product_view_errors()}
  def describe_product_view(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeProductView", input, options)
  end

  @doc """
   
  Gets information about the specified provisioned product.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DescribeProvisionedProduct&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_provisioned_product_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("Id") => String.t(),
      optional("Name") => String.t()
    }
  """
  @spec describe_provisioned_product(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_provisioned_product_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_provisioned_product_errors()}
  def describe_provisioned_product(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeProvisionedProduct", input, options)
  end

  @doc """
   
  Gets information about the resource changes for the specified plan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DescribeProvisionedProductPlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_provisioned_product_plan_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("PageSize") => integer(),
      optional("PageToken") => String.t(),
      required("PlanId") => String.t()
    }
  """
  @spec describe_provisioned_product_plan(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_provisioned_product_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_provisioned_product_plan_errors()}
  def describe_provisioned_product_plan(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeProvisionedProductPlan", input, options)
  end

  @doc """
   
  Gets information about the specified provisioning artifact (also known as a
  version) for the specified product.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DescribeProvisioningArtifact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_provisioning_artifact_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("IncludeProvisioningArtifactParameters") => boolean(),
      optional("ProductId") => String.t(),
      optional("ProductName") => String.t(),
      optional("ProvisioningArtifactId") => String.t(),
      optional("ProvisioningArtifactName") => String.t(),
      optional("Verbose") => boolean()
    }
  """
  @spec describe_provisioning_artifact(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_provisioning_artifact_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_provisioning_artifact_errors()}
  def describe_provisioning_artifact(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeProvisioningArtifact", input, options)
  end

  @doc """
   
  Gets information about the configuration required to provision the specified
  product using the specified provisioning artifact.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DescribeProvisioningParameters&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_provisioning_parameters_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("PathId") => String.t(),
      optional("PathName") => String.t(),
      optional("ProductId") => String.t(),
      optional("ProductName") => String.t(),
      optional("ProvisioningArtifactId") => String.t(),
      optional("ProvisioningArtifactName") => String.t()
    }
  """
  @spec describe_provisioning_parameters(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_provisioning_parameters_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_provisioning_parameters_errors()}
  def describe_provisioning_parameters(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeProvisioningParameters", input, options)
  end

  @doc """
   
  Gets information about the specified request operation. Use this operation after
  calling a request operation (for example, `ProvisionProduct`,
  `TerminateProvisionedProduct`, or `UpdateProvisionedProduct`).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DescribeRecord&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_record_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("PageSize") => integer(),
      optional("PageToken") => String.t(),
      required("Id") => String.t()
    }
  """
  @spec describe_record(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_record_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_record_errors()}
  def describe_record(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRecord", input, options)
  end

  @doc """
   
  Describes a self-service action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DescribeServiceAction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_service_action_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      required("Id") => String.t()
    }
  """
  @spec describe_service_action(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_service_action_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_service_action_errors()}
  def describe_service_action(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeServiceAction", input, options)
  end

  @doc """
   
  Finds the default parameters for a specific self-service action on a specific
  provisioned product and returns a map of the results to the user.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DescribeServiceActionExecutionParameters&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_service_action_execution_parameters_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      required("ProvisionedProductId") => String.t(),
      required("ServiceActionId") => String.t()
    }
  """
  @spec describe_service_action_execution_parameters(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_service_action_execution_parameters_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_service_action_execution_parameters_errors()}
  def describe_service_action_execution_parameters(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeServiceActionExecutionParameters", input, options)
  end

  @doc """
   
  Gets information about the specified TagOption.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DescribeTagOption&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:describe_tag_option_input`)
    %{
      required("Id") => String.t()
    }
  """
  @spec describe_tag_option(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, describe_tag_option_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_tag_option_errors()}
  def describe_tag_option(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTagOption", input, options)
  end

  @doc """
   
  Disable portfolio sharing through the Organizations service. This command will
  not delete your current shares, but prevents you from creating new shares
  throughout your organization. Current shares are not kept in sync with your
  organization structure if the structure changes after calling this API. Only
  the management account in the organization can call this API. You cannot call
  this API if there are active delegated administrators in the organization.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DisableAWSOrganizationsAccess&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disable_aws_organizations_access_input`)
    %{
      
    }
  """
  @spec disable_aws_organizations_access(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disable_aws_organizations_access_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_aws_organizations_access_errors()}
  def disable_aws_organizations_access(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisableAWSOrganizationsAccess", input, options)
  end

  @doc """
   
  Disassociates the specified budget from the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DisassociateBudgetFromResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disassociate_budget_from_resource_input`)
    %{
      required("BudgetName") => String.t(),
      required("ResourceId") => String.t()
    }
  """
  @spec disassociate_budget_from_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disassociate_budget_from_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_budget_from_resource_errors()}
  def disassociate_budget_from_resource(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateBudgetFromResource", input, options)
  end

  @doc """
   
  Disassociates a previously associated principal ARN from a specified portfolio.
  The `PrincipalType` and `PrincipalARN` must match the
  `AssociatePrincipalWithPortfolio` call request details. For example, to
  disassociate an association created with a `PrincipalARN` of `PrincipalType`
  IAM you must use the `PrincipalType` IAM when calling
  `DisassociatePrincipalFromPortfolio`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DisassociatePrincipalFromPortfolio&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disassociate_principal_from_portfolio_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("PrincipalType") => list(any()),
      required("PortfolioId") => String.t(),
      required("PrincipalARN") => String.t()
    }
  """
  @spec disassociate_principal_from_portfolio(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disassociate_principal_from_portfolio_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_principal_from_portfolio_errors()}
  def disassociate_principal_from_portfolio(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociatePrincipalFromPortfolio", input, options)
  end

  @doc """
   
  Disassociates the specified product from the specified portfolio.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DisassociateProductFromPortfolio&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disassociate_product_from_portfolio_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      required("PortfolioId") => String.t(),
      required("ProductId") => String.t()
    }
  """
  @spec disassociate_product_from_portfolio(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disassociate_product_from_portfolio_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_product_from_portfolio_errors()}
  def disassociate_product_from_portfolio(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateProductFromPortfolio", input, options)
  end

  @doc """
   
  Disassociates the specified self-service action association from the specified
  provisioning artifact.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DisassociateServiceActionFromProvisioningArtifact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disassociate_service_action_from_provisioning_artifact_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("IdempotencyToken") => String.t(),
      required("ProductId") => String.t(),
      required("ProvisioningArtifactId") => String.t(),
      required("ServiceActionId") => String.t()
    }
  """
  @spec disassociate_service_action_from_provisioning_artifact(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, disassociate_service_action_from_provisioning_artifact_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_service_action_from_provisioning_artifact_errors()}
  def disassociate_service_action_from_provisioning_artifact(
        %Client{} = client,
        input,
        options \\ []
      )
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "DisassociateServiceActionFromProvisioningArtifact",
      input,
      options
    )
  end

  @doc """
   
  Disassociates the specified TagOption from the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20DisassociateTagOptionFromResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:disassociate_tag_option_from_resource_input`)
    %{
      required("ResourceId") => String.t(),
      required("TagOptionId") => String.t()
    }
  """
  @spec disassociate_tag_option_from_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, disassociate_tag_option_from_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_tag_option_from_resource_errors()}
  def disassociate_tag_option_from_resource(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateTagOptionFromResource", input, options)
  end

  @doc """
   
  Enable portfolio sharing feature through Organizations. This API will allow
  Service Catalog to receive updates on your organization in order to sync your
  shares with the current structure. This API can only be called by the
  management account in the organization. When you call this API, Service
  Catalog calls `organizations:EnableAWSServiceAccess` on your behalf so that
  your shares stay in sync with any changes in your Organizations structure.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20EnableAWSOrganizationsAccess&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:enable_aws_organizations_access_input`)
    %{
      
    }
  """
  @spec enable_aws_organizations_access(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, enable_aws_organizations_access_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_aws_organizations_access_errors()}
  def enable_aws_organizations_access(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnableAWSOrganizationsAccess", input, options)
  end

  @doc """
   
  Provisions or modifies a product based on the resource changes for the specified
  plan.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20ExecuteProvisionedProductPlan&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:execute_provisioned_product_plan_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      required("IdempotencyToken") => String.t(),
      required("PlanId") => String.t()
    }
  """
  @spec execute_provisioned_product_plan(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, execute_provisioned_product_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, execute_provisioned_product_plan_errors()}
  def execute_provisioned_product_plan(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ExecuteProvisionedProductPlan", input, options)
  end

  @doc """
   
  Executes a self-service action against a provisioned product.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20ExecuteProvisionedProductServiceAction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:execute_provisioned_product_service_action_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("Parameters") => map(),
      required("ExecuteToken") => String.t(),
      required("ProvisionedProductId") => String.t(),
      required("ServiceActionId") => String.t()
    }
  """
  @spec execute_provisioned_product_service_action(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, execute_provisioned_product_service_action_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, execute_provisioned_product_service_action_errors()}
  def execute_provisioned_product_service_action(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ExecuteProvisionedProductServiceAction", input, options)
  end

  @doc """
   
  Get the Access Status for Organizations portfolio share feature. This API can
  only be called by the management account in the organization or by a delegated
  admin.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20GetAWSOrganizationsAccessStatus&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_aws_organizations_access_status_input`)
    %{
      
    }
  """
  @spec get_aws_organizations_access_status(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_aws_organizations_access_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_aws_organizations_access_status_errors()}
  def get_aws_organizations_access_status(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAWSOrganizationsAccessStatus", input, options)
  end

  @doc """
   
  This API takes either a `ProvisonedProductId` or a `ProvisionedProductName`,
  along with a list of one or more output keys, and responds with the key/value
  pairs of those outputs.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20GetProvisionedProductOutputs&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:get_provisioned_product_outputs_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("OutputKeys") => list(String.t()()),
      optional("PageSize") => integer(),
      optional("PageToken") => String.t(),
      optional("ProvisionedProductId") => String.t(),
      optional("ProvisionedProductName") => String.t()
    }
  """
  @spec get_provisioned_product_outputs(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, get_provisioned_product_outputs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_provisioned_product_outputs_errors()}
  def get_provisioned_product_outputs(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetProvisionedProductOutputs", input, options)
  end

  @doc """
   
  Requests the import of a resource as an Service Catalog provisioned product that
  is associated to an Service Catalog product and provisioning artifact. Once
  imported, all supported governance actions are supported on the provisioned
  product. Resource import only supports CloudFormation stack ARNs.
  CloudFormation StackSets, and non-root nested stacks, are not supported.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20ImportAsProvisionedProduct&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:import_as_provisioned_product_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      required("IdempotencyToken") => String.t(),
      required("PhysicalId") => String.t(),
      required("ProductId") => String.t(),
      required("ProvisionedProductName") => String.t(),
      required("ProvisioningArtifactId") => String.t()
    }
  """
  @spec import_as_provisioned_product(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, import_as_provisioned_product_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_as_provisioned_product_errors()}
  def import_as_provisioned_product(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ImportAsProvisionedProduct", input, options)
  end

  @doc """
   
  Lists all imported portfolios for which account-to-account shares were accepted
  by this account. By specifying the `PortfolioShareType`, you can list
  portfolios for which organizational shares were accepted by this account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20ListAcceptedPortfolioShares&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_accepted_portfolio_shares_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("PageSize") => integer(),
      optional("PageToken") => String.t(),
      optional("PortfolioShareType") => list(any())
    }
  """
  @spec list_accepted_portfolio_shares(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_accepted_portfolio_shares_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_accepted_portfolio_shares_errors()}
  def list_accepted_portfolio_shares(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAcceptedPortfolioShares", input, options)
  end

  @doc """
   
  Lists all the budgets associated to the specified resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20ListBudgetsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_budgets_for_resource_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("PageSize") => integer(),
      optional("PageToken") => String.t(),
      required("ResourceId") => String.t()
    }
  """
  @spec list_budgets_for_resource(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_budgets_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_budgets_for_resource_errors()}
  def list_budgets_for_resource(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListBudgetsForResource", input, options)
  end

  @doc """
   
  Lists the constraints for the specified portfolio and product.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20ListConstraintsForPortfolio&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_constraints_for_portfolio_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("PageSize") => integer(),
      optional("PageToken") => String.t(),
      optional("ProductId") => String.t(),
      required("PortfolioId") => String.t()
    }
  """
  @spec list_constraints_for_portfolio(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_constraints_for_portfolio_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_constraints_for_portfolio_errors()}
  def list_constraints_for_portfolio(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListConstraintsForPortfolio", input, options)
  end

  @doc """
   
  Lists the paths to the specified product. A path describes how the user gets
  access to a specified product and is necessary when provisioning a product. A
  path also determines the constraints that are put on a product. A path is
  dependent on a specific product, porfolio, and principal.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20ListLaunchPaths&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_launch_paths_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("PageSize") => integer(),
      optional("PageToken") => String.t(),
      required("ProductId") => String.t()
    }
  """
  @spec list_launch_paths(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_launch_paths_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_launch_paths_errors()}
  def list_launch_paths(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListLaunchPaths", input, options)
  end

  @doc """
   
  Lists the organization nodes that have access to the specified portfolio. This
  API can only be called by the management account in the organization or by a
  delegated admin.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20ListOrganizationPortfolioAccess&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_organization_portfolio_access_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("PageSize") => integer(),
      optional("PageToken") => String.t(),
      required("OrganizationNodeType") => list(any()),
      required("PortfolioId") => String.t()
    }
  """
  @spec list_organization_portfolio_access(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_organization_portfolio_access_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_organization_portfolio_access_errors()}
  def list_organization_portfolio_access(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListOrganizationPortfolioAccess", input, options)
  end

  @doc """
   
  Lists the account IDs that have access to the specified portfolio.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20ListPortfolioAccess&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_portfolio_access_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("OrganizationParentId") => String.t(),
      optional("PageSize") => integer(),
      optional("PageToken") => String.t(),
      required("PortfolioId") => String.t()
    }
  """
  @spec list_portfolio_access(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_portfolio_access_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_portfolio_access_errors()}
  def list_portfolio_access(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPortfolioAccess", input, options)
  end

  @doc """
   
  Lists all portfolios in the catalog.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20ListPortfolios&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_portfolios_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("PageSize") => integer(),
      optional("PageToken") => String.t()
    }
  """
  @spec list_portfolios(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_portfolios_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_portfolios_errors()}
  def list_portfolios(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPortfolios", input, options)
  end

  @doc """
   
  Lists all portfolios that the specified product is associated with.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20ListPortfoliosForProduct&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_portfolios_for_product_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("PageSize") => integer(),
      optional("PageToken") => String.t(),
      required("ProductId") => String.t()
    }
  """
  @spec list_portfolios_for_product(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_portfolios_for_product_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_portfolios_for_product_errors()}
  def list_portfolios_for_product(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPortfoliosForProduct", input, options)
  end

  @doc """
   
  Lists all `PrincipalARN`s and corresponding `PrincipalType`s associated with the
  specified portfolio.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20ListPrincipalsForPortfolio&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_principals_for_portfolio_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("PageSize") => integer(),
      optional("PageToken") => String.t(),
      required("PortfolioId") => String.t()
    }
  """
  @spec list_principals_for_portfolio(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_principals_for_portfolio_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_principals_for_portfolio_errors()}
  def list_principals_for_portfolio(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPrincipalsForPortfolio", input, options)
  end

  @doc """
   
  Lists the plans for the specified provisioned product or all plans to which the
  user has access.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20ListProvisionedProductPlans&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_provisioned_product_plans_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("AccessLevelFilter") => access_level_filter(),
      optional("PageSize") => integer(),
      optional("PageToken") => String.t(),
      optional("ProvisionProductId") => String.t()
    }
  """
  @spec list_provisioned_product_plans(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_provisioned_product_plans_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_provisioned_product_plans_errors()}
  def list_provisioned_product_plans(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListProvisionedProductPlans", input, options)
  end

  @doc """
   
  Lists all provisioning artifacts (also known as versions) for the specified
  product.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20ListProvisioningArtifacts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_provisioning_artifacts_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      required("ProductId") => String.t()
    }
  """
  @spec list_provisioning_artifacts(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_provisioning_artifacts_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_provisioning_artifacts_errors()}
  def list_provisioning_artifacts(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListProvisioningArtifacts", input, options)
  end

  @doc """
   
  Lists all provisioning artifacts (also known as versions) for the specified
  self-service action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20ListProvisioningArtifactsForServiceAction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_provisioning_artifacts_for_service_action_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("PageSize") => integer(),
      optional("PageToken") => String.t(),
      required("ServiceActionId") => String.t()
    }
  """
  @spec list_provisioning_artifacts_for_service_action(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, list_provisioning_artifacts_for_service_action_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_provisioning_artifacts_for_service_action_errors()}
  def list_provisioning_artifacts_for_service_action(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "ListProvisioningArtifactsForServiceAction",
      input,
      options
    )
  end

  @doc """
   
  Lists the specified requests or all performed requests.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20ListRecordHistory&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_record_history_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("AccessLevelFilter") => access_level_filter(),
      optional("PageSize") => integer(),
      optional("PageToken") => String.t(),
      optional("SearchFilter") => list_record_history_search_filter()
    }
  """
  @spec list_record_history(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_record_history_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_record_history_errors()}
  def list_record_history(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRecordHistory", input, options)
  end

  @doc """
   
  Lists the resources associated with the specified TagOption.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20ListResourcesForTagOption&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_resources_for_tag_option_input`)
    %{
      optional("PageSize") => integer(),
      optional("PageToken") => String.t(),
      optional("ResourceType") => String.t(),
      required("TagOptionId") => String.t()
    }
  """
  @spec list_resources_for_tag_option(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_resources_for_tag_option_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resources_for_tag_option_errors()}
  def list_resources_for_tag_option(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListResourcesForTagOption", input, options)
  end

  @doc """
   
  Lists all self-service actions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20ListServiceActions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_service_actions_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("PageSize") => integer(),
      optional("PageToken") => String.t()
    }
  """
  @spec list_service_actions(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_service_actions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_actions_errors()}
  def list_service_actions(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListServiceActions", input, options)
  end

  @doc """
   
  Returns a paginated list of self-service actions associated with the specified
  Product ID and Provisioning Artifact ID.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20ListServiceActionsForProvisioningArtifact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_service_actions_for_provisioning_artifact_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("PageSize") => integer(),
      optional("PageToken") => String.t(),
      required("ProductId") => String.t(),
      required("ProvisioningArtifactId") => String.t()
    }
  """
  @spec list_service_actions_for_provisioning_artifact(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, list_service_actions_for_provisioning_artifact_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_actions_for_provisioning_artifact_errors()}
  def list_service_actions_for_provisioning_artifact(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "ListServiceActionsForProvisioningArtifact",
      input,
      options
    )
  end

  @doc """
   
  Returns summary information about stack instances that are associated with the
  specified `CFN_STACKSET` type provisioned product. You can filter for stack
  instances that are associated with a specific Amazon Web Services account name
  or Region.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20ListStackInstancesForProvisionedProduct&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_stack_instances_for_provisioned_product_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("PageSize") => integer(),
      optional("PageToken") => String.t(),
      required("ProvisionedProductId") => String.t()
    }
  """
  @spec list_stack_instances_for_provisioned_product(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_stack_instances_for_provisioned_product_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_stack_instances_for_provisioned_product_errors()}
  def list_stack_instances_for_provisioned_product(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListStackInstancesForProvisionedProduct", input, options)
  end

  @doc """
   
  Lists the specified TagOptions or all TagOptions.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20ListTagOptions&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:list_tag_options_input`)
    %{
      optional("Filters") => list_tag_options_filters(),
      optional("PageSize") => integer(),
      optional("PageToken") => String.t()
    }
  """
  @spec list_tag_options(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, list_tag_options_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tag_options_errors()}
  def list_tag_options(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagOptions", input, options)
  end

  @doc """
   
  Notifies the result of the provisioning engine execution.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20NotifyProvisionProductEngineWorkflowResult&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:notify_provision_product_engine_workflow_result_input`)
    %{
      optional("FailureReason") => String.t(),
      optional("Outputs") => list(record_output()()),
      optional("ResourceIdentifier") => engine_workflow_resource_identifier(),
      required("IdempotencyToken") => String.t(),
      required("RecordId") => String.t(),
      required("Status") => list(any()),
      required("WorkflowToken") => String.t()
    }
  """
  @spec notify_provision_product_engine_workflow_result(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, notify_provision_product_engine_workflow_result_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, notify_provision_product_engine_workflow_result_errors()}
  def notify_provision_product_engine_workflow_result(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "NotifyProvisionProductEngineWorkflowResult",
      input,
      options
    )
  end

  @doc """
   
  Notifies the result of the terminate engine execution.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20NotifyTerminateProvisionedProductEngineWorkflowResult&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:notify_terminate_provisioned_product_engine_workflow_result_input`)
    %{
      optional("FailureReason") => String.t(),
      required("IdempotencyToken") => String.t(),
      required("RecordId") => String.t(),
      required("Status") => list(any()),
      required("WorkflowToken") => String.t()
    }
  """
  @spec notify_terminate_provisioned_product_engine_workflow_result(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, notify_terminate_provisioned_product_engine_workflow_result_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, notify_terminate_provisioned_product_engine_workflow_result_errors()}
  def notify_terminate_provisioned_product_engine_workflow_result(
        %Client{} = client,
        input,
        options \\ []
      )
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "NotifyTerminateProvisionedProductEngineWorkflowResult",
      input,
      options
    )
  end

  @doc """
   
  Notifies the result of the update engine execution.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20NotifyUpdateProvisionedProductEngineWorkflowResult&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:notify_update_provisioned_product_engine_workflow_result_input`)
    %{
      optional("FailureReason") => String.t(),
      optional("Outputs") => list(record_output()()),
      required("IdempotencyToken") => String.t(),
      required("RecordId") => String.t(),
      required("Status") => list(any()),
      required("WorkflowToken") => String.t()
    }
  """
  @spec notify_update_provisioned_product_engine_workflow_result(
          AWS.Client.t(),
          input :: map(),
          Keyword.t()
        ) ::
          {:ok, notify_update_provisioned_product_engine_workflow_result_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, notify_update_provisioned_product_engine_workflow_result_errors()}
  def notify_update_provisioned_product_engine_workflow_result(
        %Client{} = client,
        input,
        options \\ []
      )
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "NotifyUpdateProvisionedProductEngineWorkflowResult",
      input,
      options
    )
  end

  @doc """
   
  Provisions the specified product. A provisioned product is a resourced instance
  of a product. For example, provisioning a product that's based on an
  CloudFormation template launches an CloudFormation stack and its underlying
  resources. You can check the status of this request using `DescribeRecord`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20ProvisionProduct&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:provision_product_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("NotificationArns") => list(String.t()()),
      optional("PathId") => String.t(),
      optional("PathName") => String.t(),
      optional("ProductId") => String.t(),
      optional("ProductName") => String.t(),
      optional("ProvisioningArtifactId") => String.t(),
      optional("ProvisioningArtifactName") => String.t(),
      optional("ProvisioningParameters") => list(provisioning_parameter()()),
      optional("ProvisioningPreferences") => provisioning_preferences(),
      optional("Tags") => list(tag()()),
      required("ProvisionToken") => String.t(),
      required("ProvisionedProductName") => String.t()
    }
  """
  @spec provision_product(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, provision_product_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, provision_product_errors()}
  def provision_product(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ProvisionProduct", input, options)
  end

  @doc """
   
  Rejects an offer to share the specified portfolio.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20RejectPortfolioShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:reject_portfolio_share_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("PortfolioShareType") => list(any()),
      required("PortfolioId") => String.t()
    }
  """
  @spec reject_portfolio_share(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, reject_portfolio_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reject_portfolio_share_errors()}
  def reject_portfolio_share(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "RejectPortfolioShare", input, options)
  end

  @doc """
   
  Lists the provisioned products that are available (not terminated).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20ScanProvisionedProducts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:scan_provisioned_products_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("AccessLevelFilter") => access_level_filter(),
      optional("PageSize") => integer(),
      optional("PageToken") => String.t()
    }
  """
  @spec scan_provisioned_products(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, scan_provisioned_products_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, scan_provisioned_products_errors()}
  def scan_provisioned_products(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "ScanProvisionedProducts", input, options)
  end

  @doc """
   
  Gets information about the products to which the caller has access.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20SearchProducts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:search_products_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("Filters") => map(),
      optional("PageSize") => integer(),
      optional("PageToken") => String.t(),
      optional("SortBy") => list(any()),
      optional("SortOrder") => list(any())
    }
  """
  @spec search_products(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, search_products_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_products_errors()}
  def search_products(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SearchProducts", input, options)
  end

  @doc """
   
  Gets information about the products for the specified portfolio or all products.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20SearchProductsAsAdmin&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:search_products_as_admin_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("Filters") => map(),
      optional("PageSize") => integer(),
      optional("PageToken") => String.t(),
      optional("PortfolioId") => String.t(),
      optional("ProductSource") => list(any()),
      optional("SortBy") => list(any()),
      optional("SortOrder") => list(any())
    }
  """
  @spec search_products_as_admin(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, search_products_as_admin_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_products_as_admin_errors()}
  def search_products_as_admin(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SearchProductsAsAdmin", input, options)
  end

  @doc """
   
  Gets information about the provisioned products that meet the specified
  criteria.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20SearchProvisionedProducts&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:search_provisioned_products_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("AccessLevelFilter") => access_level_filter(),
      optional("Filters") => map(),
      optional("PageSize") => integer(),
      optional("PageToken") => String.t(),
      optional("SortBy") => String.t(),
      optional("SortOrder") => list(any())
    }
  """
  @spec search_provisioned_products(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, search_provisioned_products_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_provisioned_products_errors()}
  def search_provisioned_products(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "SearchProvisionedProducts", input, options)
  end

  @doc """
   
  Terminates the specified provisioned product. This operation does not delete any
  records associated with the provisioned product.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20TerminateProvisionedProduct&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:terminate_provisioned_product_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("IgnoreErrors") => boolean(),
      optional("ProvisionedProductId") => String.t(),
      optional("ProvisionedProductName") => String.t(),
      optional("RetainPhysicalResources") => boolean(),
      required("TerminateToken") => String.t()
    }
  """
  @spec terminate_provisioned_product(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, terminate_provisioned_product_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, terminate_provisioned_product_errors()}
  def terminate_provisioned_product(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "TerminateProvisionedProduct", input, options)
  end

  @doc """
   
  Updates the specified constraint.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20UpdateConstraint&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_constraint_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("Description") => String.t(),
      optional("Parameters") => String.t(),
      required("Id") => String.t()
    }
  """
  @spec update_constraint(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_constraint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_constraint_errors()}
  def update_constraint(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateConstraint", input, options)
  end

  @doc """
   
  Updates the specified portfolio.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20UpdatePortfolio&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_portfolio_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("AddTags") => list(tag()()),
      optional("Description") => String.t(),
      optional("DisplayName") => String.t(),
      optional("ProviderName") => String.t(),
      optional("RemoveTags") => list(String.t()()),
      required("Id") => String.t()
    }
  """
  @spec update_portfolio(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_portfolio_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_portfolio_errors()}
  def update_portfolio(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePortfolio", input, options)
  end

  @doc """
   
  Updates the specified portfolio share. You can use this API to enable or disable
  `TagOptions` sharing or Principal sharing for an existing portfolio share. The
  portfolio share cannot be updated if the `CreatePortfolioShare` operation is
  `IN_PROGRESS`, as the share is not available to recipient entities. In this
  case, you must wait for the portfolio share to be completed.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20UpdatePortfolioShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_portfolio_share_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("AccountId") => String.t(),
      optional("OrganizationNode") => organization_node(),
      optional("SharePrincipals") => boolean(),
      optional("ShareTagOptions") => boolean(),
      required("PortfolioId") => String.t()
    }
  """
  @spec update_portfolio_share(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_portfolio_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_portfolio_share_errors()}
  def update_portfolio_share(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePortfolioShare", input, options)
  end

  @doc """
   
  Updates the specified product.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20UpdateProduct&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_product_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("AddTags") => list(tag()()),
      optional("Description") => String.t(),
      optional("Distributor") => String.t(),
      optional("Name") => String.t(),
      optional("Owner") => String.t(),
      optional("RemoveTags") => list(String.t()()),
      optional("SourceConnection") => source_connection(),
      optional("SupportDescription") => String.t(),
      optional("SupportEmail") => String.t(),
      optional("SupportUrl") => String.t(),
      required("Id") => String.t()
    }
  """
  @spec update_product(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_product_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_product_errors()}
  def update_product(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateProduct", input, options)
  end

  @doc """
   
  Requests updates to the configuration of the specified provisioned product. If
  there are tags associated with the object, they cannot be updated or added.
  Depending on the specific updates requested, this operation can update with no
  interruption, with some interruption, or replace the provisioned product
  entirely.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20UpdateProvisionedProduct&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_provisioned_product_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("PathId") => String.t(),
      optional("PathName") => String.t(),
      optional("ProductId") => String.t(),
      optional("ProductName") => String.t(),
      optional("ProvisionedProductId") => String.t(),
      optional("ProvisionedProductName") => String.t(),
      optional("ProvisioningArtifactId") => String.t(),
      optional("ProvisioningArtifactName") => String.t(),
      optional("ProvisioningParameters") => list(update_provisioning_parameter()()),
      optional("ProvisioningPreferences") => update_provisioning_preferences(),
      optional("Tags") => list(tag()()),
      required("UpdateToken") => String.t()
    }
  """
  @spec update_provisioned_product(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_provisioned_product_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_provisioned_product_errors()}
  def update_provisioned_product(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateProvisionedProduct", input, options)
  end

  @doc """
   
  Requests updates to the properties of the specified provisioned product.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20UpdateProvisionedProductProperties&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_provisioned_product_properties_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      required("IdempotencyToken") => String.t(),
      required("ProvisionedProductId") => String.t(),
      required("ProvisionedProductProperties") => map()
    }
  """
  @spec update_provisioned_product_properties(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_provisioned_product_properties_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_provisioned_product_properties_errors()}
  def update_provisioned_product_properties(%Client{} = client, input, options \\ [])
      when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateProvisionedProductProperties", input, options)
  end

  @doc """
   
  Updates the specified provisioning artifact (also known as a version) for the
  specified product.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20UpdateProvisioningArtifact&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_provisioning_artifact_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("Active") => boolean(),
      optional("Description") => String.t(),
      optional("Guidance") => list(any()),
      optional("Name") => String.t(),
      required("ProductId") => String.t(),
      required("ProvisioningArtifactId") => String.t()
    }
  """
  @spec update_provisioning_artifact(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_provisioning_artifact_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_provisioning_artifact_errors()}
  def update_provisioning_artifact(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateProvisioningArtifact", input, options)
  end

  @doc """
   
  Updates a self-service action.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20UpdateServiceAction&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_service_action_input`)
    %{
      optional("AcceptLanguage") => String.t(),
      optional("Definition") => map(),
      optional("Description") => String.t(),
      optional("Name") => String.t(),
      required("Id") => String.t()
    }
  """
  @spec update_service_action(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_service_action_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_service_action_errors()}
  def update_service_action(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateServiceAction", input, options)
  end

  @doc """
   
  Updates the specified TagOption.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=servicecatalog%20UpdateTagOption&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:input` (`t:update_tag_option_input`)
    %{
      optional("Active") => boolean(),
      optional("Value") => String.t(),
      required("Id") => String.t()
    }
  """
  @spec update_tag_option(AWS.Client.t(), input :: map(), Keyword.t()) ::
          {:ok, update_tag_option_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_tag_option_errors()}
  def update_tag_option(%Client{} = client, input, options \\ []) when is_map(input) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateTagOption", input, options)
  end
end
