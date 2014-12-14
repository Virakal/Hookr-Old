require "addressable/uri"

class String
  def is_url?
    schemes = %w(http https)
    parsed = Addressable::URI.parse(self) or return false
    schemes.include? parsed.scheme
  rescue Addressable::URI::InvalidURIError
    false
  end
end
