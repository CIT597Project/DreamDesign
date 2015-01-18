class AddVideotokenToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :videotoken, :string
  end
end
