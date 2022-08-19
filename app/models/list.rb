class List < ApplicationRecord
  # if list is destroyed, then destroy bookmarks
  has_many :bookmarks, dependent: :destroy
  # if bookmark destroyed, then destroy movies
  has_many :movies, through: :bookmarks

  validates :name, presence: true, uniqueness: true
end
