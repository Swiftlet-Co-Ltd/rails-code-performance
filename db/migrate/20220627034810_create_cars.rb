class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.belongs_to :user
      100.times do |n|
        t.string "name#{n}"
      end
      t.timestamps
    end

    # add_index :cars, :name0
    # 100.times do |n|
    #   add_index :cars, "name#{n}"
    # end
  end
end
