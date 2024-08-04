# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudDirectory do
  @moduledoc """
  Amazon Cloud Directory
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      incompatible_schema_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type incompatible_schema_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_facet_request() :: %{
        required("Name") => String.t(),
        required("SchemaArn") => String.t()
      }
      
  """
  @type get_facet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      object_attribute_range() :: %{
        "AttributeKey" => attribute_key(),
        "Range" => typed_attribute_value_range()
      }
      
  """
  @type object_attribute_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_link_attributes() :: %{
        "AttributeNames" => list(String.t()()),
        "TypedLinkSpecifier" => typed_link_specifier()
      }
      
  """
  @type batch_get_link_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_list_policy_attachments() :: %{
        "MaxResults" => integer(),
        "NextToken" => String.t(),
        "PolicyReference" => object_reference()
      }
      
  """
  @type batch_list_policy_attachments() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_object_request() :: %{
        required("DirectoryArn") => String.t(),
        required("ObjectReference") => object_reference()
      }
      
  """
  @type delete_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_to_path() :: %{
        "Path" => String.t(),
        "Policies" => list(policy_attachment()())
      }
      
  """
  @type policy_to_path() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_incoming_typed_links_response() :: %{
        "LinkSpecifiers" => list(typed_link_specifier()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_incoming_typed_links_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_object_attributes_response() :: %{
        "Attributes" => list(attribute_key_and_value()())
      }
      
  """
  @type get_object_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_attach_object() :: %{
        "ChildReference" => object_reference(),
        "LinkName" => String.t(),
        "ParentReference" => object_reference()
      }
      
  """
  @type batch_attach_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_list_index() :: %{
        "IndexReference" => object_reference(),
        "MaxResults" => integer(),
        "NextToken" => String.t(),
        "RangesOnIndexedValues" => list(object_attribute_range()())
      }
      
  """
  @type batch_list_index() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detach_object_response() :: %{
        "detachedObjectIdentifier" => String.t()
      }
      
  """
  @type batch_detach_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_directory_request() :: %{
        required("Name") => String.t(),
        required("SchemaArn") => String.t()
      }
      
  """
  @type create_directory_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_lookup_policy() :: %{
        "MaxResults" => integer(),
        "NextToken" => String.t(),
        "ObjectReference" => object_reference()
      }
      
  """
  @type batch_lookup_policy() :: %{String.t() => any()}

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
      
      list_object_policies_response() :: %{
        "AttachedPolicyIds" => list(String.t()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_object_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_published_schema_arns_response() :: %{
        "NextToken" => String.t(),
        "SchemaArns" => list(String.t()())
      }
      
  """
  @type list_published_schema_arns_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_attach_to_index_response() :: %{
        "AttachedObjectIdentifier" => String.t()
      }
      
  """
  @type batch_attach_to_index_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_schema_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type create_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_object_attributes() :: %{
        "AttributeNames" => list(String.t()()),
        "ObjectReference" => object_reference(),
        "SchemaFacet" => schema_facet()
      }
      
  """
  @type batch_get_object_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      typed_link_specifier() :: %{
        "IdentityAttributeValues" => list(attribute_name_and_value()()),
        "SourceObjectReference" => object_reference(),
        "TargetObjectReference" => object_reference(),
        "TypedLinkFacet" => typed_link_schema_and_facet_name()
      }
      
  """
  @type typed_link_specifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_list_incoming_typed_links() :: %{
        "FilterAttributeRanges" => list(typed_link_attribute_range()()),
        "FilterTypedLink" => typed_link_schema_and_facet_name(),
        "MaxResults" => integer(),
        "NextToken" => String.t(),
        "ObjectReference" => object_reference()
      }
      
  """
  @type batch_list_incoming_typed_links() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_remove_facet_from_object() :: %{
        "ObjectReference" => object_reference(),
        "SchemaFacet" => schema_facet()
      }
      
  """
  @type batch_remove_facet_from_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_applied_schema_version_response() :: %{
        "AppliedSchemaArn" => String.t()
      }
      
  """
  @type get_applied_schema_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_index_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type not_index_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_typed_link_facet_response() :: %{}
      
  """
  @type create_typed_link_facet_response() :: %{}

  @typedoc """

  ## Example:
      
      batch_list_attached_indices() :: %{
        "MaxResults" => integer(),
        "NextToken" => String.t(),
        "TargetReference" => object_reference()
      }
      
  """
  @type batch_list_attached_indices() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_directory_response() :: %{
        "DirectoryArn" => String.t()
      }
      
  """
  @type disable_directory_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_schema_as_json_response() :: %{
        "Document" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type get_schema_as_json_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retryable_conflict_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type retryable_conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_directory_response() :: %{
        "AppliedSchemaArn" => String.t(),
        "DirectoryArn" => String.t(),
        "Name" => String.t(),
        "ObjectIdentifier" => String.t()
      }
      
  """
  @type create_directory_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_applied_schema_version_request() :: %{
        required("SchemaArn") => String.t()
      }
      
  """
  @type get_applied_schema_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_schema_request() :: %{
        required("SchemaArn") => String.t()
      }
      
  """
  @type delete_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schema_facet() :: %{
        "FacetName" => String.t(),
        "SchemaArn" => String.t()
      }
      
  """
  @type schema_facet() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_list_object_attributes() :: %{
        "FacetFilter" => schema_facet(),
        "MaxResults" => integer(),
        "NextToken" => String.t(),
        "ObjectReference" => object_reference()
      }
      
  """
  @type batch_list_object_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_object_response() :: %{}
      
  """
  @type delete_object_response() :: %{}

  @typedoc """

  ## Example:
      
      object_reference() :: %{
        "Selector" => String.t()
      }
      
  """
  @type object_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_write_operation_response() :: %{
        "AddFacetToObject" => batch_add_facet_to_object_response(),
        "AttachObject" => batch_attach_object_response(),
        "AttachPolicy" => batch_attach_policy_response(),
        "AttachToIndex" => batch_attach_to_index_response(),
        "AttachTypedLink" => batch_attach_typed_link_response(),
        "CreateIndex" => batch_create_index_response(),
        "CreateObject" => batch_create_object_response(),
        "DeleteObject" => batch_delete_object_response(),
        "DetachFromIndex" => batch_detach_from_index_response(),
        "DetachObject" => batch_detach_object_response(),
        "DetachPolicy" => batch_detach_policy_response(),
        "DetachTypedLink" => batch_detach_typed_link_response(),
        "RemoveFacetFromObject" => batch_remove_facet_from_object_response(),
        "UpdateLinkAttributes" => batch_update_link_attributes_response(),
        "UpdateObjectAttributes" => batch_update_object_attributes_response()
      }
      
  """
  @type batch_write_operation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_write_request() :: %{
        required("DirectoryArn") => String.t(),
        required("Operations") => list(batch_write_operation()())
      }
      
  """
  @type batch_write_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_directory_request() :: %{
        required("DirectoryArn") => String.t()
      }
      
  """
  @type enable_directory_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_list_policy_attachments_response() :: %{
        "NextToken" => String.t(),
        "ObjectIdentifiers" => list(String.t()())
      }
      
  """
  @type batch_list_policy_attachments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_facet_update_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_facet_update_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_list_incoming_typed_links_response() :: %{
        "LinkSpecifiers" => list(typed_link_specifier()()),
        "NextToken" => String.t()
      }
      
  """
  @type batch_list_incoming_typed_links_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      facet_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type facet_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_attached_indices_request() :: %{
        optional("ConsistencyLevel") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("DirectoryArn") => String.t(),
        required("TargetReference") => object_reference()
      }
      
  """
  @type list_attached_indices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_object_response() :: %{}
      
  """
  @type batch_delete_object_response() :: %{}

  @typedoc """

  ## Example:
      
      directory_deleted_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type directory_deleted_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lookup_policy_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("DirectoryArn") => String.t(),
        required("ObjectReference") => object_reference()
      }
      
  """
  @type lookup_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_read_operation_response() :: %{
        "ExceptionResponse" => batch_read_exception(),
        "SuccessfulResponse" => batch_read_successful_response()
      }
      
  """
  @type batch_read_operation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_typed_link_facet_names_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("SchemaArn") => String.t()
      }
      
  """
  @type list_typed_link_facet_names_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_object_children_response() :: %{
        "Children" => map(),
        "NextToken" => String.t()
      }
      
  """
  @type list_object_children_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_read_successful_response() :: %{
        "GetLinkAttributes" => batch_get_link_attributes_response(),
        "GetObjectAttributes" => batch_get_object_attributes_response(),
        "GetObjectInformation" => batch_get_object_information_response(),
        "ListAttachedIndices" => batch_list_attached_indices_response(),
        "ListIncomingTypedLinks" => batch_list_incoming_typed_links_response(),
        "ListIndex" => batch_list_index_response(),
        "ListObjectAttributes" => batch_list_object_attributes_response(),
        "ListObjectChildren" => batch_list_object_children_response(),
        "ListObjectParentPaths" => batch_list_object_parent_paths_response(),
        "ListObjectParents" => batch_list_object_parents_response(),
        "ListObjectPolicies" => batch_list_object_policies_response(),
        "ListOutgoingTypedLinks" => batch_list_outgoing_typed_links_response(),
        "ListPolicyAttachments" => batch_list_policy_attachments_response(),
        "LookupPolicy" => batch_lookup_policy_response()
      }
      
  """
  @type batch_read_successful_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      typed_link_schema_and_facet_name() :: %{
        "SchemaArn" => String.t(),
        "TypedLinkName" => String.t()
      }
      
  """
  @type typed_link_schema_and_facet_name() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      typed_attribute_value_range() :: %{
        "EndMode" => list(any()),
        "EndValue" => list(),
        "StartMode" => list(any()),
        "StartValue" => list()
      }
      
  """
  @type typed_attribute_value_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_object_attributes_request() :: %{
        optional("ConsistencyLevel") => list(any()),
        optional("FacetFilter") => schema_facet(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("DirectoryArn") => String.t(),
        required("ObjectReference") => object_reference()
      }
      
  """
  @type list_object_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_link_attributes_response() :: %{}
      
  """
  @type batch_update_link_attributes_response() :: %{}

  @typedoc """

  ## Example:
      
      detach_policy_request() :: %{
        required("DirectoryArn") => String.t(),
        required("ObjectReference") => object_reference(),
        required("PolicyReference") => object_reference()
      }
      
  """
  @type detach_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      publish_schema_response() :: %{
        "PublishedSchemaArn" => String.t()
      }
      
  """
  @type publish_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      directory() :: %{
        "CreationDateTime" => non_neg_integer(),
        "DirectoryArn" => String.t(),
        "Name" => String.t(),
        "State" => list(any())
      }
      
  """
  @type directory() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      link_attribute_action() :: %{
        "AttributeActionType" => list(any()),
        "AttributeUpdateValue" => list()
      }
      
  """
  @type link_attribute_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_schema_response() :: %{
        "SchemaArn" => String.t()
      }
      
  """
  @type update_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_directory_response() :: %{
        "DirectoryArn" => String.t()
      }
      
  """
  @type enable_directory_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_object_policies_request() :: %{
        optional("ConsistencyLevel") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("DirectoryArn") => String.t(),
        required("ObjectReference") => object_reference()
      }
      
  """
  @type list_object_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detach_policy_response() :: %{}
      
  """
  @type batch_detach_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      facet_attribute() :: %{
        "AttributeDefinition" => facet_attribute_definition(),
        "AttributeReference" => facet_attribute_reference(),
        "Name" => String.t(),
        "RequiredBehavior" => list(any())
      }
      
  """
  @type facet_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_typed_link_facet_attributes_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Name") => String.t(),
        required("SchemaArn") => String.t()
      }
      
  """
  @type list_typed_link_facet_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_link_attributes_request() :: %{
        optional("ConsistencyLevel") => list(any()),
        required("AttributeNames") => list(String.t()()),
        required("DirectoryArn") => String.t(),
        required("TypedLinkSpecifier") => typed_link_specifier()
      }
      
  """
  @type get_link_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_development_schema_arns_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_development_schema_arns_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_schema_response() :: %{
        "SchemaArn" => String.t()
      }
      
  """
  @type create_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_directory_request() :: %{
        required("DirectoryArn") => String.t()
      }
      
  """
  @type disable_directory_request() :: %{String.t() => any()}

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
      
      apply_schema_request() :: %{
        required("DirectoryArn") => String.t(),
        required("PublishedSchemaArn") => String.t()
      }
      
  """
  @type apply_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_attach_policy_response() :: %{}
      
  """
  @type batch_attach_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      schema_already_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type schema_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      apply_schema_response() :: %{
        "AppliedSchemaArn" => String.t(),
        "DirectoryArn" => String.t()
      }
      
  """
  @type apply_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schema_already_published_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type schema_already_published_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_index_response() :: %{
        "ObjectIdentifier" => String.t()
      }
      
  """
  @type batch_create_index_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_facet_attributes_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Name") => String.t(),
        required("SchemaArn") => String.t()
      }
      
  """
  @type list_facet_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_add_facet_to_object_response() :: %{}
      
  """
  @type batch_add_facet_to_object_response() :: %{}

  @typedoc """

  ## Example:
      
      batch_remove_facet_from_object_response() :: %{}
      
  """
  @type batch_remove_facet_from_object_response() :: %{}

  @typedoc """

  ## Example:
      
      batch_get_object_information() :: %{
        "ObjectReference" => object_reference()
      }
      
  """
  @type batch_get_object_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_arn_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_arn_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_list_object_policies_response() :: %{
        "AttachedPolicyIds" => list(String.t()()),
        "NextToken" => String.t()
      }
      
  """
  @type batch_list_object_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upgrade_published_schema_request() :: %{
        optional("DryRun") => boolean(),
        required("DevelopmentSchemaArn") => String.t(),
        required("MinorVersion") => String.t(),
        required("PublishedSchemaArn") => String.t()
      }
      
  """
  @type upgrade_published_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_object_attributes_request() :: %{
        required("AttributeUpdates") => list(object_attribute_update()()),
        required("DirectoryArn") => String.t(),
        required("ObjectReference") => object_reference()
      }
      
  """
  @type update_object_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_object_parent_paths_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("DirectoryArn") => String.t(),
        required("ObjectReference") => object_reference()
      }
      
  """
  @type list_object_parent_paths_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_typed_link_facet_attributes_response() :: %{
        "Attributes" => list(typed_link_attribute_definition()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_typed_link_facet_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_node_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type not_node_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_list_object_parent_paths_response() :: %{
        "NextToken" => String.t(),
        "PathToObjectIdentifiersList" => list(path_to_object_identifiers()())
      }
      
  """
  @type batch_list_object_parent_paths_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      index_attachment() :: %{
        "IndexedAttributes" => list(attribute_key_and_value()()),
        "ObjectIdentifier" => String.t()
      }
      
  """
  @type index_attachment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_list_object_parents_response() :: %{
        "NextToken" => String.t(),
        "ParentLinks" => list(object_identifier_and_link_name_tuple()())
      }
      
  """
  @type batch_list_object_parents_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_write_response() :: %{
        "Responses" => list(batch_write_operation_response()())
      }
      
  """
  @type batch_write_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_list_object_parent_paths() :: %{
        "MaxResults" => integer(),
        "NextToken" => String.t(),
        "ObjectReference" => object_reference()
      }
      
  """
  @type batch_list_object_parent_paths() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_facet_response() :: %{}
      
  """
  @type create_facet_response() :: %{}

  @typedoc """

  ## Example:
      
      put_schema_from_json_response() :: %{
        "Arn" => String.t()
      }
      
  """
  @type put_schema_from_json_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_object_parents_response() :: %{
        "NextToken" => String.t(),
        "ParentLinks" => list(object_identifier_and_link_name_tuple()()),
        "Parents" => map()
      }
      
  """
  @type list_object_parents_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_directory_response() :: %{
        "Directory" => directory()
      }
      
  """
  @type get_directory_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attribute_name_and_value() :: %{
        "AttributeName" => String.t(),
        "Value" => list()
      }
      
  """
  @type attribute_name_and_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_object_request() :: %{
        required("ChildReference") => object_reference(),
        required("DirectoryArn") => String.t(),
        required("LinkName") => String.t(),
        required("ParentReference") => object_reference()
      }
      
  """
  @type attach_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_read_exception() :: %{
        "Message" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type batch_read_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_object_children_request() :: %{
        optional("ConsistencyLevel") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("DirectoryArn") => String.t(),
        required("ObjectReference") => object_reference()
      }
      
  """
  @type list_object_children_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      typed_link_attribute_definition() :: %{
        "DefaultValue" => list(),
        "IsImmutable" => boolean(),
        "Name" => String.t(),
        "RequiredBehavior" => list(any()),
        "Rules" => map(),
        "Type" => list(any())
      }
      
  """
  @type typed_link_attribute_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_facet_names_response() :: %{
        "FacetNames" => list(String.t()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_facet_names_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      facet_attribute_update() :: %{
        "Action" => list(any()),
        "Attribute" => facet_attribute()
      }
      
  """
  @type facet_attribute_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_applied_schema_arns_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SchemaArn") => String.t(),
        required("DirectoryArn") => String.t()
      }
      
  """
  @type list_applied_schema_arns_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_object_response() :: %{
        "DetachedObjectIdentifier" => String.t()
      }
      
  """
  @type detach_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_link_attributes_response() :: %{}
      
  """
  @type update_link_attributes_response() :: %{}

  @typedoc """

  ## Example:
      
      add_facet_to_object_response() :: %{}
      
  """
  @type add_facet_to_object_response() :: %{}

  @typedoc """

  ## Example:
      
      batch_lookup_policy_response() :: %{
        "NextToken" => String.t(),
        "PolicyToPathList" => list(policy_to_path()())
      }
      
  """
  @type batch_lookup_policy_response() :: %{String.t() => any()}

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
      
      batch_detach_policy() :: %{
        "ObjectReference" => object_reference(),
        "PolicyReference" => object_reference()
      }
      
  """
  @type batch_detach_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      directory_already_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type directory_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_policy_response() :: %{}
      
  """
  @type attach_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      batch_update_link_attributes() :: %{
        "AttributeUpdates" => list(link_attribute_update()()),
        "TypedLinkSpecifier" => typed_link_specifier()
      }
      
  """
  @type batch_update_link_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_object_response() :: %{
        "ObjectIdentifier" => String.t()
      }
      
  """
  @type batch_create_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_policy_request() :: %{
        required("DirectoryArn") => String.t(),
        required("ObjectReference") => object_reference(),
        required("PolicyReference") => object_reference()
      }
      
  """
  @type attach_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      facet_attribute_reference() :: %{
        "TargetAttributeName" => String.t(),
        "TargetFacetName" => String.t()
      }
      
  """
  @type facet_attribute_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_schema_doc_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_schema_doc_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_directory_response() :: %{
        "DirectoryArn" => String.t()
      }
      
  """
  @type delete_directory_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_typed_link_facet_information_request() :: %{
        required("Name") => String.t(),
        required("SchemaArn") => String.t()
      }
      
  """
  @type get_typed_link_facet_information_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_to_index_request() :: %{
        required("DirectoryArn") => String.t(),
        required("IndexReference") => object_reference(),
        required("TargetReference") => object_reference()
      }
      
  """
  @type attach_to_index_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_object_information_response() :: %{
        "ObjectIdentifier" => String.t(),
        "SchemaFacets" => list(schema_facet()())
      }
      
  """
  @type batch_get_object_information_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_from_index_response() :: %{
        "DetachedObjectIdentifier" => String.t()
      }
      
  """
  @type detach_from_index_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_from_index_request() :: %{
        required("DirectoryArn") => String.t(),
        required("IndexReference") => object_reference(),
        required("TargetReference") => object_reference()
      }
      
  """
  @type detach_from_index_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      facet_in_use_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type facet_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_schema_response() :: %{
        "SchemaArn" => String.t()
      }
      
  """
  @type delete_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detach_object() :: %{
        "BatchReferenceName" => String.t(),
        "LinkName" => String.t(),
        "ParentReference" => object_reference()
      }
      
  """
  @type batch_detach_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_facet_names_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("SchemaArn") => String.t()
      }
      
  """
  @type list_facet_names_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_list_attached_indices_response() :: %{
        "IndexAttachments" => list(index_attachment()()),
        "NextToken" => String.t()
      }
      
  """
  @type batch_list_attached_indices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_facet_request() :: %{
        required("Name") => String.t(),
        required("SchemaArn") => String.t()
      }
      
  """
  @type delete_facet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policy_attachments_request() :: %{
        optional("ConsistencyLevel") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("DirectoryArn") => String.t(),
        required("PolicyReference") => object_reference()
      }
      
  """
  @type list_policy_attachments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_object() :: %{
        "BatchReferenceName" => String.t(),
        "LinkName" => String.t(),
        "ObjectAttributeList" => list(attribute_key_and_value()()),
        "ParentReference" => object_reference(),
        "SchemaFacet" => list(schema_facet()())
      }
      
  """
  @type batch_create_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_read_operation() :: %{
        "GetLinkAttributes" => batch_get_link_attributes(),
        "GetObjectAttributes" => batch_get_object_attributes(),
        "GetObjectInformation" => batch_get_object_information(),
        "ListAttachedIndices" => batch_list_attached_indices(),
        "ListIncomingTypedLinks" => batch_list_incoming_typed_links(),
        "ListIndex" => batch_list_index(),
        "ListObjectAttributes" => batch_list_object_attributes(),
        "ListObjectChildren" => batch_list_object_children(),
        "ListObjectParentPaths" => batch_list_object_parent_paths(),
        "ListObjectParents" => batch_list_object_parents(),
        "ListObjectPolicies" => batch_list_object_policies(),
        "ListOutgoingTypedLinks" => batch_list_outgoing_typed_links(),
        "ListPolicyAttachments" => batch_list_policy_attachments(),
        "LookupPolicy" => batch_lookup_policy()
      }
      
  """
  @type batch_read_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_incoming_typed_links_request() :: %{
        optional("ConsistencyLevel") => list(any()),
        optional("FilterAttributeRanges") => list(typed_link_attribute_range()()),
        optional("FilterTypedLink") => typed_link_schema_and_facet_name(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("DirectoryArn") => String.t(),
        required("ObjectReference") => object_reference()
      }
      
  """
  @type list_incoming_typed_links_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_facet_attributes_response() :: %{
        "Attributes" => list(facet_attribute()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_facet_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "NextToken" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      object_attribute_update() :: %{
        "ObjectAttributeAction" => object_attribute_action(),
        "ObjectAttributeKey" => attribute_key()
      }
      
  """
  @type object_attribute_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upgrade_published_schema_response() :: %{
        "UpgradedSchemaArn" => String.t()
      }
      
  """
  @type upgrade_published_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_facet_response() :: %{}
      
  """
  @type update_facet_response() :: %{}

  @typedoc """

  ## Example:
      
      list_outgoing_typed_links_request() :: %{
        optional("ConsistencyLevel") => list(any()),
        optional("FilterAttributeRanges") => list(typed_link_attribute_range()()),
        optional("FilterTypedLink") => typed_link_schema_and_facet_name(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("DirectoryArn") => String.t(),
        required("ObjectReference") => object_reference()
      }
      
  """
  @type list_outgoing_typed_links_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_object_attributes_response() :: %{
        "ObjectIdentifier" => String.t()
      }
      
  """
  @type batch_update_object_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_list_index_response() :: %{
        "IndexAttachments" => list(index_attachment()()),
        "NextToken" => String.t()
      }
      
  """
  @type batch_list_index_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_outgoing_typed_links_response() :: %{
        "NextToken" => String.t(),
        "TypedLinkSpecifiers" => list(typed_link_specifier()())
      }
      
  """
  @type list_outgoing_typed_links_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_to_index_response() :: %{
        "AttachedObjectIdentifier" => String.t()
      }
      
  """
  @type attach_to_index_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      indexed_attribute_missing_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type indexed_attribute_missing_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_link_attributes_request() :: %{
        required("AttributeUpdates") => list(link_attribute_update()()),
        required("DirectoryArn") => String.t(),
        required("TypedLinkSpecifier") => typed_link_specifier()
      }
      
  """
  @type update_link_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      object_attribute_action() :: %{
        "ObjectAttributeActionType" => list(any()),
        "ObjectAttributeUpdateValue" => list()
      }
      
  """
  @type object_attribute_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule() :: %{
        "Parameters" => map(),
        "Type" => list(any())
      }
      
  """
  @type rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_typed_link_request() :: %{
        required("Attributes") => list(attribute_name_and_value()()),
        required("DirectoryArn") => String.t(),
        required("SourceObjectReference") => object_reference(),
        required("TargetObjectReference") => object_reference(),
        required("TypedLinkFacet") => typed_link_schema_and_facet_name()
      }
      
  """
  @type attach_typed_link_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_applied_schema_arns_response() :: %{
        "NextToken" => String.t(),
        "SchemaArns" => list(String.t()())
      }
      
  """
  @type list_applied_schema_arns_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_write_operation() :: %{
        "AddFacetToObject" => batch_add_facet_to_object(),
        "AttachObject" => batch_attach_object(),
        "AttachPolicy" => batch_attach_policy(),
        "AttachToIndex" => batch_attach_to_index(),
        "AttachTypedLink" => batch_attach_typed_link(),
        "CreateIndex" => batch_create_index(),
        "CreateObject" => batch_create_object(),
        "DeleteObject" => batch_delete_object(),
        "DetachFromIndex" => batch_detach_from_index(),
        "DetachObject" => batch_detach_object(),
        "DetachPolicy" => batch_detach_policy(),
        "DetachTypedLink" => batch_detach_typed_link(),
        "RemoveFacetFromObject" => batch_remove_facet_from_object(),
        "UpdateLinkAttributes" => batch_update_link_attributes(),
        "UpdateObjectAttributes" => batch_update_object_attributes()
      }
      
  """
  @type batch_write_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_attach_typed_link() :: %{
        "Attributes" => list(attribute_name_and_value()()),
        "SourceObjectReference" => object_reference(),
        "TargetObjectReference" => object_reference(),
        "TypedLinkFacet" => typed_link_schema_and_facet_name()
      }
      
  """
  @type batch_attach_typed_link() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_index_type_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type unsupported_index_type_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_index_request() :: %{
        optional("ConsistencyLevel") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("RangesOnIndexedValues") => list(object_attribute_range()()),
        required("DirectoryArn") => String.t(),
        required("IndexReference") => object_reference()
      }
      
  """
  @type list_index_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      link_attribute_update() :: %{
        "AttributeAction" => link_attribute_action(),
        "AttributeKey" => attribute_key()
      }
      
  """
  @type link_attribute_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      link_name_already_in_use_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type link_name_already_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_attachment() :: %{
        "ObjectIdentifier" => String.t(),
        "PolicyId" => String.t(),
        "PolicyType" => String.t()
      }
      
  """
  @type policy_attachment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_typed_link_response() :: %{
        "TypedLinkSpecifier" => typed_link_specifier()
      }
      
  """
  @type attach_typed_link_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_object_attributes() :: %{
        "AttributeUpdates" => list(object_attribute_update()()),
        "ObjectReference" => object_reference()
      }
      
  """
  @type batch_update_object_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_object_attributes_response() :: %{
        "Attributes" => list(attribute_key_and_value()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_object_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_typed_link_facet_response() :: %{}
      
  """
  @type update_typed_link_facet_response() :: %{}

  @typedoc """

  ## Example:
      
      batch_list_object_attributes_response() :: %{
        "Attributes" => list(attribute_key_and_value()()),
        "NextToken" => String.t()
      }
      
  """
  @type batch_list_object_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      publish_schema_request() :: %{
        optional("MinorVersion") => String.t(),
        optional("Name") => String.t(),
        required("DevelopmentSchemaArn") => String.t(),
        required("Version") => String.t()
      }
      
  """
  @type publish_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_object_information_response() :: %{
        "ObjectIdentifier" => String.t(),
        "SchemaFacets" => list(schema_facet()())
      }
      
  """
  @type get_object_information_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_read_response() :: %{
        "Responses" => list(batch_read_operation_response()())
      }
      
  """
  @type batch_read_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      path_to_object_identifiers() :: %{
        "ObjectIdentifiers" => list(String.t()()),
        "Path" => String.t()
      }
      
  """
  @type path_to_object_identifiers() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_attach_policy() :: %{
        "ObjectReference" => object_reference(),
        "PolicyReference" => object_reference()
      }
      
  """
  @type batch_attach_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_object_parent_paths_response() :: %{
        "NextToken" => String.t(),
        "PathToObjectIdentifiersList" => list(path_to_object_identifiers()())
      }
      
  """
  @type list_object_parent_paths_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_list_object_parents() :: %{
        "MaxResults" => integer(),
        "NextToken" => String.t(),
        "ObjectReference" => object_reference()
      }
      
  """
  @type batch_list_object_parents() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_schema_from_json_request() :: %{
        required("Document") => String.t(),
        required("SchemaArn") => String.t()
      }
      
  """
  @type put_schema_from_json_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_attach_to_index() :: %{
        "IndexReference" => object_reference(),
        "TargetReference" => object_reference()
      }
      
  """
  @type batch_attach_to_index() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_typed_link_facet_request() :: %{
        required("Name") => String.t(),
        required("SchemaArn") => String.t()
      }
      
  """
  @type delete_typed_link_facet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_facet_request() :: %{
        optional("Attributes") => list(facet_attribute()()),
        optional("FacetStyle") => list(any()),
        optional("ObjectType") => list(any()),
        required("Name") => String.t(),
        required("SchemaArn") => String.t()
      }
      
  """
  @type create_facet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_directories_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("state") => list(any())
      }
      
  """
  @type list_directories_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cannot_list_parent_of_root_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type cannot_list_parent_of_root_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upgrade_applied_schema_request() :: %{
        optional("DryRun") => boolean(),
        required("DirectoryArn") => String.t(),
        required("PublishedSchemaArn") => String.t()
      }
      
  """
  @type upgrade_applied_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_index_request() :: %{
        optional("LinkName") => String.t(),
        optional("ParentReference") => object_reference(),
        required("DirectoryArn") => String.t(),
        required("IsUnique") => boolean(),
        required("OrderedIndexedAttributeList") => list(attribute_key()())
      }
      
  """
  @type create_index_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_typed_link_facet_request() :: %{
        required("AttributeUpdates") => list(typed_link_facet_attribute_update()()),
        required("IdentityAttributeOrder") => list(String.t()()),
        required("Name") => String.t(),
        required("SchemaArn") => String.t()
      }
      
  """
  @type update_typed_link_facet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_attach_typed_link_response() :: %{
        "TypedLinkSpecifier" => typed_link_specifier()
      }
      
  """
  @type batch_attach_typed_link_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_object_information_request() :: %{
        optional("ConsistencyLevel") => list(any()),
        required("DirectoryArn") => String.t(),
        required("ObjectReference") => object_reference()
      }
      
  """
  @type get_object_information_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      object_identifier_and_link_name_tuple() :: %{
        "LinkName" => String.t(),
        "ObjectIdentifier" => String.t()
      }
      
  """
  @type object_identifier_and_link_name_tuple() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_object_request() :: %{
        required("DirectoryArn") => String.t(),
        required("LinkName") => String.t(),
        required("ParentReference") => object_reference()
      }
      
  """
  @type detach_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_object_attributes_response() :: %{
        "ObjectIdentifier" => String.t()
      }
      
  """
  @type update_object_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_typed_link_facet_names_response() :: %{
        "FacetNames" => list(String.t()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_typed_link_facet_names_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      still_contains_links_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type still_contains_links_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_directory_request() :: %{
        required("DirectoryArn") => String.t()
      }
      
  """
  @type delete_directory_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      facet_already_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type facet_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_policy_response() :: %{}
      
  """
  @type detach_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      list_development_schema_arns_response() :: %{
        "NextToken" => String.t(),
        "SchemaArns" => list(String.t()())
      }
      
  """
  @type list_development_schema_arns_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_managed_schema_arns_response() :: %{
        "NextToken" => String.t(),
        "SchemaArns" => list(String.t()())
      }
      
  """
  @type list_managed_schema_arns_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_facet_response() :: %{}
      
  """
  @type delete_facet_response() :: %{}

  @typedoc """

  ## Example:
      
      get_link_attributes_response() :: %{
        "Attributes" => list(attribute_key_and_value()())
      }
      
  """
  @type get_link_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_list_object_children() :: %{
        "MaxResults" => integer(),
        "NextToken" => String.t(),
        "ObjectReference" => object_reference()
      }
      
  """
  @type batch_list_object_children() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_attached_indices_response() :: %{
        "IndexAttachments" => list(index_attachment()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_attached_indices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attribute_key_and_value() :: %{
        "Key" => attribute_key(),
        "Value" => list()
      }
      
  """
  @type attribute_key_and_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detach_typed_link() :: %{
        "TypedLinkSpecifier" => typed_link_specifier()
      }
      
  """
  @type batch_detach_typed_link() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      directory_not_disabled_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type directory_not_disabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_index() :: %{
        "BatchReferenceName" => String.t(),
        "IsUnique" => boolean(),
        "LinkName" => String.t(),
        "OrderedIndexedAttributeList" => list(attribute_key()()),
        "ParentReference" => object_reference()
      }
      
  """
  @type batch_create_index() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_facet_request() :: %{
        optional("AttributeUpdates") => list(facet_attribute_update()()),
        optional("ObjectType") => list(any()),
        required("Name") => String.t(),
        required("SchemaArn") => String.t()
      }
      
  """
  @type update_facet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      facet() :: %{
        "FacetStyle" => list(any()),
        "Name" => String.t(),
        "ObjectType" => list(any())
      }
      
  """
  @type facet() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detach_typed_link_response() :: %{}
      
  """
  @type batch_detach_typed_link_response() :: %{}

  @typedoc """

  ## Example:
      
      create_typed_link_facet_request() :: %{
        required("Facet") => typed_link_facet(),
        required("SchemaArn") => String.t()
      }
      
  """
  @type create_typed_link_facet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      facet_validation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type facet_validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_list_object_policies() :: %{
        "MaxResults" => integer(),
        "NextToken" => String.t(),
        "ObjectReference" => object_reference()
      }
      
  """
  @type batch_list_object_policies() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      typed_link_facet() :: %{
        "Attributes" => list(typed_link_attribute_definition()()),
        "IdentityAttributeOrder" => list(String.t()()),
        "Name" => String.t()
      }
      
  """
  @type typed_link_facet() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_rule_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_rule_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_attach_object_response() :: %{
        "attachedObjectIdentifier" => String.t()
      }
      
  """
  @type batch_attach_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_list_object_children_response() :: %{
        "Children" => map(),
        "NextToken" => String.t()
      }
      
  """
  @type batch_list_object_children_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detach_from_index_response() :: %{
        "DetachedObjectIdentifier" => String.t()
      }
      
  """
  @type batch_detach_from_index_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_published_schema_arns_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SchemaArn") => String.t()
      }
      
  """
  @type list_published_schema_arns_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policy_attachments_response() :: %{
        "NextToken" => String.t(),
        "ObjectIdentifiers" => list(String.t()())
      }
      
  """
  @type list_policy_attachments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_object_attributes_response() :: %{
        "Attributes" => list(attribute_key_and_value()())
      }
      
  """
  @type batch_get_object_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      object_not_detached_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type object_not_detached_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_list_outgoing_typed_links_response() :: %{
        "NextToken" => String.t(),
        "TypedLinkSpecifiers" => list(typed_link_specifier()())
      }
      
  """
  @type batch_list_outgoing_typed_links_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_object_response() :: %{
        "AttachedObjectIdentifier" => String.t()
      }
      
  """
  @type attach_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_policy_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type not_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_detach_from_index() :: %{
        "IndexReference" => object_reference(),
        "TargetReference" => object_reference()
      }
      
  """
  @type batch_detach_from_index() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_facet_from_object_response() :: %{}
      
  """
  @type remove_facet_from_object_response() :: %{}

  @typedoc """

  ## Example:
      
      directory_not_enabled_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type directory_not_enabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_index_response() :: %{
        "IndexAttachments" => list(index_attachment()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_index_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_object_parents_request() :: %{
        optional("ConsistencyLevel") => list(any()),
        optional("IncludeAllLinksToEachParent") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("DirectoryArn") => String.t(),
        required("ObjectReference") => object_reference()
      }
      
  """
  @type list_object_parents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_typed_link_request() :: %{
        required("DirectoryArn") => String.t(),
        required("TypedLinkSpecifier") => typed_link_specifier()
      }
      
  """
  @type detach_typed_link_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_directories_response() :: %{
        "Directories" => list(directory()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_directories_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_index_response() :: %{
        "ObjectIdentifier" => String.t()
      }
      
  """
  @type create_index_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upgrade_applied_schema_response() :: %{
        "DirectoryArn" => String.t(),
        "UpgradedSchemaArn" => String.t()
      }
      
  """
  @type upgrade_applied_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_object_request() :: %{
        optional("LinkName") => String.t(),
        optional("ObjectAttributeList") => list(attribute_key_and_value()()),
        optional("ParentReference") => object_reference(),
        required("DirectoryArn") => String.t(),
        required("SchemaFacets") => list(schema_facet()())
      }
      
  """
  @type create_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_object_response() :: %{
        "ObjectIdentifier" => String.t()
      }
      
  """
  @type create_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_facet_to_object_request() :: %{
        optional("ObjectAttributeList") => list(attribute_key_and_value()()),
        required("DirectoryArn") => String.t(),
        required("ObjectReference") => object_reference(),
        required("SchemaFacet") => schema_facet()
      }
      
  """
  @type add_facet_to_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_list_outgoing_typed_links() :: %{
        "FilterAttributeRanges" => list(typed_link_attribute_range()()),
        "FilterTypedLink" => typed_link_schema_and_facet_name(),
        "MaxResults" => integer(),
        "NextToken" => String.t(),
        "ObjectReference" => object_reference()
      }
      
  """
  @type batch_list_outgoing_typed_links() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_object() :: %{
        "ObjectReference" => object_reference()
      }
      
  """
  @type batch_delete_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attribute_key() :: %{
        "FacetName" => String.t(),
        "Name" => String.t(),
        "SchemaArn" => String.t()
      }
      
  """
  @type attribute_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      typed_link_facet_attribute_update() :: %{
        "Action" => list(any()),
        "Attribute" => typed_link_attribute_definition()
      }
      
  """
  @type typed_link_facet_attribute_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lookup_policy_response() :: %{
        "NextToken" => String.t(),
        "PolicyToPathList" => list(policy_to_path()())
      }
      
  """
  @type lookup_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_attachment_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_attachment_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      facet_attribute_definition() :: %{
        "DefaultValue" => list(),
        "IsImmutable" => boolean(),
        "Rules" => map(),
        "Type" => list(any())
      }
      
  """
  @type facet_attribute_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_facet_from_object_request() :: %{
        required("DirectoryArn") => String.t(),
        required("ObjectReference") => object_reference(),
        required("SchemaFacet") => schema_facet()
      }
      
  """
  @type remove_facet_from_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_read_request() :: %{
        optional("ConsistencyLevel") => list(any()),
        required("DirectoryArn") => String.t(),
        required("Operations") => list(batch_read_operation()())
      }
      
  """
  @type batch_read_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_typed_link_facet_response() :: %{}
      
  """
  @type delete_typed_link_facet_response() :: %{}

  @typedoc """

  ## Example:
      
      object_already_detached_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type object_already_detached_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_schema_as_json_request() :: %{
        required("SchemaArn") => String.t()
      }
      
  """
  @type get_schema_as_json_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      typed_link_attribute_range() :: %{
        "AttributeName" => String.t(),
        "Range" => typed_attribute_value_range()
      }
      
  """
  @type typed_link_attribute_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_directory_request() :: %{
        required("DirectoryArn") => String.t()
      }
      
  """
  @type get_directory_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_facet_response() :: %{
        "Facet" => facet()
      }
      
  """
  @type get_facet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_managed_schema_arns_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SchemaArn") => String.t()
      }
      
  """
  @type list_managed_schema_arns_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_write_exception() :: %{
        "Index" => integer(),
        "Message" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type batch_write_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_object_attributes_request() :: %{
        optional("ConsistencyLevel") => list(any()),
        required("AttributeNames") => list(String.t()()),
        required("DirectoryArn") => String.t(),
        required("ObjectReference") => object_reference(),
        required("SchemaFacet") => schema_facet()
      }
      
  """
  @type get_object_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_link_attributes_response() :: %{
        "Attributes" => list(attribute_key_and_value()())
      }
      
  """
  @type batch_get_link_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_typed_link_facet_information_response() :: %{
        "IdentityAttributeOrder" => list(String.t()())
      }
      
  """
  @type get_typed_link_facet_information_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_schema_request() :: %{
        required("Name") => String.t(),
        required("SchemaArn") => String.t()
      }
      
  """
  @type update_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_tagging_request_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_tagging_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_add_facet_to_object() :: %{
        "ObjectAttributeList" => list(attribute_key_and_value()()),
        "ObjectReference" => object_reference(),
        "SchemaFacet" => schema_facet()
      }
      
  """
  @type batch_add_facet_to_object() :: %{String.t() => any()}

  @type add_facet_to_object_errors() ::
          directory_not_enabled_exception()
          | limit_exceeded_exception()
          | facet_validation_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type apply_schema_errors() ::
          invalid_attachment_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | schema_already_exists_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type attach_object_errors() ::
          invalid_attachment_exception()
          | directory_not_enabled_exception()
          | limit_exceeded_exception()
          | facet_validation_exception()
          | validation_exception()
          | access_denied_exception()
          | link_name_already_in_use_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type attach_policy_errors() ::
          directory_not_enabled_exception()
          | not_policy_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type attach_to_index_errors() ::
          invalid_attachment_exception()
          | directory_not_enabled_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | link_name_already_in_use_exception()
          | indexed_attribute_missing_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()
          | not_index_exception()

  @type attach_typed_link_errors() ::
          invalid_attachment_exception()
          | directory_not_enabled_exception()
          | limit_exceeded_exception()
          | facet_validation_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type batch_read_errors() ::
          directory_not_enabled_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type batch_write_errors() ::
          batch_write_exception()
          | directory_not_enabled_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type create_directory_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | directory_already_exists_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type create_facet_errors() ::
          limit_exceeded_exception()
          | invalid_rule_exception()
          | facet_validation_exception()
          | validation_exception()
          | facet_already_exists_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type create_index_errors() ::
          directory_not_enabled_exception()
          | limit_exceeded_exception()
          | facet_validation_exception()
          | validation_exception()
          | access_denied_exception()
          | link_name_already_in_use_exception()
          | unsupported_index_type_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type create_object_errors() ::
          directory_not_enabled_exception()
          | limit_exceeded_exception()
          | facet_validation_exception()
          | validation_exception()
          | access_denied_exception()
          | link_name_already_in_use_exception()
          | unsupported_index_type_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type create_schema_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_arn_exception()
          | schema_already_exists_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type create_typed_link_facet_errors() ::
          limit_exceeded_exception()
          | invalid_rule_exception()
          | facet_validation_exception()
          | validation_exception()
          | facet_already_exists_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type delete_directory_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | directory_not_disabled_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | directory_deleted_exception()
          | retryable_conflict_exception()

  @type delete_facet_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | facet_in_use_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | facet_not_found_exception()
          | retryable_conflict_exception()

  @type delete_object_errors() ::
          directory_not_enabled_exception()
          | limit_exceeded_exception()
          | object_not_detached_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type delete_schema_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | still_contains_links_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type delete_typed_link_facet_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | facet_not_found_exception()
          | retryable_conflict_exception()

  @type detach_from_index_errors() ::
          object_already_detached_exception()
          | directory_not_enabled_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()
          | not_index_exception()

  @type detach_object_errors() ::
          directory_not_enabled_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | not_node_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type detach_policy_errors() ::
          directory_not_enabled_exception()
          | not_policy_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type detach_typed_link_errors() ::
          directory_not_enabled_exception()
          | limit_exceeded_exception()
          | facet_validation_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type disable_directory_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | directory_deleted_exception()
          | retryable_conflict_exception()

  @type enable_directory_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | directory_deleted_exception()
          | retryable_conflict_exception()

  @type get_applied_schema_version_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type get_directory_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type get_facet_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | facet_not_found_exception()
          | retryable_conflict_exception()

  @type get_link_attributes_errors() ::
          directory_not_enabled_exception()
          | limit_exceeded_exception()
          | facet_validation_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type get_object_attributes_errors() ::
          directory_not_enabled_exception()
          | limit_exceeded_exception()
          | facet_validation_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type get_object_information_errors() ::
          directory_not_enabled_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type get_schema_as_json_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type get_typed_link_facet_information_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | facet_not_found_exception()
          | retryable_conflict_exception()

  @type list_applied_schema_arns_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type list_attached_indices_errors() ::
          directory_not_enabled_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type list_development_schema_arns_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type list_directories_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type list_facet_attributes_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | facet_not_found_exception()
          | retryable_conflict_exception()

  @type list_facet_names_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type list_incoming_typed_links_errors() ::
          directory_not_enabled_exception()
          | limit_exceeded_exception()
          | facet_validation_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type list_index_errors() ::
          directory_not_enabled_exception()
          | limit_exceeded_exception()
          | facet_validation_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()
          | not_index_exception()

  @type list_managed_schema_arns_errors() ::
          validation_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()

  @type list_object_attributes_errors() ::
          directory_not_enabled_exception()
          | limit_exceeded_exception()
          | facet_validation_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type list_object_children_errors() ::
          directory_not_enabled_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | not_node_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type list_object_parent_paths_errors() ::
          directory_not_enabled_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type list_object_parents_errors() ::
          directory_not_enabled_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | cannot_list_parent_of_root_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type list_object_policies_errors() ::
          directory_not_enabled_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type list_outgoing_typed_links_errors() ::
          directory_not_enabled_exception()
          | limit_exceeded_exception()
          | facet_validation_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type list_policy_attachments_errors() ::
          directory_not_enabled_exception()
          | not_policy_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type list_published_schema_arns_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type list_tags_for_resource_errors() ::
          invalid_tagging_request_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type list_typed_link_facet_attributes_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | facet_not_found_exception()
          | retryable_conflict_exception()

  @type list_typed_link_facet_names_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type lookup_policy_errors() ::
          directory_not_enabled_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type publish_schema_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | schema_already_published_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type put_schema_from_json_errors() ::
          limit_exceeded_exception()
          | invalid_rule_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_schema_doc_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type remove_facet_from_object_errors() ::
          directory_not_enabled_exception()
          | limit_exceeded_exception()
          | facet_validation_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type tag_resource_errors() ::
          invalid_tagging_request_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type untag_resource_errors() ::
          invalid_tagging_request_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type update_facet_errors() ::
          limit_exceeded_exception()
          | invalid_rule_exception()
          | facet_validation_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | facet_not_found_exception()
          | invalid_facet_update_exception()
          | retryable_conflict_exception()

  @type update_link_attributes_errors() ::
          directory_not_enabled_exception()
          | limit_exceeded_exception()
          | facet_validation_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type update_object_attributes_errors() ::
          directory_not_enabled_exception()
          | limit_exceeded_exception()
          | facet_validation_exception()
          | validation_exception()
          | access_denied_exception()
          | link_name_already_in_use_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type update_schema_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()

  @type update_typed_link_facet_errors() ::
          limit_exceeded_exception()
          | invalid_rule_exception()
          | facet_validation_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | facet_not_found_exception()
          | invalid_facet_update_exception()
          | retryable_conflict_exception()

  @type upgrade_applied_schema_errors() ::
          invalid_attachment_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | schema_already_exists_exception()
          | internal_service_exception()
          | retryable_conflict_exception()
          | incompatible_schema_exception()

  @type upgrade_published_schema_errors() ::
          invalid_attachment_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | internal_service_exception()
          | retryable_conflict_exception()
          | incompatible_schema_exception()

  def metadata do
    %{
      api_version: "2017-01-11",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "clouddirectory",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "CloudDirectory",
      signature_version: "v4",
      signing_name: "clouddirectory",
      target_prefix: nil
    }
  end

  @doc """
  Adds a new `Facet` to an object. An object can have more than one facet applied
  on it.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20AddFacetToObject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the Directory where the object resides. For more
    information, see arns.
  """
  @spec add_facet_to_object(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, add_facet_to_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_facet_to_object_errors()}
  def add_facet_to_object(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/object/facets"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Copies the input published schema, at the specified version, into the
  `Directory` with the same name and version as that of the published schema.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20ApplySchema&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the Directory into which the schema is copied. For more
    information, see arns.
  """
  @spec apply_schema(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, apply_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, apply_schema_errors()}
  def apply_schema(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/apply"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Attaches an existing object to another object. An object can be accessed in two
  ways:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20AttachObject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) Amazon Resource Name (ARN) that is
    associated with the Directory where both objects reside. For more
    information, see arns.
  """
  @spec attach_object(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, attach_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, attach_object_errors()}
  def attach_object(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/object/attach"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Attaches a policy object to a regular object. An object can have a limited
  number of attached policies.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20AttachPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the Directory where both objects reside. For more
    information, see arns.
  """
  @spec attach_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, attach_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, attach_policy_errors()}
  def attach_policy(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/policy/attach"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Attaches the specified object to the specified index.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20AttachToIndex&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    directory where the object and index exist.
  """
  @spec attach_to_index(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, attach_to_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, attach_to_index_errors()}
  def attach_to_index(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/index/attach"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Attaches a typed link to a specified source and target object. For more
  information, see [Typed
  Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20AttachTypedLink&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    directory where you want to attach the typed link.
  """
  @spec attach_typed_link(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, attach_typed_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, attach_typed_link_errors()}
  def attach_typed_link(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/attach"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Performs all the read operations in a batch.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20BatchRead&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the Directory. For more information, see arns.

  ## Keyword parameters:
  * `:consistency_level` (`t:enum["EVENTUAL|SERIALIZABLE"]`) Represents the manner
    and timing in which the successful write or update of an object is reflected
    in a subsequent read operation of that same object.
  """
  @spec batch_read(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, batch_read_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_read_errors()}
  def batch_read(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/batchread"

    # Validate optional parameters
    optional_params = [consistency_level: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :consistency_level) do
        [{"x-amz-consistency-level", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:consistency_level])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Performs all the write operations in a batch. Either all the operations succeed
  or none.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20BatchWrite&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the Directory. For more information, see arns.
  """
  @spec batch_write(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, batch_write_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_write_errors()}
  def batch_write(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/batchwrite"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Creates a `Directory` by copying the published schema into the directory. A
  directory cannot be created without a schema.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20CreateDirectory&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:schema_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    published schema that will be copied into the data Directory. For more
    information, see arns.
  """
  @spec create_directory(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_directory_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_directory_errors()}
  def create_directory(%Client{} = client, schema_arn, options \\ [])
      when is_binary(schema_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/directory/create"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", schema_arn}]

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
  Creates a new `Facet` in a schema. Facet creation is allowed only in development
  or applied schemas.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20CreateFacet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:schema_arn` (`t:string` required) The schema ARN in which the new Facet will
    be created. For more information, see arns.
  """
  @spec create_facet(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_facet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_facet_errors()}
  def create_facet(%Client{} = client, schema_arn, options \\ []) when is_binary(schema_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/facet/create"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", schema_arn}]

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
  Creates an index object. See [Indexing and
  search](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.html)
  for more information.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20CreateIndex&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The ARN of the directory where the
    index should be created.
  """
  @spec create_index(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_index_errors()}
  def create_index(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/index"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Creates an object in a `Directory`. Additionally attaches the object to a
  parent, if a parent reference and `LinkName` is specified. An object is simply
  a collection of `Facet` attributes. You can also use this API call to create a
  policy object, if the facet from which you create the object is a policy
  facet.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20CreateObject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the Directory in which the object will be created. For more
    information, see arns.
  """
  @spec create_object(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_object_errors()}
  def create_object(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/object"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Creates a new schema in a development state. A schema can exist in three phases:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20CreateSchema&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec create_schema(AWS.Client.t(), Keyword.t()) ::
          {:ok, create_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_schema_errors()}
  def create_schema(%Client{} = client, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/create"

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
  Creates a `TypedLinkFacet`. For more information, see [Typed
  Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20CreateTypedLinkFacet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:schema_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the schema. For more information, see arns.
  """
  @spec create_typed_link_facet(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, create_typed_link_facet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_typed_link_facet_errors()}
  def create_typed_link_facet(%Client{} = client, schema_arn, options \\ [])
      when is_binary(schema_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/facet/create"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", schema_arn}]

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
  Deletes a directory. Only disabled directories can be deleted. A deleted
  directory cannot be undone. Exercise extreme caution when deleting
  directories.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20DeleteDirectory&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The ARN of the directory to delete.
  """
  @spec delete_directory(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_directory_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_directory_errors()}
  def delete_directory(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/directory"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Deletes a given `Facet`. All attributes and `Rule`s that are associated with the
  facet will be deleted. Only development schema facets are allowed deletion.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20DeleteFacet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:schema_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the Facet. For more information, see arns.
  """
  @spec delete_facet(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_facet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_facet_errors()}
  def delete_facet(%Client{} = client, schema_arn, options \\ []) when is_binary(schema_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/facet/delete"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", schema_arn}]

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
  Deletes an object and its associated attributes. Only objects with no children
  and no parents can be deleted. The maximum number of attributes that can be
  deleted during an object deletion is 30. For more information, see [Amazon
  Cloud Directory
  Limits](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20DeleteObject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the Directory where the object resides. For more
    information, see arns.
  """
  @spec delete_object(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_object_errors()}
  def delete_object(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/object/delete"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Deletes a given schema. Schemas in a development and published state can only be
  deleted.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20DeleteSchema&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:schema_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    development schema. For more information, see arns.
  """
  @spec delete_schema(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_schema_errors()}
  def delete_schema(%Client{} = client, schema_arn, options \\ []) when is_binary(schema_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/schema"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", schema_arn}]

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
  Deletes a `TypedLinkFacet`. For more information, see [Typed
  Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20DeleteTypedLinkFacet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:schema_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the schema. For more information, see arns.
  """
  @spec delete_typed_link_facet(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, delete_typed_link_facet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_typed_link_facet_errors()}
  def delete_typed_link_facet(%Client{} = client, schema_arn, options \\ [])
      when is_binary(schema_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/facet/delete"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", schema_arn}]

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
  Detaches the specified object from the specified index.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20DetachFromIndex&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    directory the index and object exist in.
  """
  @spec detach_from_index(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, detach_from_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detach_from_index_errors()}
  def detach_from_index(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/index/detach"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Detaches a given object from the parent object. The object that is to be
  detached from the parent is specified by the link name.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20DetachObject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the Directory where objects reside. For more information,
    see arns.
  """
  @spec detach_object(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, detach_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detach_object_errors()}
  def detach_object(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/object/detach"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Detaches a policy from an object.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20DetachPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the Directory where both objects reside. For more
    information, see arns.
  """
  @spec detach_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, detach_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detach_policy_errors()}
  def detach_policy(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/policy/detach"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Detaches a typed link from a specified source and target object. For more
  information, see [Typed
  Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20DetachTypedLink&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    directory where you want to detach the typed link.
  """
  @spec detach_typed_link(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detach_typed_link_errors()}
  def detach_typed_link(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/detach"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Disables the specified directory. Disabled directories cannot be read or written
  to. Only enabled directories can be disabled. Disabled directories may be
  reenabled.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20DisableDirectory&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The ARN of the directory to disable.
  """
  @spec disable_directory(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, disable_directory_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_directory_errors()}
  def disable_directory(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/directory/disable"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Enables the specified directory. Only disabled directories can be enabled. Once
  enabled, the directory can then be read and written to.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20EnableDirectory&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The ARN of the directory to enable.
  """
  @spec enable_directory(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, enable_directory_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_directory_errors()}
  def enable_directory(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/directory/enable"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Returns current applied schema version ARN, including the minor version in use.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20GetAppliedSchemaVersion&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec get_applied_schema_version(AWS.Client.t(), Keyword.t()) ::
          {:ok, get_applied_schema_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_applied_schema_version_errors()}
  def get_applied_schema_version(%Client{} = client, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/getappliedschema"

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
  Retrieves metadata about a directory.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20GetDirectory&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The ARN of the directory.
  """
  @spec get_directory(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_directory_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_directory_errors()}
  def get_directory(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/directory/get"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Gets details of the `Facet`, such as facet name, attributes, `Rule`s, or
  `ObjectType`. You can call this on all kinds of schema facets -- published,
  development, or applied.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20GetFacet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:schema_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the Facet. For more information, see arns.
  """
  @spec get_facet(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_facet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_facet_errors()}
  def get_facet(%Client{} = client, schema_arn, options \\ []) when is_binary(schema_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/facet"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", schema_arn}]

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
  Retrieves attributes that are associated with a typed link.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20GetLinkAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the Directory where the typed link resides. For more
    information, see arns or Typed Links.
  """
  @spec get_link_attributes(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_link_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_link_attributes_errors()}
  def get_link_attributes(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/attributes/get"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Retrieves attributes within a facet that are associated with an object.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20GetObjectAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the Directory where the object resides.

  ## Keyword parameters:
  * `:consistency_level` (`t:enum["EVENTUAL|SERIALIZABLE"]`) The consistency level
    at which to retrieve the attributes on an object.
  """
  @spec get_object_attributes(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_object_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_object_attributes_errors()}
  def get_object_attributes(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/object/attributes/get"

    # Validate optional parameters
    optional_params = [consistency_level: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :consistency_level) do
        [{"x-amz-consistency-level", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:consistency_level])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves metadata about an object.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20GetObjectInformation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The ARN of the directory being
    retrieved.

  ## Keyword parameters:
  * `:consistency_level` (`t:enum["EVENTUAL|SERIALIZABLE"]`) The consistency level
    at which to retrieve the object information.
  """
  @spec get_object_information(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_object_information_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_object_information_errors()}
  def get_object_information(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/object/information"

    # Validate optional parameters
    optional_params = [consistency_level: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :consistency_level) do
        [{"x-amz-consistency-level", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:consistency_level])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves a JSON representation of the schema. See [JSON Schema
  Format](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_jsonformat.html#schemas_json)
  for more information.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20GetSchemaAsJson&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:schema_arn` (`t:string` required) The ARN of the schema to retrieve.
  """
  @spec get_schema_as_json(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_schema_as_json_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_schema_as_json_errors()}
  def get_schema_as_json(%Client{} = client, schema_arn, options \\ [])
      when is_binary(schema_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/json"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", schema_arn}]

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
  Returns the identity attribute order for a specific `TypedLinkFacet`. For more
  information, see [Typed
  Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20GetTypedLinkFacetInformation&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:schema_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the schema. For more information, see arns.
  """
  @spec get_typed_link_facet_information(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, get_typed_link_facet_information_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_typed_link_facet_information_errors()}
  def get_typed_link_facet_information(%Client{} = client, schema_arn, options \\ [])
      when is_binary(schema_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/facet/get"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", schema_arn}]

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
  Lists schema major versions applied to a directory. If `SchemaArn` is provided,
  lists the minor version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20ListAppliedSchemaArns&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_applied_schema_arns(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_applied_schema_arns_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_applied_schema_arns_errors()}
  def list_applied_schema_arns(%Client{} = client, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/applied"

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
  Lists indices attached to the specified object.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20ListAttachedIndices&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The ARN of the directory.

  ## Keyword parameters:
  * `:consistency_level` (`t:enum["EVENTUAL|SERIALIZABLE"]`) The consistency level
    to use for this operation.
  """
  @spec list_attached_indices(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_attached_indices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_attached_indices_errors()}
  def list_attached_indices(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/object/indices"

    # Validate optional parameters
    optional_params = [consistency_level: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :consistency_level) do
        [{"x-amz-consistency-level", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:consistency_level])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves each Amazon Resource Name (ARN) of schemas in the development state.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20ListDevelopmentSchemaArns&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_development_schema_arns(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_development_schema_arns_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_development_schema_arns_errors()}
  def list_development_schema_arns(%Client{} = client, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/development"

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
  Lists directories created within an account.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20ListDirectories&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_directories(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_directories_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_directories_errors()}
  def list_directories(%Client{} = client, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/directory/list"

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
  Retrieves attributes attached to the facet.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20ListFacetAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:schema_arn` (`t:string` required) The ARN of the schema where the facet
    resides.
  """
  @spec list_facet_attributes(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_facet_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_facet_attributes_errors()}
  def list_facet_attributes(%Client{} = client, schema_arn, options \\ [])
      when is_binary(schema_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/facet/attributes"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", schema_arn}]

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
  Retrieves the names of facets that exist in a schema.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20ListFacetNames&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:schema_arn` (`t:string` required) The Amazon Resource Name (ARN) to retrieve
    facet names from.
  """
  @spec list_facet_names(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_facet_names_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_facet_names_errors()}
  def list_facet_names(%Client{} = client, schema_arn, options \\ [])
      when is_binary(schema_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/facet/list"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", schema_arn}]

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
  Returns a paginated list of all the incoming `TypedLinkSpecifier` information
  for an object. It also supports filtering by typed link facet and identity
  attributes. For more information, see [Typed
  Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20ListIncomingTypedLinks&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    directory where you want to list the typed links.
  """
  @spec list_incoming_typed_links(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_incoming_typed_links_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_incoming_typed_links_errors()}
  def list_incoming_typed_links(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/incoming"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Lists objects attached to the specified index.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20ListIndex&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The ARN of the directory that the index
    exists in.

  ## Keyword parameters:
  * `:consistency_level` (`t:enum["EVENTUAL|SERIALIZABLE"]`) The consistency level
    to execute the request at.
  """
  @spec list_index(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_index_errors()}
  def list_index(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/index/targets"

    # Validate optional parameters
    optional_params = [consistency_level: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :consistency_level) do
        [{"x-amz-consistency-level", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:consistency_level])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Lists the major version families of each managed schema. If a major version ARN
  is provided as SchemaArn, the minor version revisions in that family are
  listed instead.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20ListManagedSchemaArns&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_managed_schema_arns(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_managed_schema_arns_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_managed_schema_arns_errors()}
  def list_managed_schema_arns(%Client{} = client, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/managed"

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
  Lists all attributes that are associated with an object.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20ListObjectAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the Directory where the object resides. For more
    information, see arns.

  ## Keyword parameters:
  * `:consistency_level` (`t:enum["EVENTUAL|SERIALIZABLE"]`) Represents the manner
    and timing in which the successful write or update of an object is reflected
    in a subsequent read operation of that same object.
  """
  @spec list_object_attributes(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_object_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_object_attributes_errors()}
  def list_object_attributes(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/object/attributes"

    # Validate optional parameters
    optional_params = [consistency_level: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :consistency_level) do
        [{"x-amz-consistency-level", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:consistency_level])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Returns a paginated list of child objects that are associated with a given
  object.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20ListObjectChildren&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the Directory where the object resides. For more
    information, see arns.

  ## Keyword parameters:
  * `:consistency_level` (`t:enum["EVENTUAL|SERIALIZABLE"]`) Represents the manner
    and timing in which the successful write or update of an object is reflected
    in a subsequent read operation of that same object.
  """
  @spec list_object_children(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_object_children_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_object_children_errors()}
  def list_object_children(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/object/children"

    # Validate optional parameters
    optional_params = [consistency_level: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :consistency_level) do
        [{"x-amz-consistency-level", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:consistency_level])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Retrieves all available parent paths for any object type such as node, leaf
  node, policy node, and index node objects. For more information about objects,
  see [Directory
  Structure](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20ListObjectParentPaths&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The ARN of the directory to which the
    parent path applies.
  """
  @spec list_object_parent_paths(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_object_parent_paths_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_object_parent_paths_errors()}
  def list_object_parent_paths(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/object/parentpaths"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Lists parent objects that are associated with a given object in pagination
  fashion.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20ListObjectParents&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the Directory where the object resides. For more
    information, see arns.

  ## Keyword parameters:
  * `:consistency_level` (`t:enum["EVENTUAL|SERIALIZABLE"]`) Represents the manner
    and timing in which the successful write or update of an object is reflected
    in a subsequent read operation of that same object.
  """
  @spec list_object_parents(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_object_parents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_object_parents_errors()}
  def list_object_parents(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/object/parent"

    # Validate optional parameters
    optional_params = [consistency_level: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :consistency_level) do
        [{"x-amz-consistency-level", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:consistency_level])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Returns policies attached to an object in pagination fashion.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20ListObjectPolicies&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the Directory where objects reside. For more information,
    see arns.

  ## Keyword parameters:
  * `:consistency_level` (`t:enum["EVENTUAL|SERIALIZABLE"]`) Represents the manner
    and timing in which the successful write or update of an object is reflected
    in a subsequent read operation of that same object.
  """
  @spec list_object_policies(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_object_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_object_policies_errors()}
  def list_object_policies(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/object/policy"

    # Validate optional parameters
    optional_params = [consistency_level: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :consistency_level) do
        [{"x-amz-consistency-level", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:consistency_level])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Returns a paginated list of all the outgoing `TypedLinkSpecifier` information
  for an object. It also supports filtering by typed link facet and identity
  attributes. For more information, see [Typed
  Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20ListOutgoingTypedLinks&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    directory where you want to list the typed links.
  """
  @spec list_outgoing_typed_links(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_outgoing_typed_links_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_outgoing_typed_links_errors()}
  def list_outgoing_typed_links(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/outgoing"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Returns all of the `ObjectIdentifiers` to which a given policy is attached.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20ListPolicyAttachments&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the Directory where objects reside. For more information,
    see arns.

  ## Keyword parameters:
  * `:consistency_level` (`t:enum["EVENTUAL|SERIALIZABLE"]`) Represents the manner
    and timing in which the successful write or update of an object is reflected
    in a subsequent read operation of that same object.
  """
  @spec list_policy_attachments(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_policy_attachments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_policy_attachments_errors()}
  def list_policy_attachments(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/policy/attachment"

    # Validate optional parameters
    optional_params = [consistency_level: nil]

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

    # Optional headers
    headers =
      if opt_val = Keyword.get(options, :consistency_level) do
        [{"x-amz-consistency-level", opt_val} | headers]
      else
        headers
      end

    # Required query params
    query_params = []

    # Optional query params

    meta =
      metadata()

    # Drop optionals that have been moved to query/header-params
    options =
      options
      |> Keyword.drop([:consistency_level])

    body = nil

    Request.request_rest(client, meta, :post, url_path, query_params, headers, body, options, 200)
  end

  @doc """
  Lists the major version families of each published schema. If a major version
  ARN is provided as `SchemaArn`, the minor version revisions in that family are
  listed instead.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20ListPublishedSchemaArns&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_published_schema_arns(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_published_schema_arns_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_published_schema_arns_errors()}
  def list_published_schema_arns(%Client{} = client, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/published"

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
  Returns tags for a resource. Tagging is currently supported only for directories
  with a limit of 50 tags per directory. All 50 tags are returned for a given
  directory with this API call.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20ListTagsForResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec list_tags_for_resource(AWS.Client.t(), Keyword.t()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/tags"

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
  Returns a paginated list of all attribute definitions for a particular
  `TypedLinkFacet`. For more information, see [Typed
  Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20ListTypedLinkFacetAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:schema_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the schema. For more information, see arns.
  """
  @spec list_typed_link_facet_attributes(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_typed_link_facet_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_typed_link_facet_attributes_errors()}
  def list_typed_link_facet_attributes(%Client{} = client, schema_arn, options \\ [])
      when is_binary(schema_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/facet/attributes"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", schema_arn}]

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
  Returns a paginated list of `TypedLink` facet names for a particular schema. For
  more information, see [Typed
  Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20ListTypedLinkFacetNames&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:schema_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the schema. For more information, see arns.
  """
  @spec list_typed_link_facet_names(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, list_typed_link_facet_names_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_typed_link_facet_names_errors()}
  def list_typed_link_facet_names(%Client{} = client, schema_arn, options \\ [])
      when is_binary(schema_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/facet/list"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", schema_arn}]

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
  Lists all policies from the root of the `Directory` to the object specified. If
  there are no policies present, an empty list is returned. If policies are
  present, and if some objects don't have the policies attached, it returns the
  `ObjectIdentifier` for such objects. If policies are present, it returns
  `ObjectIdentifier`, `policyId`, and `policyType`. Paths that don't lead to the
  root from the target object are ignored. For more information, see
  [Policies](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20LookupPolicy&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the Directory. For more information, see arns.
  """
  @spec lookup_policy(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, lookup_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, lookup_policy_errors()}
  def lookup_policy(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/policy/lookup"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Publishes a development schema with a major version and a recommended minor
  version.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20PublishSchema&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:development_schema_arn` (`t:string` required) The Amazon Resource Name (ARN)
    that is associated with the development schema. For more information, see
    arns.
  """
  @spec publish_schema(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, publish_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, publish_schema_errors()}
  def publish_schema(%Client{} = client, development_schema_arn, options \\ [])
      when is_binary(development_schema_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/publish"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", development_schema_arn}]

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
  Allows a schema to be updated using JSON upload. Only available for development
  schemas. See [JSON Schema
  Format](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_jsonformat.html#schemas_json)
  for more information.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20PutSchemaFromJson&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:schema_arn` (`t:string` required) The ARN of the schema to update.
  """
  @spec put_schema_from_json(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, put_schema_from_json_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_schema_from_json_errors()}
  def put_schema_from_json(%Client{} = client, schema_arn, options \\ [])
      when is_binary(schema_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/json"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", schema_arn}]

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
  Removes the specified facet from the specified object.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20RemoveFacetFromObject&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The ARN of the directory in which the
    object resides.
  """
  @spec remove_facet_from_object(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, remove_facet_from_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_facet_from_object_errors()}
  def remove_facet_from_object(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/object/facets/delete"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  An API operation for adding tags to a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20TagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec tag_resource(AWS.Client.t(), Keyword.t()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/tags/add"

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
  An API operation for removing tags from a resource.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20UntagResource&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec untag_resource(AWS.Client.t(), Keyword.t()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/tags/remove"

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
  Does the following:

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20UpdateFacet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:schema_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the Facet. For more information, see arns.
  """
  @spec update_facet(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_facet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_facet_errors()}
  def update_facet(%Client{} = client, schema_arn, options \\ []) when is_binary(schema_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/facet"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", schema_arn}]

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
  Updates a given typed link’s attributes. Attributes to be updated must not
  contribute to the typed link’s identity, as defined by its
  `IdentityAttributeOrder`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20UpdateLinkAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the Directory where the updated typed link resides. For more
    information, see arns or Typed Links.
  """
  @spec update_link_attributes(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_link_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_link_attributes_errors()}
  def update_link_attributes(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/attributes/update"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Updates a given object's attributes.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20UpdateObjectAttributes&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:directory_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the Directory where the object resides. For more
    information, see arns.
  """
  @spec update_object_attributes(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_object_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_object_attributes_errors()}
  def update_object_attributes(%Client{} = client, directory_arn, options \\ [])
      when is_binary(directory_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/object/update"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", directory_arn}]

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
  Updates the schema name with a new name. Only development schema names can be
  updated.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20UpdateSchema&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:schema_arn` (`t:string` required) The Amazon Resource Name (ARN) of the
    development schema. For more information, see arns.
  """
  @spec update_schema(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_schema_errors()}
  def update_schema(%Client{} = client, schema_arn, options \\ []) when is_binary(schema_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/update"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", schema_arn}]

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
  Updates a `TypedLinkFacet`. For more information, see [Typed
  Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20UpdateTypedLinkFacet&this_doc_guide=API%2520Reference)

  ## Parameters:
  * `:schema_arn` (`t:string` required) The Amazon Resource Name (ARN) that is
    associated with the schema. For more information, see arns.
  """
  @spec update_typed_link_facet(AWS.Client.t(), String.t(), Keyword.t()) ::
          {:ok, update_typed_link_facet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_typed_link_facet_errors()}
  def update_typed_link_facet(%Client{} = client, schema_arn, options \\ [])
      when is_binary(schema_arn) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/facet"

    # Validate optional parameters
    optional_params = []

    options =
      Keyword.validate!(
        options,
        [enable_retries?: false, retry_num: 0, retry_opts: []] ++ optional_params
      )

    # Required headers
    headers = [{"x-amz-data-partition", schema_arn}]

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
  Upgrades a single directory in-place using the `PublishedSchemaArn` with schema
  updates found in `MinorVersion`. Backwards-compatible minor version upgrades
  are instantaneously available for readers on all objects in the directory.
  Note: This is a synchronous API call and upgrades only one schema on a given
  directory per call. To upgrade multiple directories from one schema, you would
  need to call this API on each directory.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20UpgradeAppliedSchema&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec upgrade_applied_schema(AWS.Client.t(), Keyword.t()) ::
          {:ok, upgrade_applied_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, upgrade_applied_schema_errors()}
  def upgrade_applied_schema(%Client{} = client, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/upgradeapplied"

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
  Upgrades a published schema under a new minor version revision using the current
  contents of `DevelopmentSchemaArn`.

  [API Reference](https://docs.aws.amazon.com/search/doc-search.html?searchPath=documentation&searchQuery=clouddirectory%20UpgradePublishedSchema&this_doc_guide=API%2520Reference)

  ## Parameters:
  """
  @spec upgrade_published_schema(AWS.Client.t(), Keyword.t()) ::
          {:ok, upgrade_published_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, upgrade_published_schema_errors()}
  def upgrade_published_schema(%Client{} = client, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/upgradepublished"

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
