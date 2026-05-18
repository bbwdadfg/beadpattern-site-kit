module BeadPattern
  module SiteKit
    BASE_URL = "https://beadpattern.net"

    module_function

    def home_url
      BASE_URL
    end

    def tool_url(slug)
      clean = slug.to_s.gsub(%r{\A/+|/+\z}, "")
      clean.empty? ? BASE_URL : "#{BASE_URL}/#{clean}"
    end

    def search_url(query)
      "#{BASE_URL}/search?q=#{query.to_s.gsub(' ', '+')}"
    end
  end
end
