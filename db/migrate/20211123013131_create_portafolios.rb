class CreatePortafolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portafolios do |t|
      t.string :first_name
      t.string :lat_name
      t.string :email
      t.string :twitter

      t.timestamps
    end
  end
end
