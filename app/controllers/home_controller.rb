class HomeController < ApplicationController
  def index
#    @sendtweet = SendTweet.new(:tweet).perform
  text= params[:tweet]
  SendTweet.new(text).perform unless text ==nil
  end
end
