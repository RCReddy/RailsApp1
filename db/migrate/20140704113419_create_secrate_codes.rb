class CreateSecrateCodes < ActiveRecord::Migration
  def change
    create_table :secrate_codes do |t|
      t.string :secrate_code
      t.references :user, :null => true

      t.timestamps
    end
    add_index :secrate_codes, :user_id
  end
end
