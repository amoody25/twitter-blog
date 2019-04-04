class UserController < ApplicationController
    has_many :comment
    has_many :tweet
    has_one :profile
end
