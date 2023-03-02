class AddClasseToIanimals < ActiveRecord::Migration[7.0]
  def change
    add_column :ianimals, :classe, :string
  end
end
