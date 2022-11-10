class Movie < ApplicationRecord
  # belongs_to :lists, through: bookmarks Nononononooooooooooooooooo
  #has_many :lists, through: bookmarks => o, but not nended, we dont need to show all the lists what the movie is in, that would be this line for
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end

# by default if you want to try something what has dependencies / it will not let you unless you say delete with all children==> dependent: :destroy
