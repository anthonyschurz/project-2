class CreatesAdjectivesTable < ActiveRecord::Migration
  def change
    create_table :adjectives do |t|
      t.string :letter 
      t.string :adjective
      t.timestamps
  end
end
end
