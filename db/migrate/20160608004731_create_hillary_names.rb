class CreateHillaryNames < ActiveRecord::Migration
  def change
    create_table :hillary_names do |t|
      t.string :hillary_name
      t.timestamps
  end
end
end
