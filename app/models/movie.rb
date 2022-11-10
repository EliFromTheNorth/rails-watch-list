class Movie < ApplicationRecord
  belongs_to :lists, through: bookmarks
  validates :title, :overview, presence: true

end
