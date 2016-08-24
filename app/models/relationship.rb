class Relationship < ActiveRecord::Base
    belongs_to :username #This is the current user that initiates the follow
    belongs_to :friend, class_name: "User" #THis is the user being followed
end
