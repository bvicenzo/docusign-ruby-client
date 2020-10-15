=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign
  # A workspaceItem (file type only) representing the file. This property is only returned in response to file specific GET call.
  class WorkspaceItem
    attr_accessor :caller_authorization

    # 
    attr_accessor :content_type

    # The UTC DateTime when the workspace item was created.
    attr_accessor :created

    # 
    attr_accessor :created_by_id

    attr_accessor :created_by_information

    # 
    attr_accessor :extension

    # 
    attr_accessor :file_size

    # 
    attr_accessor :file_uri

    # 
    attr_accessor :id

    #  If true, this supersedes need for bit mask permission with workspaceUserAuthorization
    attr_accessor :is_public

    # 
    attr_accessor :last_modified

    # Utc date and time the comment was last updated (can only be done by creator)
    attr_accessor :last_modified_by_id

    attr_accessor :last_modified_by_information

    # A simple string description of the item, such as a file name or a folder name.
    attr_accessor :name

    # 
    attr_accessor :page_count

    # The ID of the parent folder. This is the GUID of the parent folder, or the special value 'root' for the root folder.
    attr_accessor :parent_folder_id

    # 
    attr_accessor :parent_folder_uri

    # 
    attr_accessor :sha256

    # 
    attr_accessor :thumb_height

    attr_accessor :thumbnail

    # 
    attr_accessor :thumb_width

    # The type of the workspace item. Valid values are file, folder.
    attr_accessor :type

    # 
    attr_accessor :uri

    attr_accessor :user_authorization

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'caller_authorization' => :'callerAuthorization',
        :'content_type' => :'contentType',
        :'created' => :'created',
        :'created_by_id' => :'createdById',
        :'created_by_information' => :'createdByInformation',
        :'extension' => :'extension',
        :'file_size' => :'fileSize',
        :'file_uri' => :'fileUri',
        :'id' => :'id',
        :'is_public' => :'isPublic',
        :'last_modified' => :'lastModified',
        :'last_modified_by_id' => :'lastModifiedById',
        :'last_modified_by_information' => :'lastModifiedByInformation',
        :'name' => :'name',
        :'page_count' => :'pageCount',
        :'parent_folder_id' => :'parentFolderId',
        :'parent_folder_uri' => :'parentFolderUri',
        :'sha256' => :'sha256',
        :'thumb_height' => :'thumbHeight',
        :'thumbnail' => :'thumbnail',
        :'thumb_width' => :'thumbWidth',
        :'type' => :'type',
        :'uri' => :'uri',
        :'user_authorization' => :'userAuthorization'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'caller_authorization' => :'WorkspaceUserAuthorization',
        :'content_type' => :'String',
        :'created' => :'String',
        :'created_by_id' => :'String',
        :'created_by_information' => :'WorkspaceUser',
        :'extension' => :'String',
        :'file_size' => :'String',
        :'file_uri' => :'String',
        :'id' => :'String',
        :'is_public' => :'String',
        :'last_modified' => :'String',
        :'last_modified_by_id' => :'String',
        :'last_modified_by_information' => :'WorkspaceUser',
        :'name' => :'String',
        :'page_count' => :'String',
        :'parent_folder_id' => :'String',
        :'parent_folder_uri' => :'String',
        :'sha256' => :'String',
        :'thumb_height' => :'String',
        :'thumbnail' => :'Page',
        :'thumb_width' => :'String',
        :'type' => :'String',
        :'uri' => :'String',
        :'user_authorization' => :'WorkspaceUserAuthorization'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'callerAuthorization')
        self.caller_authorization = attributes[:'callerAuthorization']
      end

      if attributes.has_key?(:'contentType')
        self.content_type = attributes[:'contentType']
      end

      if attributes.has_key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.has_key?(:'createdById')
        self.created_by_id = attributes[:'createdById']
      end

      if attributes.has_key?(:'createdByInformation')
        self.created_by_information = attributes[:'createdByInformation']
      end

      if attributes.has_key?(:'extension')
        self.extension = attributes[:'extension']
      end

      if attributes.has_key?(:'fileSize')
        self.file_size = attributes[:'fileSize']
      end

      if attributes.has_key?(:'fileUri')
        self.file_uri = attributes[:'fileUri']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'isPublic')
        self.is_public = attributes[:'isPublic']
      end

      if attributes.has_key?(:'lastModified')
        self.last_modified = attributes[:'lastModified']
      end

      if attributes.has_key?(:'lastModifiedById')
        self.last_modified_by_id = attributes[:'lastModifiedById']
      end

      if attributes.has_key?(:'lastModifiedByInformation')
        self.last_modified_by_information = attributes[:'lastModifiedByInformation']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'pageCount')
        self.page_count = attributes[:'pageCount']
      end

      if attributes.has_key?(:'parentFolderId')
        self.parent_folder_id = attributes[:'parentFolderId']
      end

      if attributes.has_key?(:'parentFolderUri')
        self.parent_folder_uri = attributes[:'parentFolderUri']
      end

      if attributes.has_key?(:'sha256')
        self.sha256 = attributes[:'sha256']
      end

      if attributes.has_key?(:'thumbHeight')
        self.thumb_height = attributes[:'thumbHeight']
      end

      if attributes.has_key?(:'thumbnail')
        self.thumbnail = attributes[:'thumbnail']
      end

      if attributes.has_key?(:'thumbWidth')
        self.thumb_width = attributes[:'thumbWidth']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'uri')
        self.uri = attributes[:'uri']
      end

      if attributes.has_key?(:'userAuthorization')
        self.user_authorization = attributes[:'userAuthorization']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          caller_authorization == o.caller_authorization &&
          content_type == o.content_type &&
          created == o.created &&
          created_by_id == o.created_by_id &&
          created_by_information == o.created_by_information &&
          extension == o.extension &&
          file_size == o.file_size &&
          file_uri == o.file_uri &&
          id == o.id &&
          is_public == o.is_public &&
          last_modified == o.last_modified &&
          last_modified_by_id == o.last_modified_by_id &&
          last_modified_by_information == o.last_modified_by_information &&
          name == o.name &&
          page_count == o.page_count &&
          parent_folder_id == o.parent_folder_id &&
          parent_folder_uri == o.parent_folder_uri &&
          sha256 == o.sha256 &&
          thumb_height == o.thumb_height &&
          thumbnail == o.thumbnail &&
          thumb_width == o.thumb_width &&
          type == o.type &&
          uri == o.uri &&
          user_authorization == o.user_authorization
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [caller_authorization, content_type, created, created_by_id, created_by_information, extension, file_size, file_uri, id, is_public, last_modified, last_modified_by_id, last_modified_by_information, name, page_count, parent_folder_id, parent_folder_uri, sha256, thumb_height, thumbnail, thumb_width, type, uri, user_authorization].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = DocuSign_eSign.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
