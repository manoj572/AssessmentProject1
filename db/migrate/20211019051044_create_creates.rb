class CreateCreates < ActiveRecord::Migration[6.1]
  def change
    create_table :creates do |t|
      t.string :username
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end
