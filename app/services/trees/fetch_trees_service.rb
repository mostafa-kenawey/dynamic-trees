require 'open-uri'

module Trees
  class FetchTreesService < ::BaseService
    attr_accessor :api_uri

    def initialize(uri="https://random-tree.herokuapp.com/")
      @api_uri = uri
    end

    def _execute
      fetch_trees_list
    end

    private

    def fetch_trees_list
      json_response(gateway_read)
    end

    def json_response(res)
      JSON.parse(res)
    end

    def gateway_read
      open(api_uri).read
    end
  end
end