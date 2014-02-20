class EpmSubdomain
  def initialize
    @domains = Organisation.retrieve_domains
  end

  def matches?(request)
    @domains.map{|v| [v,"www.#{v}"]}.flatten.include? request.subdomain
  end
end