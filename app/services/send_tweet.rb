class SendTweet
  attr_accessor :tweet

  def initialize(tweet)
    @tweet = tweet
  end

  def log_in_to_twitter
    user_setup
  end

  def send_tweet
    @client.update(@tweet)
  end 

  def perform
    log_in_to_twitter
    send_tweet
  end

  private
    def user_setup
      @client = Twitter::REST::Client.new do |config|
      config.consumer_key  = "Wa48QZDndhbSlaWIUDDfhZuSJ"
      config.consumer_secret = "xK1mfkakqAPDSUXkDHKwAWAm4Btw0zpXJHc812nrhDy1OXgv2S"
      config.access_token = "587344191-YfIhVS4pZjPqmaXPhxsYrUbuXah2UM27Mm24lpJz"
      config.access_token_secret = "vQUcrlgCk9Lu5rN0NmrHERTutF5IuF0YGjjTgPPgT5DM4"     
      end
    end

end
