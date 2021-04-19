class CreateJobPostings < ActiveRecord::Migration[6.1]
  def change
    create_table :jobpostings do |t|
      t.string :company
      t.string :title
      t.string :location
      t.text :desc

      t.timestamps
    end
  end
end
