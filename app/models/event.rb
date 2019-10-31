class Event < ApplicationRecord

  belongs_to :post
  has_many :messages, dependent: :destroy

end
