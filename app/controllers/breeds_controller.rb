# frozen_string_literal: true

class BreedsController < ApplicationController
  # GET /
  def index
    @breeds = Breed.order(:name)
  end

  # GET /breeds/:id
  def show
    @breed = Breed.find(params[:id])
  end
end
