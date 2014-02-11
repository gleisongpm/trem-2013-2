class CreateEstacaos < ActiveRecord::Migration
  def change
    create_table :estacaos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
