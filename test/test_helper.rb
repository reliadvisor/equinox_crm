$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "equinox_crm"
require "minitest/autorun"
require "webmock/minitest"
require "vcr"

VCR.configure do |c|
  c.cassette_library_dir = "test/fixtures"
  c.hook_into :webmock
  c.allow_http_connections_when_no_cassette = true
end
