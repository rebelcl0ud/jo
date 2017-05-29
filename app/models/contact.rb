class Contact
  include ActiveModel::Model
  attr_accessor :name, :string
  attr_accessor :email, :string
  attr_accessor :message, :string

  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :message
  validates_presence_of :email,
  with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
  validates_length_of :message, :maximum => 500
end