# dkron-ruby

Dkron - the Ruby gem for the Dkron REST API

You can communicate with Dkron using a RESTful JSON API over HTTP. Dkron nodes usually listen on port `8080` for API requests. All examples in this section assume that you've found a running leader at `localhost:8080`. Dkron implements a RESTful JSON API over HTTP to communicate with software clients. Dkron listens in port `8080` by default. All examples in this section assume that you're using the default port. Default API responses are unformatted JSON add the `pretty=true` param to format the response. 

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 3.0
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build dkron-ruby.gemspec
```

Then either install the gem locally:

```shell
gem install ./dkron-ruby-1.0.0.gem
```
(for development, run `gem install --dev ./dkron-ruby-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'dkron-ruby', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO, then add the following in the Gemfile:

    gem 'dkron-ruby', :git => 'https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'dkron-ruby'

api_instance = Dkron::DefaultApi.new

begin
  result = api_instance.busy
  p result
rescue Dkron::ApiError => e
  puts "Exception when calling DefaultApi->busy: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:8080/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Dkron::DefaultApi* | [**busy**](docs/DefaultApi.md#busy) | **GET** /busy | 
*Dkron::DefaultApi* | [**get_is_leader**](docs/DefaultApi.md#get_is_leader) | **GET** /isleader | 
*Dkron::DefaultApi* | [**get_leader**](docs/DefaultApi.md#get_leader) | **GET** /leader | 
*Dkron::DefaultApi* | [**leave**](docs/DefaultApi.md#leave) | **POST** /leave | 
*Dkron::DefaultApi* | [**status**](docs/DefaultApi.md#status) | **GET** / | 
*Dkron::ExecutionsApi* | [**list_executions_by_job**](docs/ExecutionsApi.md#list_executions_by_job) | **GET** /jobs/{job_name}/executions | 
*Dkron::JobsApi* | [**create_or_update_job**](docs/JobsApi.md#create_or_update_job) | **POST** /jobs | 
*Dkron::JobsApi* | [**delete_job**](docs/JobsApi.md#delete_job) | **DELETE** /jobs/{job_name} | 
*Dkron::JobsApi* | [**get_jobs**](docs/JobsApi.md#get_jobs) | **GET** /jobs | 
*Dkron::JobsApi* | [**restore**](docs/JobsApi.md#restore) | **POST** /restore | 
*Dkron::JobsApi* | [**run_job**](docs/JobsApi.md#run_job) | **POST** /jobs/{job_name} | 
*Dkron::JobsApi* | [**show_job_by_name**](docs/JobsApi.md#show_job_by_name) | **GET** /jobs/{job_name} | 
*Dkron::JobsApi* | [**toggle_job**](docs/JobsApi.md#toggle_job) | **POST** /jobs/{job_name}/toggle | 
*Dkron::MembersApi* | [**get_member**](docs/MembersApi.md#get_member) | **GET** /members | 


## Documentation for Models

 - [Dkron::Execution](docs/Execution.md)
 - [Dkron::Job](docs/Job.md)
 - [Dkron::Member](docs/Member.md)
 - [Dkron::Processors](docs/Processors.md)
 - [Dkron::Restore](docs/Restore.md)
 - [Dkron::Status](docs/Status.md)


## Documentation for Authorization

 All endpoints do not require authorization.

