class CreateRepositories < ActiveRecord::Migration
  def change
    create_table :repositories, id: :uuid do |t|
      t.string :name, null: false
      t.string :source

      t.timestamps
    end
  end
end
