class CreateRules < ActiveRecord::Migration[5.0]
  def change
    create_table :rules do |t|
      t.integer :lower_limit
      t.integer :upper_limit
      t.integer :tax_rate

      t.timestamps
    end
  end
end
