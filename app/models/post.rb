class Post
  include Mongoid::Document
  field :title, type: String
  field :body, type: String
  field :user, type: String
  embeds_many :comments
  validates_presence_of :title, :body, :user
end
