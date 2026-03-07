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
    tweet = Tweet.new(tweet_params)
    if tweet.save!
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  # 追記ここから
  def show
    @tweet = Tweet.find(params[:id])
  end
  # ここまで

   def update
    tweet = Tweet.find(params[:id])
    if tweet.update(tweet_params)
      redirect_to :action => "show", :id => tweet.id
    else
      redirect_to :action => "new"
    end
  end

   def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to action: :index
  end

  private
  def tweet_params
    params.require(:tweet).permit(:title, :sweet, :place, :peice, :image)
  end
 #ここまでend
end

  def edit
    @tweet = Tweet.find(params[:id])
  end
  # ここまで

  def tweet_params
    params.require(:tweet).permit(:body)
  end




