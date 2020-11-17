=begin
#Dkron REST API

#You can communicate with Dkron using a RESTful JSON API over HTTP. Dkron nodes usually listen on port `8080` for API requests. All examples in this section assume that you've found a running leader at `localhost:8080`. Dkron implements a RESTful JSON API over HTTP to communicate with software clients. Dkron listens in port `8080` by default. All examples in this section assume that you're using the default port. Default API responses are unformatted JSON add the `pretty=true` param to format the response. 

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

module Dkron
  class ApiError < StandardError
    attr_reader :code, :response_headers, :response_body

    # Usage examples:
    #   ApiError.new
    #   ApiError.new("message")
    #   ApiError.new(:code => 500, :response_headers => {}, :response_body => "")
    #   ApiError.new(:code => 404, :message => "Not Found")
    def initialize(arg = nil)
      if arg.is_a? Hash
        if arg.key?(:message) || arg.key?('message')
          super(arg[:message] || arg['message'])
        else
          super arg
        end

        arg.each do |k, v|
          instance_variable_set "@#{k}", v
        end
      else
        super arg
      end
    end
  end
end
