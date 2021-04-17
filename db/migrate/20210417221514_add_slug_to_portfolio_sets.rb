class AddSlugToPortfolioSets < ActiveRecord::Migration[6.1]
  def change
    add_column :portfolio_sets, :slug, :string
    add_index :portfolio_sets, :slug, unique: true
  end
end
