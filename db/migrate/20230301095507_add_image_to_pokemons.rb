class AddImageToPokemons < ActiveRecord::Migration[7.0]
  def change
    add_column :ianimals, :image, :string
  end
end
