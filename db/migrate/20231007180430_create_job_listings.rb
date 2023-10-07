class CreateJobListings < ActiveRecord::Migration[7.0]
  def change
    create_table :job_listings do |t|
      t.references :user, foreign_key: true

      t.string :title
      t.text :description
      t.string :location
      t.decimal :salary
      t.string :job_type
      t.string :industry

      t.timestamps
    end
  end
end
