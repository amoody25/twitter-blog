class TweetController < ApplicationController
    belongs_to :user
    has_many :comments
    def show
        @tweet = Tweet.find(params{:id})
    end
    def new
        @tweet = Tweet.new
    end
    
    def create
        @tweet = Tweet.new(article_params)
        
        if @article.save
            redirect_to @tweet
        else
            render 'new'
        end
    end
    
    def destroy
        @tweet = Tweet.find(params[:id])
        @tweet.destroy
        
        redirect_to tweets_path
    end
    
    def edit
        @tweet = Tweet.find(params[:id])
    end
    
    def favorite
        @tweet
    end
    
    def retweet
    end
    
    
        
end
private 
    def tweet_params
        params.require(:tweet).permit(:title, :text)
    end