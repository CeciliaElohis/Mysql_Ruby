class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.boolean :programador
      t.date :birthday
      t.time :work_time
      t.string :name
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end
