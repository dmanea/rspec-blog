class Post < ActiveRecord::Base

  validates_presence_of :title, :description

  scope :published, ->    { where(published: true) }
  scope :sorted, ->       { order(post_date: :desc) }
end
