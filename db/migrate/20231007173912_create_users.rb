class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :profile_picture
      t.string :bio
      t.string :location
      t.string :twitter
      t.string :github
      t.string :website

      t.timestamps
    end
  end
end
