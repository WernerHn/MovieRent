class Movie < ApplicationRecord
  has_many :line_movies
  mount_uploader :image_url, PictureUploader
  before_destroy :ensure_not_referenced_by_any_line_item


  private

  def ensure_not_referenced_by_any_line_item
    if line_movies.empty?
      return true
    else
      errors.add(:base, 'Line Movies present')
      return false
    end
  end
end


