class CreateCommits < ActiveRecord::Migration
  def change
    create_table :commits do |t|
      t.string :sha

      t.timestamps
    end
  end
end
