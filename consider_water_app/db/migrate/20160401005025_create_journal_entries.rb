class CreateJournalEntries < ActiveRecord::Migration
  def change
    create_table :journal_entries do |t|
      t.text :entry_title
      t.text :entry_main
      t.timestamps null:false
      t.belongs_to(:user, foreign_key: true)
    end
  end
end
