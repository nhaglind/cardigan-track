class CreateCardigans < ActiveRecord::Migration[5.0]
  def change
    create_table :cardigans do |t|
      t.string :brand
      t.string :color

      t.timestamps
    end
  end
end
