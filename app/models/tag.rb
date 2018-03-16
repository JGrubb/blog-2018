class Tag < ApplicationRecord

  has_many :taggings
  has_many :tags, through: :taggings

  validates :name, :slug, presence: true

  before_validation :ensure_has_slug

  private

  def ensure_has_slug
    unless self.name.nil?
      self[:slug] ||= self.name.downcase
                          .gsub(/[^a-z0-9 ]/, '')
                          .strip.gsub(/ /, '-')
    end
  end
end
