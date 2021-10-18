class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end
  def new
    @tweet = Tweet.new
  end
  
  def create
    @tweet = Tweet.new(message: params[:tweet][:message])
    if @tweet.save
      redirect_to tweets_path
    else
      render 'new'
    end
    
  end
  
  def destroy
    tweet = Tweet.find(params[:id])
    if tweet.destroy
     flash[:notice] = "1レコード削除されました"
     redirect_to '/'
    end
  end
end

