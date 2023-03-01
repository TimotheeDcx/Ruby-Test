class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :nompoke
      t.string :typepoke
      t.integer :puissancepoke

      t.timestamps
    end
  end
end
