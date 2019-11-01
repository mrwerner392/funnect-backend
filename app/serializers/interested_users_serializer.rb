class InterestedUsesSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :username, :age, :gender, :bio, :college, :occupation

  has_many :interests
end
