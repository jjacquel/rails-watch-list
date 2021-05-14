class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks
  has_one_attached :photo

  validates :title, uniqueness: true
  validates :title, presence: true
  validates :overview, presence: true
end
