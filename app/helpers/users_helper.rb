require 'digest/md5'
require 'net/http'

module UsersHelper

  # Displays Gravatar image if available, otherwise local default profile image
  def gravatar_for(email, size = 80)
      image_tag("default-profile.png", alt: "#{email.strip.downcase}", class: "rounded-lg", size: "#{size}x#{size}")
=begin
    gravatar_id = Digest::MD5.hexdigest(email.strip.downcase)
    gravatar_url = "https://www.gravatar.com/avatar/#{gravatar_id}?s=#{size}&d=404"

    # Check if gravatar exists by making a HEAD request
    uri = URI(gravatar_url)
    response = Net::HTTP.start(uri.host, uri.port, use_ssl: true) do |http|
      http.head(uri.request_uri)
    end

    if response.code == "200"
      image_tag(gravatar_url, alt: "User Gravatar", class: "rounded-lg", size: "#{size}x#{size}")
    else
      image_tag("default-profile.png", alt: "#{email.strip.downcase}", class: "rounded-lg", size: "#{size}x#{size}")
    end
=end
  end
end
