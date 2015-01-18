class RemoveTokenFromVideo < ActiveRecord::Migration
  def change
    remove_column :videos, :token, :string
  end
end
