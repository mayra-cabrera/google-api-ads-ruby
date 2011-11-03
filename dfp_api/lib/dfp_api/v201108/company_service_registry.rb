#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.3 on 2011-10-24 17:27:02.

require 'dfp_api/errors'

module DfpApi; module V201108; module CompanyService
  class CompanyServiceRegistry
    COMPANYSERVICE_METHODS = {:update_company=>{:input=>[{:type=>"Company", :min_occurs=>0, :max_occurs=>1, :name=>:company}], :output=>{:fields=>[{:type=>"Company", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"update_company_response"}}, :create_companies=>{:input=>[{:type=>"Company", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:companies}], :output=>{:fields=>[{:type=>"Company", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"create_companies_response"}}, :create_company=>{:input=>[{:type=>"Company", :min_occurs=>0, :max_occurs=>1, :name=>:company}], :output=>{:fields=>[{:type=>"Company", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"create_company_response"}}, :get_companies_by_statement=>{:input=>[{:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}], :output=>{:fields=>[{:type=>"CompanyPage", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_companies_by_statement_response"}}, :get_company=>{:input=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:company_id}], :output=>{:fields=>[{:type=>"Company", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_company_response"}}, :update_companies=>{:input=>[{:type=>"Company", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:companies}], :output=>{:fields=>[{:type=>"Company", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"update_companies_response"}}}
    COMPANYSERVICE_TYPES = {:ClientLogin=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:token}], :base=>"Authentication"}, :String_ValueMapEntry=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:key}, {:type=>"Value", :min_occurs=>0, :max_occurs=>1, :name=>:value}]}, :Value=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value_type}], :abstract=>true}, :SoapRequestHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:network_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:application_name}, {:type=>"Authentication", :min_occurs=>0, :max_occurs=>1, :name=>:authentication}]}, :Company=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"Company.Type", :min_occurs=>0, :max_occurs=>1, :name=>:type}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:address}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:email}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:fax_phone}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:primary_phone}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:external_id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:comment}, {:type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:applied_labels}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:enable_same_advertiser_competitive_exclusion}]}, :Authentication=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:authentication_type}], :abstract=>true}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:request_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:response_time}]}, :AppliedLabel=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:label_id}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:is_negated}]}, :TextValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :CompanyPage=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:total_result_set_size}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:start_index}, {:type=>"Company", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:results}]}, :BooleanValue=>{:fields=>[{:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :Statement=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:query}, {:type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:values}]}, :OAuth=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:parameters}], :base=>"Authentication"}, :NumberValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}}
    COMPANYSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return COMPANYSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return COMPANYSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return COMPANYSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < DfpApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end