class Post < ActiveRecord::Base
  attr_accessible :content, :title
  belongs_to :user

  validates :user_id, presence: true
  validates :title, :length => { :maximum => 250 }, presence: true
  validates :content, :length => { :maximum => 400 }, presence: true
  default_scope order: 'posts.updated_at DESC'
end
