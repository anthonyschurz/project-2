class CreateHillaryNames < ActiveRecord::Migration
  def change
    create_table :hillarynames do |t|
      t.string :name
      t.timestamps
  end
end
end
