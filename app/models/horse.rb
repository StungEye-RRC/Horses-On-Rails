# frozen_string_literal: true

class Horse < ApplicationRecord
  belongs_to :breed

  validates :name, presence: true

  has_one_attached :image
end
