require 'uri'

module UsersHelper
  # Returns the Gravatar for the given user.
  def gravatar_for(user)
    gravatar_id = Digest::SHA256::hexdigest(user.email.downcase)
    default = "https://www.example.com/default.jpg"
    size = 60
    params = URI.encode_www_form('d' => default, 's' => size)
    image_src = "https://gravatar.com/avatar/#{gravatar_id}?#{params}"
    image_tag(image_src, alt: user.name, class: "gravatar")
  end
end
