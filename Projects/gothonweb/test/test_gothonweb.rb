require_relative '../lib/gothonweb.rb'
require 'test/unit'
require 'rack/test'

ENV['RACK_ENV']='test'

class GothonwebText < Test::Unit::TestCase
	include Rack::Test::Methods

	def app
		Sinatra::Application
	end

	def assert_response (resp, contains=nil, matches=nil, headers=nil, status=200)
		assert_equal(resp.status, status, "Expected response #{status} not in #{resp}")

		if status==200
			assert(resp.body, "Response data is empty")
		end

		if contains
			assert((resp.body.include? countains), "Response does not contain #{contains}")
		end

		if matches
			reg=Regexp.new(matches)
			assert reg.match(contains), "Response does not match #{matcjes}"
		end

		if headers 
			assert_equal(resp.headers, headers)
		end
	end

		def test_index
			get("/foo")
			assert_response(last_response, nil, nil, nil, 404)

			get ("/hello")
			assert_response(last_response)

			post("/hello")
			assert_response(last_response, "Nobody")

			post("/hello", :name =>'Zed', :greet => 'Hola')
			assert_response(last_response, "Zed")
			assert_response(last_response, "Hola")
		end
	end

