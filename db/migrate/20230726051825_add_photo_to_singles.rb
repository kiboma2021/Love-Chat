class AddPhotoToSingles < ActiveRecord::Migration[7.0]
  def change
    add_column :singles, :photo, :binary
  end
end
