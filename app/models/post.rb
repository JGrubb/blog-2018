class Post < ApplicationRecord
	validates :title, :slug, presence: true
	validates :slug, format: {
		with: /\A[a-z-]+\z/,
		message: "Slug must be only lowercase letters and dashes"
	}

	before_save :sluggerize

	private

	def sluggerize
		if slug.nil?
			slug = self.title.dasherize
		end
	end
end
