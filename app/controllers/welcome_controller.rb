class WelcomeController < ApplicationController
  def index
  	#we need this next line to create a new Tweet on the index page:
  	@tweet = Tweet.new
  end

  def all_tweets
  	@tweets = Tweet.all
  end
end
