class Post < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  belongs_to :neighborhood
end
