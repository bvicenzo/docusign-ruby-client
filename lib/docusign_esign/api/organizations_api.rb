=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_eSign


  class OrganizationsApi
    attr_accessor :api_client

    def initialize(api_client = OrganizationsApi.default)
      @api_client = api_client
    end

    # Retrieves org level report by correlation id and site.
    # 
    # @param organization_id 
    # @param report_correlation_id 
    # @return [nil]
    def delete_report(organization_id, report_correlation_id)
      delete_report_with_http_info(organization_id, report_correlation_id)
      return nil
    end

    # Retrieves org level report by correlation id and site.
    # 
    # @param organization_id 
    # @param report_correlation_id 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_report_with_http_info(organization_id, report_correlation_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi.delete_report ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling OrganizationsApi.delete_report" if organization_id.nil?
      # verify the required parameter 'report_correlation_id' is set
      fail ArgumentError, "Missing the required parameter 'report_correlation_id' when calling OrganizationsApi.delete_report" if report_correlation_id.nil?
      # resource path
      local_var_path = "/v2/organization_reporting/{organizationId}/reports/{reportCorrelationId}".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s).sub('{' + 'reportCorrelationId' + '}', report_correlation_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#delete_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves org level report by correlation id and site.
    # 
    # @param organization_id 
    # @param report_correlation_id 
    # @return [nil]
    def get_report(organization_id, report_correlation_id)
      get_report_with_http_info(organization_id, report_correlation_id)
      return nil
    end

    # Retrieves org level report by correlation id and site.
    # 
    # @param organization_id 
    # @param report_correlation_id 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_report_with_http_info(organization_id, report_correlation_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi.get_report ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling OrganizationsApi.get_report" if organization_id.nil?
      # verify the required parameter 'report_correlation_id' is set
      fail ArgumentError, "Missing the required parameter 'report_correlation_id' when calling OrganizationsApi.get_report" if report_correlation_id.nil?
      # resource path
      local_var_path = "/v2/organization_reporting/{organizationId}/reports/{reportCorrelationId}".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s).sub('{' + 'reportCorrelationId' + '}', report_correlation_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#get_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
