class User < ActiveRecord::Base
 def self.find_or_create_from_auth_hash(auth)
    where(provider: auth.provider, uid: auth.uid, name: auth.info.name
).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end