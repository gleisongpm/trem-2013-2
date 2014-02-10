class CreateLinhas < ActiveRecord::Migration
  def change
    create_table :linhas do |t|
      t.string :nome

      t.timestamps
    end
  end
end
