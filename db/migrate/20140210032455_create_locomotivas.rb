class CreateLocomotivas < ActiveRecord::Migration
  def change
    create_table :locomotivas do |t|
      t.string :nome
      t.string :modelo

      t.timestamps
    end
  end
end
