require 'SecureRandom'

class ShortenedUrl < ApplicationRecord

  belongs_to :users,
  primary_key: :id,
  foreign_key: :user_id,
  class: :User

  def self.random_code
    ran = SecureRandom.urlsafe_base64
    if CreateShortenedUrls.exists?(ran)
      ran = SecureRandom.urlsafe_base64
    end
  end

  def self.create(long_url, user_object)

  end
  add_index :shortened_urls, :user_id 

end
