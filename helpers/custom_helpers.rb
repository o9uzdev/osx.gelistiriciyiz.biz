require 'digest/md5'
module CustomHelpers
  def gravatar_for(email)
    hash = Digest::MD5.hexdigest(email.chomp.downcase)
    "http://www.gravatar.com/avatar/#{hash}"
  end
end
