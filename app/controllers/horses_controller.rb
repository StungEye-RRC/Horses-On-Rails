# frozen_string_literal: true

class HorsesController < ApplicationController
  # GET /horses/:id
  def show
    @horse = Horse.find(params[:id])
  end

  # GET /search/?search_term=user+search+terms
  def search
    # DANGER DANGER DANGER DANGER DANGER!
    @horses = Horse.where("name LIKE '%#{params[:search_term]}%'")
  end
end
