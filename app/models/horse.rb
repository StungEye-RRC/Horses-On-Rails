class Horse < ApplicationRecord
  belongs_to :breed

  validates :name, presence: true
end
