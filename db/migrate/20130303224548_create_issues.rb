class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string      :status, default: 'not_started'
      t.string      :issue_type, default: 'feature'
      t.decimal     :estimated_hours
      t.decimal     :worked_hours, default: 0
      t.integer     :number
      t.references  :repository

      t.timestamps
    end
    add_index :issues, :repository_id
  end
end