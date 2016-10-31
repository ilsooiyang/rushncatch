class Blog < ApplicationRecord

	validates :content, presence: true

  belongs_to :user

  def self.newest
  	Blog.all.order(created_at: :desc)
  end
end
