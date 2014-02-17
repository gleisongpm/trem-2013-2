class CreateTremlinhas < ActiveRecord::Migration
  def change
    create_table :tremlinhas do |t|
      t.string :destino
      t.references :locomotiva, index: true
      t.references :linha, index: true

      t.timestamps
    end
  end
end
