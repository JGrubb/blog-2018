class Post < ApplicationRecord

	has_many :taggings
	has_many :tags, through: :taggings

  accepts_nested_attributes_for :tags

	validates :title, :slug, :body, presence: true
	validates :slug, format: {
		with: /\A[a-z-]+\z/,
		message: "Slug must be only lowercase letters and dashes"
	}
  before_validation :ensure_has_slug

	private

	def ensure_has_slug
		unless self.title.nil?
			self[:slug] ||= self.title.downcase
													.gsub(/[^a-z0-9 ]/, '')
													.strip.gsub(/ /, '-')
		end
	end
end
