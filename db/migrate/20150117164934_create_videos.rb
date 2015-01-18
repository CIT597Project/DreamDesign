class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :token
      t.references :user, index: true
      t.references :school, index: true

      t.timestamps null: false
    end
  end
end
