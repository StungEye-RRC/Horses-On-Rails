ActiveAdmin.register Horse do
  permit_params :name, :breed_id, :age, :top_speed, :number_of_legs
end
