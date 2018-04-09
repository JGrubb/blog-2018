require 'grubb_utils'

class Post < ApplicationRecord
  include GrubbUtils

	has_many :taggings, dependent: :delete_all
	has_many :tags, through: :taggings

  accepts_nested_attributes_for :tags

	validates :title, :slug, :body, presence: true
	validates :slug, format: {
		with: /\A[0-9a-z-]+\z/,
		message: "Slug must be only lowercase letters and dashes and numbers"
	}
  before_validation :ensure_has_slug

	scope :published, -> { where(published: true) }

	private

	def ensure_has_slug
		unless self.title.nil?
			self[:slug] ||= slugify self.title
		end
	end
end
