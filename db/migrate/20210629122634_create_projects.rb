class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.column :status, :integer , default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
