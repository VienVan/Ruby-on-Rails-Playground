class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def new
    @tweet = Tweet.new
  end

  def edit
  end

  def create
    tweet_params = params.require(:tweet).permit(:title, :content)
    tweet = Tweet.new(tweet_params)
    if tweet.save
      redirect_to '/tweets'
    end
  end

  def update
  end

  def destroy
    @tweet = Tweet.destroy(params[:id])
    redirect_to '/tweets'
  end
end
