class User < ApplicationRecord
    has_many :tweets
    has_many :like_tweets, through: :like, source: :tweet
end
