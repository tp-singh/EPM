class EpmSubdomain
  def self.matches?(request)
    @domains = Organisation.retrieve_domains
    @domains.map{|v| [v,"www.#{v}"]}.flatten.include? request.subdomain
  end
end

class Domain
  def self.matches?(request)
    !request.subdomain.present? || request.subdomain == "www"
  end
end