# frozen_string_literal: true

ActiveAdmin.register Horse do
  permit_params :name, :breed_id, :age, :number_of_legs, :top_speed
end
