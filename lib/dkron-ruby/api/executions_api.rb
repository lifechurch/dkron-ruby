=begin
#Dkron REST API

#You can communicate with Dkron using a RESTful JSON API over HTTP. Dkron nodes usually listen on port `8080` for API requests. All examples in this section assume that you've found a running leader at `localhost:8080`.  Dkron implements a RESTful JSON API over HTTP to communicate with software clients. Dkron listens in port `8080` by default. All examples in this section assume that you're using the default port.  Default API responses are unformatted JSON add the `pretty=true` param to format the response. 

OpenAPI spec version: 2.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'uri'

module Dkron
  class ExecutionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List executions. 
    # @param job_name The job that owns the executions to be fetched.
    # @param [Hash] opts the optional parameters
    # @return [Array<Execution>]
    def list_executions_by_job(job_name, opts = {})
      data, _status_code, _headers = list_executions_by_job_with_http_info(job_name, opts)
      data
    end

    # List executions. 
    # @param job_name The job that owns the executions to be fetched.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Execution>, Fixnum, Hash)>] Array<Execution> data, response status code and response headers
    def list_executions_by_job_with_http_info(job_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExecutionsApi.list_executions_by_job ...'
      end
      # verify the required parameter 'job_name' is set
      if @api_client.config.client_side_validation && job_name.nil?
        fail ArgumentError, "Missing the required parameter 'job_name' when calling ExecutionsApi.list_executions_by_job"
      end
      # resource path
      local_var_path = '/jobs/{job_name}/executions'.sub('{' + 'job_name' + '}', job_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

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
        :auth_names => auth_names,
        :return_type => 'Array<Execution>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExecutionsApi#list_executions_by_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end