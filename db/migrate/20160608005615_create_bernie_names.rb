class CreateBernieNames < ActiveRecord::Migration
  def change
      create_table :bernienames do |t|
        t.string :name
        t.timestamps
  end
end
end
