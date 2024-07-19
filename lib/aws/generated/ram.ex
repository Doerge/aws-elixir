# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RAM do
  @moduledoc """
  This is the *Resource Access Manager API Reference*. This documentation provides
  descriptions and syntax for each of the actions and data types in RAM. RAM is
  a service that helps you securely share your Amazon Web Services resources to
  other Amazon Web Services accounts. If you use Organizations to manage your
  accounts, then you can share your resources with your entire organization or
  to organizational units (OUs). For supported resource types, you can also
  share resources with individual Identity and Access Management (IAM) roles and
  users. To learn more about RAM, see the following resources:
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      set_default_permission_version_request() :: %{
        optional("clientToken") => String.t(),
        required("permissionArn") => String.t(),
        required("permissionVersion") => integer()
      }
      
  """
  @type set_default_permission_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_share_invitation_expired_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_share_invitation_expired_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_permissions_response() :: %{
        "nextToken" => String.t(),
        "permissions" => list(resource_share_permission_summary()())
      }
      
  """
  @type list_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_resource_share_response() :: %{
        "clientToken" => String.t(),
        "resourceShare" => resource_share()
      }
      
  """
  @type create_resource_share_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_permission_response() :: %{
        "permission" => resource_share_permission_detail()
      }
      
  """
  @type get_permission_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_max_results_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_max_results_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        optional("resourceArn") => String.t(),
        optional("resourceShareArn") => String.t(),
        required("tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_permission_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("permissionArn") => String.t()
      }
      
  """
  @type list_permission_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_replace_permission_associations_work_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => list(any()),
        optional("workIds") => list(String.t()())
      }
      
  """
  @type list_replace_permission_associations_work_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_resource_share_request() :: %{
        optional("allowExternalPrincipals") => boolean(),
        optional("clientToken") => String.t(),
        optional("name") => String.t(),
        required("resourceShareArn") => String.t()
      }
      
  """
  @type update_resource_share_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resources_response() :: %{
        "nextToken" => String.t(),
        "resources" => list(resource()())
      }
      
  """
  @type list_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_share_association() :: %{
        "associatedEntity" => String.t(),
        "associationType" => list(any()),
        "creationTime" => non_neg_integer(),
        "external" => boolean(),
        "lastUpdatedTime" => non_neg_integer(),
        "resourceShareArn" => String.t(),
        "resourceShareName" => String.t(),
        "status" => list(any()),
        "statusMessage" => String.t()
      }
      
  """
  @type resource_share_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_arn_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_arn_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      malformed_policy_template_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type malformed_policy_template_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_resource_share_permission_response() :: %{
        "clientToken" => String.t(),
        "returnValue" => boolean()
      }
      
  """
  @type associate_resource_share_permission_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_resource_share_request() :: %{
        optional("allowExternalPrincipals") => boolean(),
        optional("clientToken") => String.t(),
        optional("permissionArns") => list(String.t()()),
        optional("principals") => list(String.t()()),
        optional("resourceArns") => list(String.t()()),
        optional("sources") => list(String.t()()),
        optional("tags") => list(tag()()),
        required("name") => String.t()
      }
      
  """
  @type create_resource_share_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      accept_resource_share_invitation_request() :: %{
        optional("clientToken") => String.t(),
        required("resourceShareInvitationArn") => String.t()
      }
      
  """
  @type accept_resource_share_invitation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_permission_request() :: %{
        optional("permissionVersion") => integer(),
        required("permissionArn") => String.t()
      }
      
  """
  @type get_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replace_permission_associations_work() :: %{
        "creationTime" => non_neg_integer(),
        "fromPermissionArn" => String.t(),
        "fromPermissionVersion" => String.t(),
        "id" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "status" => list(any()),
        "statusMessage" => String.t(),
        "toPermissionArn" => String.t(),
        "toPermissionVersion" => String.t()
      }
      
  """
  @type replace_permission_associations_work() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_resource_share_response() :: %{
        "clientToken" => String.t(),
        "resourceShare" => resource_share()
      }
      
  """
  @type update_resource_share_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_share_permission_summary() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "defaultVersion" => boolean(),
        "featureSet" => list(any()),
        "isResourceTypeDefault" => boolean(),
        "lastUpdatedTime" => non_neg_integer(),
        "name" => String.t(),
        "permissionType" => list(any()),
        "resourceType" => String.t(),
        "status" => String.t(),
        "tags" => list(tag()()),
        "version" => String.t()
      }
      
  """
  @type resource_share_permission_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_share_invitation_arn_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_share_invitation_arn_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_share_invitations_response() :: %{
        "nextToken" => String.t(),
        "resourceShareInvitations" => list(resource_share_invitation()())
      }
      
  """
  @type get_resource_share_invitations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      missing_required_parameter_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type missing_required_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_share_permissions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("resourceShareArn") => String.t()
      }
      
  """
  @type list_resource_share_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unmatched_policy_permission_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unmatched_policy_permission_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_resource_share_invitation_request() :: %{
        optional("clientToken") => String.t(),
        required("resourceShareInvitationArn") => String.t()
      }
      
  """
  @type reject_resource_share_invitation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_permission_version_request() :: %{
        optional("clientToken") => String.t(),
        required("permissionArn") => String.t(),
        required("policyTemplate") => String.t()
      }
      
  """
  @type create_permission_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pending_invitation_resources_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("resourceRegionScope") => list(any()),
        required("resourceShareInvitationArn") => String.t()
      }
      
  """
  @type list_pending_invitation_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_permission_version_response() :: %{
        "clientToken" => String.t(),
        "permissionStatus" => list(any()),
        "returnValue" => boolean()
      }
      
  """
  @type delete_permission_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      principal() :: %{
        "creationTime" => non_neg_integer(),
        "external" => boolean(),
        "id" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "resourceShareArn" => String.t()
      }
      
  """
  @type principal() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      permission_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type permission_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        optional("resourceArn") => String.t(),
        optional("resourceShareArn") => String.t(),
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_resource_share_permission_response() :: %{
        "clientToken" => String.t(),
        "returnValue" => boolean()
      }
      
  """
  @type disassociate_resource_share_permission_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_share_limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_share_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_share_invitation() :: %{
        "invitationTimestamp" => non_neg_integer(),
        "receiverAccountId" => String.t(),
        "receiverArn" => String.t(),
        "resourceShareArn" => String.t(),
        "resourceShareAssociations" => list(resource_share_association()()),
        "resourceShareInvitationArn" => String.t(),
        "resourceShareName" => String.t(),
        "senderAccountId" => String.t(),
        "status" => list(any())
      }
      
  """
  @type resource_share_invitation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_permission_associations_request() :: %{
        optional("associationStatus") => list(any()),
        optional("defaultVersion") => boolean(),
        optional("featureSet") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("permissionArn") => String.t(),
        optional("permissionVersion") => integer(),
        optional("resourceType") => String.t()
      }
      
  """
  @type list_permission_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      promote_permission_created_from_policy_response() :: %{
        "clientToken" => String.t(),
        "permission" => resource_share_permission_summary()
      }
      
  """
  @type promote_permission_created_from_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_resource_share_response() :: %{
        "clientToken" => String.t(),
        "resourceShareAssociations" => list(resource_share_association()())
      }
      
  """
  @type disassociate_resource_share_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_permission_request() :: %{
        optional("clientToken") => String.t(),
        required("permissionArn") => String.t()
      }
      
  """
  @type delete_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_resource_share_permission_request() :: %{
        optional("clientToken") => String.t(),
        required("permissionArn") => String.t(),
        required("resourceShareArn") => String.t()
      }
      
  """
  @type disassociate_resource_share_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_policy_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_share_invitation_already_rejected_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_share_invitation_already_rejected_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_share_associations_request() :: %{
        optional("associationStatus") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("principal") => String.t(),
        optional("resourceArn") => String.t(),
        optional("resourceShareArns") => list(String.t()()),
        required("associationType") => list(any())
      }
      
  """
  @type get_resource_share_associations_request() :: %{String.t() => any()}

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
      
      resource_share_permission_detail() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "defaultVersion" => boolean(),
        "featureSet" => list(any()),
        "isResourceTypeDefault" => boolean(),
        "lastUpdatedTime" => non_neg_integer(),
        "name" => String.t(),
        "permission" => String.t(),
        "permissionType" => list(any()),
        "resourceType" => String.t(),
        "status" => list(any()),
        "tags" => list(tag()()),
        "version" => String.t()
      }
      
  """
  @type resource_share_permission_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_permission_response() :: %{
        "clientToken" => String.t(),
        "permissionStatus" => list(any()),
        "returnValue" => boolean()
      }
      
  """
  @type delete_permission_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_name_and_resource_type() :: %{
        "resourceRegionScope" => list(any()),
        "resourceType" => String.t(),
        "serviceName" => String.t()
      }
      
  """
  @type service_name_and_resource_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_replace_permission_associations_work_response() :: %{
        "nextToken" => String.t(),
        "replacePermissionAssociationsWorks" => list(replace_permission_associations_work()())
      }
      
  """
  @type list_replace_permission_associations_work_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      promote_resource_share_created_from_policy_response() :: %{
        "returnValue" => boolean()
      }
      
  """
  @type promote_resource_share_created_from_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      permission_versions_limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type permission_versions_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      idempotent_parameter_mismatch_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type idempotent_parameter_mismatch_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_resource_share_permission_request() :: %{
        optional("clientToken") => String.t(),
        optional("permissionVersion") => integer(),
        optional("replace") => boolean(),
        required("permissionArn") => String.t(),
        required("resourceShareArn") => String.t()
      }
      
  """
  @type associate_resource_share_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type tag_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_shares_request() :: %{
        optional("maxResults") => integer(),
        optional("name") => String.t(),
        optional("nextToken") => String.t(),
        optional("permissionArn") => String.t(),
        optional("permissionVersion") => integer(),
        optional("resourceShareArns") => list(String.t()()),
        optional("resourceShareStatus") => list(any()),
        optional("tagFilters") => list(tag_filter()()),
        required("resourceOwner") => list(any())
      }
      
  """
  @type get_resource_shares_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_permission_versions_response() :: %{
        "nextToken" => String.t(),
        "permissions" => list(resource_share_permission_summary()())
      }
      
  """
  @type list_permission_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_state_transition_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_state_transition_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_share() :: %{
        "allowExternalPrincipals" => boolean(),
        "creationTime" => non_neg_integer(),
        "featureSet" => list(any()),
        "lastUpdatedTime" => non_neg_integer(),
        "name" => String.t(),
        "owningAccountId" => String.t(),
        "resourceShareArn" => String.t(),
        "status" => list(any()),
        "statusMessage" => String.t(),
        "tags" => list(tag()())
      }
      
  """
  @type resource_share() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_resource_share_invitation_response() :: %{
        "clientToken" => String.t(),
        "resourceShareInvitation" => resource_share_invitation()
      }
      
  """
  @type reject_resource_share_invitation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_principals_response() :: %{
        "nextToken" => String.t(),
        "principals" => list(principal()())
      }
      
  """
  @type list_principals_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation_not_permitted_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type operation_not_permitted_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_share_request() :: %{
        optional("clientToken") => String.t(),
        required("resourceShareArn") => String.t()
      }
      
  """
  @type delete_resource_share_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_policies_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("principal") => String.t(),
        required("resourceArns") => list(String.t()())
      }
      
  """
  @type get_resource_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_policies_response() :: %{
        "nextToken" => String.t(),
        "policies" => list(String.t()())
      }
      
  """
  @type get_resource_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_resource_share_request() :: %{
        optional("clientToken") => String.t(),
        optional("principals") => list(String.t()()),
        optional("resourceArns") => list(String.t()()),
        optional("sources") => list(String.t()()),
        required("resourceShareArn") => String.t()
      }
      
  """
  @type disassociate_resource_share_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      promote_permission_created_from_policy_request() :: %{
        optional("clientToken") => String.t(),
        required("name") => String.t(),
        required("permissionArn") => String.t()
      }
      
  """
  @type promote_permission_created_from_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_permission_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => list(tag()()),
        required("name") => String.t(),
        required("policyTemplate") => String.t(),
        required("resourceType") => String.t()
      }
      
  """
  @type create_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_share_invitations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("resourceShareArns") => list(String.t()()),
        optional("resourceShareInvitationArns") => list(String.t()())
      }
      
  """
  @type get_resource_share_invitations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associated_permission() :: %{
        "arn" => String.t(),
        "defaultVersion" => boolean(),
        "featureSet" => list(any()),
        "lastUpdatedTime" => non_neg_integer(),
        "permissionVersion" => String.t(),
        "resourceShareArn" => String.t(),
        "resourceType" => String.t(),
        "status" => String.t()
      }
      
  """
  @type associated_permission() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_permissions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("permissionType") => list(any()),
        optional("resourceType") => String.t()
      }
      
  """
  @type list_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pending_invitation_resources_response() :: %{
        "nextToken" => String.t(),
        "resources" => list(resource()())
      }
      
  """
  @type list_pending_invitation_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_resource_share_request() :: %{
        optional("clientToken") => String.t(),
        optional("principals") => list(String.t()()),
        optional("resourceArns") => list(String.t()()),
        optional("sources") => list(String.t()()),
        required("resourceShareArn") => String.t()
      }
      
  """
  @type associate_resource_share_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_share_associations_response() :: %{
        "nextToken" => String.t(),
        "resourceShareAssociations" => list(resource_share_association()())
      }
      
  """
  @type get_resource_share_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unknown_resource_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unknown_resource_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      malformed_arn_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type malformed_arn_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_resource_types_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("resourceRegionScope") => list(any())
      }
      
  """
  @type list_resource_types_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      server_internal_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type server_internal_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_default_permission_version_response() :: %{
        "clientToken" => String.t(),
        "returnValue" => boolean()
      }
      
  """
  @type set_default_permission_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_sharing_with_aws_organization_response() :: %{
        "returnValue" => boolean()
      }
      
  """
  @type enable_sharing_with_aws_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_share_response() :: %{
        "clientToken" => String.t(),
        "returnValue" => boolean()
      }
      
  """
  @type delete_resource_share_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_resource_share_response() :: %{
        "clientToken" => String.t(),
        "resourceShareAssociations" => list(resource_share_association()())
      }
      
  """
  @type associate_resource_share_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_client_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_client_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_sharing_with_aws_organization_request() :: %{}
      
  """
  @type enable_sharing_with_aws_organization_request() :: %{}

  @typedoc """

  ## Example:
      
      list_resource_share_permissions_response() :: %{
        "nextToken" => String.t(),
        "permissions" => list(resource_share_permission_summary()())
      }
      
  """
  @type list_resource_share_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resources_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("principal") => String.t(),
        optional("resourceArns") => list(String.t()()),
        optional("resourceRegionScope") => list(any()),
        optional("resourceShareArns") => list(String.t()()),
        optional("resourceType") => String.t(),
        required("resourceOwner") => list(any())
      }
      
  """
  @type list_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_permission_associations_response() :: %{
        "nextToken" => String.t(),
        "permissions" => list(associated_permission()())
      }
      
  """
  @type list_permission_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      promote_resource_share_created_from_policy_request() :: %{
        required("resourceShareArn") => String.t()
      }
      
  """
  @type promote_resource_share_created_from_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_filter() :: %{
        "tagKey" => String.t(),
        "tagValues" => list(String.t()())
      }
      
  """
  @type tag_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_share_invitation_already_accepted_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_share_invitation_already_accepted_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_principals_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("principals") => list(String.t()()),
        optional("resourceArn") => String.t(),
        optional("resourceShareArns") => list(String.t()()),
        optional("resourceType") => String.t(),
        required("resourceOwner") => list(any())
      }
      
  """
  @type list_principals_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_types_response() :: %{
        "nextToken" => String.t(),
        "resourceTypes" => list(service_name_and_resource_type()())
      }
      
  """
  @type list_resource_types_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_permission_version_request() :: %{
        optional("clientToken") => String.t(),
        required("permissionArn") => String.t(),
        required("permissionVersion") => integer()
      }
      
  """
  @type delete_permission_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_shares_response() :: %{
        "nextToken" => String.t(),
        "resourceShares" => list(resource_share()())
      }
      
  """
  @type get_resource_shares_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_resource_share_invitation_response() :: %{
        "clientToken" => String.t(),
        "resourceShareInvitation" => resource_share_invitation()
      }
      
  """
  @type accept_resource_share_invitation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_permission_version_response() :: %{
        "clientToken" => String.t(),
        "permission" => resource_share_permission_detail()
      }
      
  """
  @type create_permission_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replace_permission_associations_request() :: %{
        optional("clientToken") => String.t(),
        optional("fromPermissionVersion") => integer(),
        required("fromPermissionArn") => String.t(),
        required("toPermissionArn") => String.t()
      }
      
  """
  @type replace_permission_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_resource_type_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_resource_type_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replace_permission_associations_response() :: %{
        "clientToken" => String.t(),
        "replacePermissionAssociationsWork" => replace_permission_associations_work()
      }
      
  """
  @type replace_permission_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_permission_response() :: %{
        "clientToken" => String.t(),
        "permission" => resource_share_permission_summary()
      }
      
  """
  @type create_permission_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_policy_violation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type tag_policy_violation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "lastUpdatedTime" => non_neg_integer(),
        "resourceGroupArn" => String.t(),
        "resourceRegionScope" => list(any()),
        "resourceShareArn" => String.t(),
        "status" => list(any()),
        "statusMessage" => String.t(),
        "type" => String.t()
      }
      
  """
  @type resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      permission_limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type permission_limit_exceeded_exception() :: %{String.t() => any()}

  @type accept_resource_share_invitation_errors() ::
          resource_share_invitation_already_accepted_exception()
          | invalid_client_token_exception()
          | server_internal_exception()
          | malformed_arn_exception()
          | operation_not_permitted_exception()
          | service_unavailable_exception()
          | idempotent_parameter_mismatch_exception()
          | resource_share_invitation_already_rejected_exception()
          | resource_share_invitation_arn_not_found_exception()
          | resource_share_invitation_expired_exception()

  @type associate_resource_share_errors() ::
          invalid_client_token_exception()
          | throttling_exception()
          | server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | unknown_resource_exception()
          | operation_not_permitted_exception()
          | service_unavailable_exception()
          | invalid_state_transition_exception()
          | idempotent_parameter_mismatch_exception()
          | resource_share_limit_exceeded_exception()

  @type associate_resource_share_permission_errors() ::
          invalid_client_token_exception()
          | server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | unknown_resource_exception()
          | operation_not_permitted_exception()
          | service_unavailable_exception()

  @type create_permission_errors() ::
          permission_limit_exceeded_exception()
          | invalid_client_token_exception()
          | server_internal_exception()
          | invalid_parameter_exception()
          | operation_not_permitted_exception()
          | service_unavailable_exception()
          | idempotent_parameter_mismatch_exception()
          | invalid_policy_exception()
          | permission_already_exists_exception()
          | malformed_policy_template_exception()

  @type create_permission_version_errors() ::
          invalid_client_token_exception()
          | server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | unknown_resource_exception()
          | service_unavailable_exception()
          | idempotent_parameter_mismatch_exception()
          | permission_versions_limit_exceeded_exception()
          | invalid_policy_exception()
          | malformed_policy_template_exception()

  @type create_resource_share_errors() ::
          tag_policy_violation_exception()
          | invalid_client_token_exception()
          | server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | unknown_resource_exception()
          | operation_not_permitted_exception()
          | service_unavailable_exception()
          | invalid_state_transition_exception()
          | tag_limit_exceeded_exception()
          | idempotent_parameter_mismatch_exception()
          | resource_share_limit_exceeded_exception()

  @type delete_permission_errors() ::
          invalid_client_token_exception()
          | server_internal_exception()
          | malformed_arn_exception()
          | unknown_resource_exception()
          | operation_not_permitted_exception()
          | service_unavailable_exception()
          | idempotent_parameter_mismatch_exception()

  @type delete_permission_version_errors() ::
          invalid_client_token_exception()
          | server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | unknown_resource_exception()
          | operation_not_permitted_exception()
          | service_unavailable_exception()
          | idempotent_parameter_mismatch_exception()

  @type delete_resource_share_errors() ::
          invalid_client_token_exception()
          | server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | unknown_resource_exception()
          | operation_not_permitted_exception()
          | service_unavailable_exception()
          | invalid_state_transition_exception()
          | idempotent_parameter_mismatch_exception()

  @type disassociate_resource_share_errors() ::
          invalid_client_token_exception()
          | server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | unknown_resource_exception()
          | operation_not_permitted_exception()
          | service_unavailable_exception()
          | invalid_state_transition_exception()
          | idempotent_parameter_mismatch_exception()
          | resource_share_limit_exceeded_exception()

  @type disassociate_resource_share_permission_errors() ::
          invalid_client_token_exception()
          | server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | unknown_resource_exception()
          | operation_not_permitted_exception()
          | service_unavailable_exception()
          | invalid_state_transition_exception()

  @type enable_sharing_with_aws_organization_errors() ::
          server_internal_exception()
          | operation_not_permitted_exception()
          | service_unavailable_exception()

  @type get_permission_errors() ::
          server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | unknown_resource_exception()
          | operation_not_permitted_exception()
          | service_unavailable_exception()

  @type get_resource_policies_errors() ::
          server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | invalid_next_token_exception()
          | resource_arn_not_found_exception()

  @type get_resource_share_associations_errors() ::
          server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | unknown_resource_exception()
          | operation_not_permitted_exception()
          | service_unavailable_exception()
          | invalid_next_token_exception()

  @type get_resource_share_invitations_errors() ::
          server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | unknown_resource_exception()
          | service_unavailable_exception()
          | invalid_next_token_exception()
          | resource_share_invitation_arn_not_found_exception()
          | invalid_max_results_exception()

  @type get_resource_shares_errors() ::
          server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | unknown_resource_exception()
          | service_unavailable_exception()
          | invalid_next_token_exception()

  @type list_pending_invitation_resources_errors() ::
          server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | invalid_next_token_exception()
          | resource_share_invitation_already_rejected_exception()
          | missing_required_parameter_exception()
          | resource_share_invitation_arn_not_found_exception()
          | resource_share_invitation_expired_exception()

  @type list_permission_associations_errors() ::
          server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | invalid_next_token_exception()

  @type list_permission_versions_errors() ::
          server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | unknown_resource_exception()
          | operation_not_permitted_exception()
          | service_unavailable_exception()
          | invalid_next_token_exception()

  @type list_permissions_errors() ::
          server_internal_exception()
          | invalid_parameter_exception()
          | operation_not_permitted_exception()
          | service_unavailable_exception()
          | invalid_next_token_exception()

  @type list_principals_errors() ::
          server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | unknown_resource_exception()
          | service_unavailable_exception()
          | invalid_next_token_exception()

  @type list_replace_permission_associations_work_errors() ::
          server_internal_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | invalid_next_token_exception()

  @type list_resource_share_permissions_errors() ::
          server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | unknown_resource_exception()
          | operation_not_permitted_exception()
          | service_unavailable_exception()
          | invalid_next_token_exception()

  @type list_resource_types_errors() ::
          server_internal_exception()
          | invalid_parameter_exception()
          | service_unavailable_exception()
          | invalid_next_token_exception()

  @type list_resources_errors() ::
          invalid_resource_type_exception()
          | server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | unknown_resource_exception()
          | service_unavailable_exception()
          | invalid_next_token_exception()

  @type promote_permission_created_from_policy_errors() ::
          server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | unknown_resource_exception()
          | operation_not_permitted_exception()
          | service_unavailable_exception()
          | missing_required_parameter_exception()

  @type promote_resource_share_created_from_policy_errors() ::
          server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | unknown_resource_exception()
          | operation_not_permitted_exception()
          | service_unavailable_exception()
          | invalid_state_transition_exception()
          | resource_share_limit_exceeded_exception()
          | unmatched_policy_permission_exception()
          | missing_required_parameter_exception()

  @type reject_resource_share_invitation_errors() ::
          resource_share_invitation_already_accepted_exception()
          | invalid_client_token_exception()
          | server_internal_exception()
          | malformed_arn_exception()
          | operation_not_permitted_exception()
          | service_unavailable_exception()
          | idempotent_parameter_mismatch_exception()
          | resource_share_invitation_already_rejected_exception()
          | resource_share_invitation_arn_not_found_exception()
          | resource_share_invitation_expired_exception()

  @type replace_permission_associations_errors() ::
          invalid_client_token_exception()
          | server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | unknown_resource_exception()
          | operation_not_permitted_exception()
          | service_unavailable_exception()
          | idempotent_parameter_mismatch_exception()

  @type set_default_permission_version_errors() ::
          invalid_client_token_exception()
          | server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | unknown_resource_exception()
          | service_unavailable_exception()
          | idempotent_parameter_mismatch_exception()

  @type tag_resource_errors() ::
          tag_policy_violation_exception()
          | server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | unknown_resource_exception()
          | service_unavailable_exception()
          | tag_limit_exceeded_exception()
          | resource_arn_not_found_exception()

  @type untag_resource_errors() ::
          server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | unknown_resource_exception()
          | service_unavailable_exception()

  @type update_resource_share_errors() ::
          invalid_client_token_exception()
          | server_internal_exception()
          | malformed_arn_exception()
          | invalid_parameter_exception()
          | unknown_resource_exception()
          | operation_not_permitted_exception()
          | service_unavailable_exception()
          | idempotent_parameter_mismatch_exception()
          | missing_required_parameter_exception()

  def metadata do
    %{
      api_version: "2018-01-04",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ram",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "RAM",
      signature_version: "v4",
      signing_name: "ram",
      target_prefix: nil
    }
  end

  @doc """
  Accepts an invitation to a resource share from another Amazon Web Services
  account. After you accept the invitation, the resources included in the
  resource share are available to interact with in the relevant Amazon Web
  Services Management Consoles and tools.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20AcceptResourceShareInvitation&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec accept_resource_share_invitation(AWS.Client.t(), Keyword.t()) ::
          {:ok, accept_resource_share_invitation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_resource_share_invitation_errors()}

  def accept_resource_share_invitation(%Client{} = client, options \\ []) do
    url_path = "/acceptresourceshareinvitation"

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
  Adds the specified list of principals and list of resources to a resource share.
  Principals that already have access to this resource share immediately receive
  access to the added resources. Newly added principals immediately receive
  access to the resources shared in this resource share.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20AssociateResourceShare&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec associate_resource_share(AWS.Client.t(), Keyword.t()) ::
          {:ok, associate_resource_share_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_resource_share_errors()}

  def associate_resource_share(%Client{} = client, options \\ []) do
    url_path = "/associateresourceshare"

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
  Adds or replaces the RAM permission for a resource type included in a resource
  share. You can have exactly one permission associated with each resource type
  in the resource share. You can add a new RAM permission only if there are
  currently no resources of that resource type currently in the resource share.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20AssociateResourceSharePermission&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec associate_resource_share_permission(AWS.Client.t(), Keyword.t()) ::
          {:ok, associate_resource_share_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_resource_share_permission_errors()}

  def associate_resource_share_permission(%Client{} = client, options \\ []) do
    url_path = "/associateresourcesharepermission"

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
  Creates a customer managed permission for a specified resource type that you can
  attach to resource shares. It is created in the Amazon Web Services Region in
  which you call the operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20CreatePermission&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_permission(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_permission_errors()}

  def create_permission(%Client{} = client, options \\ []) do
    url_path = "/createpermission"

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
  Creates a new version of the specified customer managed permission. The new
  version is automatically set as the default version of the customer managed
  permission. New resource shares automatically use the default permission.
  Existing resource shares continue to use their original permission versions,
  but you can use `ReplacePermissionAssociations` to update them.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20CreatePermissionVersion&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_permission_version(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_permission_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_permission_version_errors()}

  def create_permission_version(%Client{} = client, options \\ []) do
    url_path = "/createpermissionversion"

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
  Creates a resource share. You can provide a list of the [Amazon Resource Names
  (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
  for the resources that you want to share, a list of principals you want to
  share the resources with, and the permissions to grant those principals.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20CreateResourceShare&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec create_resource_share(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_resource_share_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_resource_share_errors()}

  def create_resource_share(%Client{} = client, options \\ []) do
    url_path = "/createresourceshare"

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
  Deletes the specified customer managed permission in the Amazon Web Services
  Region in which you call this operation. You can delete a customer managed
  permission only if it isn't attached to any resource share. The operation
  deletes all versions associated with the customer managed permission.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20DeletePermission&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:permission_arn` (`t:string`) Specifies the Amazon Resource Name (ARN) of the
  customer managed permission that you want to delete.

  ## Optional parameters:
  * `:client_token` (`t:string`) Specifies a unique, case-sensitive identifier
  that you provide to ensure the idempotency of the request. This lets you
  safely retry the request without accidentally performing the same operation
  a second time. Passing the same value to a later call to an operation
  requires that you also pass the same value for all other parameters. We
  recommend that you use a UUID type of value..
  """

  @spec delete_permission(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_permission_errors()}

  def delete_permission(%Client{} = client, permission_arn, options \\ [])
      when is_binary(permission_arn) do
    url_path = "/deletepermission"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"permissionArn", permission_arn}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :client_token) do
        [{"clientToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
  Deletes one version of a customer managed permission. The version you specify
  must not be attached to any resource share and must not be the default version
  for the permission.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20DeletePermissionVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:permission_arn` (`t:string`) Specifies the Amazon Resource Name (ARN) of the
  permission with the version you want to delete.
  * `:permission_version` (`t:integer`) Specifies the version number to delete.

  ## Optional parameters:
  * `:client_token` (`t:string`) Specifies a unique, case-sensitive identifier
  that you provide to ensure the idempotency of the request. This lets you
  safely retry the request without accidentally performing the same operation
  a second time. Passing the same value to a later call to an operation
  requires that you also pass the same value for all other parameters. We
  recommend that you use a UUID type of value..
  """

  @spec delete_permission_version(AWS.Client.t(), String.t(), String.t(), Keyword.t()) ::
          {:ok, delete_permission_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_permission_version_errors()}

  def delete_permission_version(
        %Client{} = client,
        permission_arn,
        permission_version,
        options \\ []
      )
      when is_binary(permission_arn) and is_integer(permission_version) do
    url_path = "/deletepermissionversion"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"permissionArn", permission_arn}, {"permissionVersion", permission_version}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :client_token) do
        [{"clientToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
  Deletes the specified resource share.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20DeleteResourceShare&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_share_arn` (`t:string`) Specifies the Amazon Resource Name (ARN) of
  the resource share to delete.

  ## Optional parameters:
  * `:client_token` (`t:string`) Specifies a unique, case-sensitive identifier
  that you provide to ensure the idempotency of the request. This lets you
  safely retry the request without accidentally performing the same operation
  a second time. Passing the same value to a later call to an operation
  requires that you also pass the same value for all other parameters. We
  recommend that you use a UUID type of value..
  """

  @spec delete_resource_share(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_resource_share_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_share_errors()}

  def delete_resource_share(%Client{} = client, resource_share_arn, options \\ [])
      when is_binary(resource_share_arn) do
    url_path = "/deleteresourceshare"

    # Validate optional parameters
    optional_params = [client_token: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = []

    # Optional headers

    # Required query params
    query_params = [{"resourceShareArn", resource_share_arn}]

    # Optional query params
    query_params =
      if opt_val = Keyword.get(options, :client_token) do
        [{"clientToken", opt_val} | query_params]
      else
        query_params
      end

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:client_token])

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
  Removes the specified principals or resources from participating in the
  specified resource share.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20DisassociateResourceShare&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec disassociate_resource_share(AWS.Client.t(), Keyword.t()) ::
          {:ok, disassociate_resource_share_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_resource_share_errors()}

  def disassociate_resource_share(%Client{} = client, options \\ []) do
    url_path = "/disassociateresourceshare"

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
  Removes a managed permission from a resource share. Permission changes take
  effect immediately. You can remove a managed permission from a resource share
  only if there are currently no resources of the relevant resource type
  currently attached to the resource share.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20DisassociateResourceSharePermission&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec disassociate_resource_share_permission(AWS.Client.t(), Keyword.t()) ::
          {:ok, disassociate_resource_share_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_resource_share_permission_errors()}

  def disassociate_resource_share_permission(%Client{} = client, options \\ []) do
    url_path = "/disassociateresourcesharepermission"

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
  Enables resource sharing within your organization in Organizations. This
  operation creates a service-linked role called
  `AWSServiceRoleForResourceAccessManager` that has the IAM managed policy named
  AWSResourceAccessManagerServiceRolePolicy attached. This role permits RAM to
  retrieve information about the organization and its structure. This lets you
  share resources with all of the accounts in the calling account's organization
  by specifying the organization ID, or all of the accounts in an organizational
  unit (OU) by specifying the OU ID. Until you enable sharing within the
  organization, you can specify only individual Amazon Web Services accounts, or
  for supported resource types, IAM roles and users.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20EnableSharingWithAwsOrganization&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec enable_sharing_with_aws_organization(AWS.Client.t(), Keyword.t()) ::
          {:ok, enable_sharing_with_aws_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_sharing_with_aws_organization_errors()}

  def enable_sharing_with_aws_organization(%Client{} = client, options \\ []) do
    url_path = "/enablesharingwithawsorganization"

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
  Retrieves the contents of a managed permission in JSON format.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20GetPermission&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_permission(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_permission_errors()}

  def get_permission(%Client{} = client, options \\ []) do
    url_path = "/getpermission"

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
  Retrieves the resource policies for the specified resources that you own and
  have shared.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20GetResourcePolicies&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_resource_policies(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_resource_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_policies_errors()}

  def get_resource_policies(%Client{} = client, options \\ []) do
    url_path = "/getresourcepolicies"

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
  Retrieves the lists of resources and principals that associated for resource
  shares that you own.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20GetResourceShareAssociations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_resource_share_associations(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_resource_share_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_share_associations_errors()}

  def get_resource_share_associations(%Client{} = client, options \\ []) do
    url_path = "/getresourceshareassociations"

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
  Retrieves details about invitations that you have received for resource shares.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20GetResourceShareInvitations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_resource_share_invitations(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_resource_share_invitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_share_invitations_errors()}

  def get_resource_share_invitations(%Client{} = client, options \\ []) do
    url_path = "/getresourceshareinvitations"

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
  Retrieves details about the resource shares that you own or that are shared with
  you.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20GetResourceShares&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec get_resource_shares(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_resource_shares_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_shares_errors()}

  def get_resource_shares(%Client{} = client, options \\ []) do
    url_path = "/getresourceshares"

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
  Lists the resources in a resource share that is shared with you but for which
  the invitation is still `PENDING`. That means that you haven't accepted or
  rejected the invitation and the invitation hasn't expired.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20ListPendingInvitationResources&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_pending_invitation_resources(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_pending_invitation_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_pending_invitation_resources_errors()}

  def list_pending_invitation_resources(%Client{} = client, options \\ []) do
    url_path = "/listpendinginvitationresources"

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
  Lists information about the managed permission and its associations to any
  resource shares that use this managed permission. This lets you see which
  resource shares use which versions of the specified managed permission.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20ListPermissionAssociations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_permission_associations(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_permission_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_permission_associations_errors()}

  def list_permission_associations(%Client{} = client, options \\ []) do
    url_path = "/listpermissionassociations"

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
  Lists the available versions of the specified RAM permission.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20ListPermissionVersions&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_permission_versions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_permission_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_permission_versions_errors()}

  def list_permission_versions(%Client{} = client, options \\ []) do
    url_path = "/listpermissionversions"

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
  Retrieves a list of available RAM permissions that you can use for the supported
  resource types.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20ListPermissions&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_permissions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_permissions_errors()}

  def list_permissions(%Client{} = client, options \\ []) do
    url_path = "/listpermissions"

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
  Lists the principals that you are sharing resources with or that are sharing
  resources with you.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20ListPrincipals&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_principals(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_principals_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_principals_errors()}

  def list_principals(%Client{} = client, options \\ []) do
    url_path = "/listprincipals"

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
  Retrieves the current status of the asynchronous tasks performed by RAM when you
  perform the `ReplacePermissionAssociationsWork` operation.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20ListReplacePermissionAssociationsWork&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_replace_permission_associations_work(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_replace_permission_associations_work_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_replace_permission_associations_work_errors()}

  def list_replace_permission_associations_work(%Client{} = client, options \\ []) do
    url_path = "/listreplacepermissionassociationswork"

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
  Lists the RAM permissions that are associated with a resource share.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20ListResourceSharePermissions&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_resource_share_permissions(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_resource_share_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resource_share_permissions_errors()}

  def list_resource_share_permissions(%Client{} = client, options \\ []) do
    url_path = "/listresourcesharepermissions"

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
  Lists the resource types that can be shared by RAM.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20ListResourceTypes&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_resource_types(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_resource_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resource_types_errors()}

  def list_resource_types(%Client{} = client, options \\ []) do
    url_path = "/listresourcetypes"

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
  Lists the resources that you added to a resource share or the resources that are
  shared with you.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20ListResources&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec list_resources(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resources_errors()}

  def list_resources(%Client{} = client, options \\ []) do
    url_path = "/listresources"

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
  When you attach a resource-based policy to a resource, RAM automatically creates
  a resource share of `featureSet`=`CREATED_FROM_POLICY` with a managed
  permission that has the same IAM permissions as the original resource-based
  policy. However, this type of managed permission is visible to only the
  resource share owner, and the associated resource share can't be modified by
  using RAM. This operation creates a separate, fully manageable customer
  managed permission that has the same IAM permissions as the original
  resource-based policy. You can associate this customer managed permission to
  any resource shares.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20PromotePermissionCreatedFromPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec promote_permission_created_from_policy(AWS.Client.t(), Keyword.t()) ::
          {:ok, promote_permission_created_from_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, promote_permission_created_from_policy_errors()}

  def promote_permission_created_from_policy(%Client{} = client, options \\ []) do
    url_path = "/promotepermissioncreatedfrompolicy"

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
  When you attach a resource-based policy to a resource, RAM automatically creates
  a resource share of `featureSet`=`CREATED_FROM_POLICY` with a managed
  permission that has the same IAM permissions as the original resource-based
  policy. However, this type of managed permission is visible to only the
  resource share owner, and the associated resource share can't be modified by
  using RAM. This operation promotes the resource share to a `STANDARD` resource
  share that is fully manageable in RAM. When you promote a resource share, you
  can then manage the resource share in RAM and it becomes visible to all of the
  principals you shared it with.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20PromoteResourceShareCreatedFromPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:resource_share_arn` (`t:string`) Specifies the Amazon Resource Name (ARN) of
  the resource share to promote.

  ## Optional parameters:
  """

  @spec promote_resource_share_created_from_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, promote_resource_share_created_from_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, promote_resource_share_created_from_policy_errors()}

  def promote_resource_share_created_from_policy(
        %Client{} = client,
        resource_share_arn,
        options \\ []
      )
      when is_binary(resource_share_arn) do
    url_path = "/promoteresourcesharecreatedfrompolicy"

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
    query_params = [{"resourceShareArn", resource_share_arn}]

    # Optional query params

    meta =
      metadata()

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Rejects an invitation to a resource share from another Amazon Web Services
  account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20RejectResourceShareInvitation&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec reject_resource_share_invitation(AWS.Client.t(), Keyword.t()) ::
          {:ok, reject_resource_share_invitation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reject_resource_share_invitation_errors()}

  def reject_resource_share_invitation(%Client{} = client, options \\ []) do
    url_path = "/rejectresourceshareinvitation"

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
  Updates all resource shares that use a managed permission to a different managed
  permission. This operation always applies the default version of the target
  managed permission. You can optionally specify that the update applies to only
  resource shares that currently use a specified version. This enables you to
  update to the latest version, without changing the which managed permission is
  used. You can use this operation to update all of your resource shares to use
  the current default version of the permission by specifying the same value for
  the `fromPermissionArn` and `toPermissionArn` parameters.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20ReplacePermissionAssociations&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec replace_permission_associations(AWS.Client.t(), Keyword.t()) ::
          {:ok, replace_permission_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, replace_permission_associations_errors()}

  def replace_permission_associations(%Client{} = client, options \\ []) do
    url_path = "/replacepermissionassociations"

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
  Designates the specified version number as the default version for the specified
  customer managed permission. New resource shares automatically use this new
  default permission. Existing resource shares continue to use their original
  permission version, but you can use `ReplacePermissionAssociations` to update
  them.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20SetDefaultPermissionVersion&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec set_default_permission_version(AWS.Client.t(), Keyword.t()) ::
          {:ok, set_default_permission_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_default_permission_version_errors()}

  def set_default_permission_version(%Client{} = client, options \\ []) do
    url_path = "/setdefaultpermissionversion"

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
  Adds the specified tag keys and values to a resource share or managed
  permission. If you choose a resource share, the tags are attached to only the
  resource share, not to the resources that are in the resource share.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec tag_resource(AWS.Client.t(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}

  def tag_resource(%Client{} = client, options \\ []) do
    url_path = "/tagresource"

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
  Removes the specified tag key and value pairs from the specified resource share
  or managed permission.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec untag_resource(AWS.Client.t(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}

  def untag_resource(%Client{} = client, options \\ []) do
    url_path = "/untagresource"

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
  Modifies some of the properties of the specified resource share.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=ram%20UpdateResourceShare&this_doc_guide=API%2520Reference)

  ## Parameters:

  ## Optional parameters:
  """

  @spec update_resource_share(AWS.Client.t(), Keyword.t()) ::
          {:ok, update_resource_share_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_resource_share_errors()}

  def update_resource_share(%Client{} = client, options \\ []) do
    url_path = "/updateresourceshare"

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
end
