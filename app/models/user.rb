class User < ApplicationRecord
  has_and_belongs_to_many :groups
  has_many :posts

  def self.from_omniauth(auth)
    p '1'
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |u|
      p '2'
      u.provider = auth.provider
      p '3'
      u.uid = auth.uid
      p '4'
      u.name = auth.info.name
      p '5'
      p auth
      u.oauth_token = auth.credentials.token
      p '6'
      u.oauth_expires_at = Time.at(auth.credentials.expires_at)
      p '7'
      u.save!
      p '8'
    end
  end
end
