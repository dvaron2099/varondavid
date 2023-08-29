class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :github
      t.string :linkedin
      t.string :number
      t.string :email

      t.timestamps
    end
  end
end
