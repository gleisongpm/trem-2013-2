class CreateLocomotivalinhaparadas < ActiveRecord::Migration
  def change
    create_table :locomotivalinhaparadas do |t|
      t.string :horachegada
      t.string :horapartida
      t.references :tremlinha, index: true
      t.references :parada, index: true

      t.timestamps
    end
  end
end
