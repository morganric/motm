class Mix < ActiveRecord::Base
  attr_accessible :author, :image, :title, :url

  validates_presence_of :url
end
