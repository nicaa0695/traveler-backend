class Destination < ApplicationRecord
    has_many :activities
    validates :name, presence: true, uniqueness: true
  end