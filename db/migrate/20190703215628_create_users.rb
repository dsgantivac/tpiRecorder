class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.integer :age
      t.string :sex
      t.float :weight
      t.string :waist_perimeter
      t.string :float
      t.float :height
      t.float :systole
      t.float :diastole
      t.float :heart_rate
      t.float :spo2

      t.timestamps
    end
  end
end
