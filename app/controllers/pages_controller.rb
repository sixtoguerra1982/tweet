class PagesController < ApplicationController
  def index
    # @tweets = Tweet.all.order(created_at: :desc).limit(50)
    @tweets = Tweet.includes(:user, :likes).order(created_at: :desc).limit(50)
  end
end
