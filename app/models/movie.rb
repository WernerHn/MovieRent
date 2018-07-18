class Movie < ApplicationRecord
  has_many :line_movies
  mount_uploader :image_url, PictureUploader
  before_destroy :no_referenced
  validates :title,  :presence => true
  validates :price,  :presence => true
  validates :image_url, :presence => true


  private

  def no_referenced
    if line_movies.empty?
      return true
    else
      errors.add(:base, 'Line Movies present')
      return false
    end
  end
end


