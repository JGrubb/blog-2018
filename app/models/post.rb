class Post < ApplicationRecord
	validates :title, :slug, :body, presence: true
	validates :slug, format: {
		with: /\A[a-z-]+\z/,
		message: "Slug must be only lowercase letters and dashes"
	}

  before_validation :ensure_has_slug

	private

	def ensure_has_slug
    self[:slug] ||= self.title.downcase
                        .gsub(/[^a-zA-Z. ]/, '')
                        .gsub(/ /, "-")
	end
end
