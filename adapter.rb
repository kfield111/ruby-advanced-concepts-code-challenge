require 'open-uri'
require 'nokogiri'
require 'json'

class API

    JSON_URL = ""
    
    def fetch_json_data
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        JSON.parse(response.body)
    end

    def create_listings
        # invoke the fetch_json_data method
        # use the returned data to instantiate new Listings
    end


end

class Scraper

    HTML_URL = ""

    def scrape_html_data
        html = open(URL)
        doc = Nokogiri::HTML(html)
        # use Nokogiri's #css method to return data
        # instantiate Listings
    end
end