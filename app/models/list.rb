class List < ApplicationRecord
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  validates :name, uniqueness: true, presence: true

end
