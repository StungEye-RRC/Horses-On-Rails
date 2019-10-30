# frozen_string_literal: true

ActiveAdmin.register Horse do
  permit_params :name, :breed_id, :age, :number_of_legs, :top_speed, :image

  form do |f| # This is a formtastic form builder.
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    f.inputs do
      f.input :image, as: :file
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
end
