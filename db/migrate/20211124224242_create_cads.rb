class CreateCads < ActiveRecord::Migration[6.1]
  def change
    create_table :cads do |t|
      t.string :nome
      t.string :cnpjcpf
      t.string :ie
      t.string :celular
      t.string :telefone
      t.string :nomecont
      t.date :dtnasc
      t.string :celular2
      t.string :telefone2
      t.string :nomecont2
      t.string :email
      t.string :cep
      t.text :rua
      t.numeric :numcasa
      t.string :cidade
      t.text :bairro
      t.string :estado
      t.string :pais

      t.timestamps
    end
  end
end
