class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.belongs_to :profile
      t.string :first_name
      t.string :last_name
      t.datetime :bird_day
      t.timestamps
    end
  end
end
