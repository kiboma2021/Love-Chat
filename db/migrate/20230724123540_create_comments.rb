class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :single_id

      t.timestamps
    end
  end
end
