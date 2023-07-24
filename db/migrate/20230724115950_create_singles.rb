class CreateSingles < ActiveRecord::Migration[7.0]
  def change
    create_table :singles do |t|
      t.string :name
      t.text :bio
      t.integer :age
      t.boolean :liked

      t.timestamps
    end
  end
end
