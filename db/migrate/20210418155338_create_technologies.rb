class CreateTechnologies < ActiveRecord::Migration[6.1]
  def change
    create_table :technologies do |t|
      t.string :name
      t.references :portfolio_set, foreign_key: true

      t.timestamps
    end
  end
end
