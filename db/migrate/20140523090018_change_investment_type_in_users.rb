class ChangeInvestmentTypeInUsers < ActiveRecord::Migration
 def change
    change_column :users, :min_investment, :string
    change_column :users, :max_investment, :string
  end
end
