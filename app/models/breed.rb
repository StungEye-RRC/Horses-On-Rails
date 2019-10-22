# frozen_string_literal: true

class Breed < ApplicationRecord
  has_many :horses

  validates :name, presence: true
end
