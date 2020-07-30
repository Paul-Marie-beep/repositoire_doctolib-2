class CreateCapabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :capabilities do |t|
      t.belongs_to :doctor, index: true
      t.belongs_to :specialty, index: true
      t.timestamps
    end
  end
end


#C'est la table de jointure entre les médecins et les spécialités