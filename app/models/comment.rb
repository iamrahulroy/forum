class Comment
  include Mongoid::Document
  field :name, type: String
  field :body, type: String
  embedded_in :article, :inverse_of => :comments
  validates_presence_of :name, :body
end
