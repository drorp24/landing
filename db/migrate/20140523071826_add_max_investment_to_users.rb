class AddMaxInvestmentToUsers < ActiveRecord::Migration
  def change
    add_column :users, :max_investment, :decimal
  end
end
