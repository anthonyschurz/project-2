class CreateBernieNames < ActiveRecord::Migration
  def change
      create_table :bernie_names do |t|
        t.string :bernie_name
        t.timestamps
  end
end
end
