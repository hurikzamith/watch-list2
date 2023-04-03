class Movie < ApplicationRecord
  has_many :bookmarks
  belongs_to :list

  validates :title, :overview, uniqueness: true
end
