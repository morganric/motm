class Mix < ActiveRecord::Base
  attr_accessible :author, :image, :title, :url

  validates_presence_of :url
  validates :url, :format => URI::regexp(%w(http https))
end
