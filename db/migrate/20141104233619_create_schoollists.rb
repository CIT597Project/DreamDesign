class CreateSchoollists < ActiveRecord::Migration
  def change
    create_table :schoollists do |t|
      t.string :name
      t.string :comment

      t.timestamps null: false
    end
  end
end
