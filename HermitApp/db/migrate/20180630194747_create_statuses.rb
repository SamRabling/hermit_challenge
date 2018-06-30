class CreateStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :statuses do |t|
      t.references :user, foreign_key: true
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
