class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
   #追加箇所
    def index
        @tweets = Tweet.all
    end
  # ここまで

    def new
        @tweet = Tweet.new
    end

  #割愛

end
