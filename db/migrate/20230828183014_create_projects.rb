class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description_es
      t.string :description_en
      t.string :repo
      t.string :link

      t.timestamps
    end
  end
end
