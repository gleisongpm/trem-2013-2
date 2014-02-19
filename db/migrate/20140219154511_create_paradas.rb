class CreateParadas < ActiveRecord::Migration
  def change
    create_table :paradas do |t|
      t.string :ordem
      t.references :linha, index: true
      t.references :estacao, index: true

      t.timestamps
    end
  end
end
