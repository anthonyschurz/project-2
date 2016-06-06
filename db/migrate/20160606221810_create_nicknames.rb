class CreateNicknames < ActiveRecord::Migration
  def change
    create_table :nicknames do |t|
      t.string :first_name
      t.string :last_name
      t.string :trump_name
      t.timestamps
    end
  end
end
