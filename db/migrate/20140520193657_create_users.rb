class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :phone
      t.decimal :min_investment

      t.timestamps
    end
  end
end
