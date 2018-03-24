require 'grubb_utils'

class Tag < ApplicationRecord
  include GrubbUtils
  has_many :taggings, dependent: :delete_all
  has_many :posts, through: :taggings

  validates :name, :slug, presence: true, uniqueness: true

  before_validation :ensure_has_slug

  private

  def ensure_has_slug
    unless self.name.nil?
      self[:slug] ||= slugify self.name
    end
  end
end
