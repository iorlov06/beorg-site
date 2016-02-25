require 'net/http'
require 'json'

module RequestUtils
  def self.json_post_request(host, path, params)
    request = Net::HTTP::Post.new(path, initheader = {'Content-Type' =>'application/json'})
    request.body = params.to_json

    response = Net::HTTP.new(host).start {|http| http.request(request) }
    JSON(response.body)
  end

=begin
  def self.get_request(host, path, params)
    if not params.nil?
      response = Net::HTTP.get(host, "#{path}?".concat(params.collect { |k,v| "#{k}=#{CGI::escape(v.to_s)}" }.join('&')))
    else
      response = Net::HTTP.get(host, path)
    end
    JSON(response.body)
  end
=end
end