class RemoveSpecialtycolumnfromDoctors < ActiveRecord::Migration[5.2]
  def change
    remove_column :doctors, :specialty, :string #on enlève la colonne specialty de la table doctors
  end
end
