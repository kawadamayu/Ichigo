class TweetsController < ApplicationController
 def index 

    if params[:search] == nil
        @tweets= Tweet.all
      elsif params[:search] == ''
        @tweets= Tweet.all
      else
        #部分検索
        @tweets = Tweet.where("body LIKE ? ",'%' + params[:search] + '%')
      end
      #ここまで
  @tweets = Tweet.all
 end

#追加箇所
  def new
    @tweet = Tweet.new
  end

 def create
  @tweet = Tweet.new(tweet_params)
  if @tweet.save
    redirect_to tweets_path
  else
    render :new
  end
end

  # 追記ここから
  def show
    @tweet = Tweet.find(params[:id])
  end
  # ここまで
  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
  @tweet = Tweet.find(params[:id])
  if @tweet.update(tweet_params)
    redirect_to tweet_path(@tweet)
  else
    render :edit
  end
end

   def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to action: :index
  end

  private
  def tweet_params
    params.require(:tweet).permit(:title, :sweet, :place, :price, :image)
  end
 #ここまでend

  # ここまで
end