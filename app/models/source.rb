class Source < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :link, :category, :description, :tags 
end
