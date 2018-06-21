class CreateOngs < ActiveRecord::Migration[5.2]
  def change
    create_table :ongs do |t|
      t.string :nome_instituicao
      t.string :email
      t.string :cpnj
      t.text :endereco
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
