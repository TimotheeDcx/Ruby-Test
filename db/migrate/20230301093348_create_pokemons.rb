class CreateIanimals < ActiveRecord::Migration[7.0]
  def change
    create_table :ianimals do |t|
      t.string :nompoke
      t.string :typepoke
      t.integer :puissancepoke

      t.timestamps
    end
  end
end
