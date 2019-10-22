# frozen_string_literal: true

class HorsesController < ApplicationController
  # GET /horses/:id
  def show
    @horse = Horse.find(params[:id])
  end
end
