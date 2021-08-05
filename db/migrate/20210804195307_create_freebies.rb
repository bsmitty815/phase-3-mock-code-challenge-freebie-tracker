class CreateFreebies < ActiveRecord::Migration[6.1]
  def change
    create_table :freebies do |t|
      t.string :item_name
      t.integer :value
      t.belongs_to :dev
      t.belongs_to :company
    end
  end
end

#creating a table in terminal
# rake db:create_migration NAME=create_freebies

#migrating the table
# rake db:migrate

#seeding the table
# rake db:seed