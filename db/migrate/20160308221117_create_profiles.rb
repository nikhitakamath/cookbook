class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :start_date
      t.string :team_captain
      t.string :address
      t.string :working_status
      t.string :vip_status
      t.string :title
      t.string :lyft
      t.string :pam
      t.string :endzone

      t.timestamps null: false
    end
  end
end
