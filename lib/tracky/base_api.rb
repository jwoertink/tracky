module Tracky
  class BaseAPI
    URI = "http://tracky.com/api/#{Tracky::API_VERSION}"

    def self.url(path)
      [URI, "#{path}.json"].join('/')
    end

    def self.get(path)
      response = HTTP.get(path)
      json = JSON.parse(response.to_s)
      if json.has_key? "error"
        raise "#{json["error"]["type"]}: #{json["error"]["message"]}"
      end
    end
  end
end
