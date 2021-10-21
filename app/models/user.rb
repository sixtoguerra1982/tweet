class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 has_many :tweets
 has_many :likes
 def to_s
  self.user_name
 end

 def like?(tweet_id)
  tweet = Tweet.find(tweet_id)
  likes = tweet.likes
  likes.each do |like|
    if like.user == self
      return true
    end
  end
  return false
 end
end
