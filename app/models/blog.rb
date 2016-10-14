class Blog < ApplicationRecord

	validates :content, presence: true

  belongs_to :player

  def self.newest
  	Blog.all.order(created_at: :desc)
  end
end
