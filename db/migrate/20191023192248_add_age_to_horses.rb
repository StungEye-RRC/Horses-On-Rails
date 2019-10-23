class AddAgeToHorses < ActiveRecord::Migration[6.0]
  def change
    add_column :horses, :age, :integer
  end
end
