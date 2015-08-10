class Post < ActiveRecord::Base
  acts_as_commentable

  belongs_to :use
  validates_presence_of :content

end
