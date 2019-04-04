class CommentController < TweetController <ApplicationController
    belongs_to :tweet
    belongs_to :user
end
