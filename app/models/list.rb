class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_one_attached :photo
  has_many :movies, through: :bookmarks


  validates :name, presence: true, uniqueness: true
end


# order of has many is important / first the direct connections and then through
