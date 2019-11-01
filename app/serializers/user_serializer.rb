class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :username, :password_digest, :age, :gender, :bio, :college, :occupation

  has_many :interests
end
