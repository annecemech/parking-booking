class CreateParkingSpaces < ActiveRecord::Migration[6.0]
  def change
    create_table :parking_spaces do |t|

      t.timestamps
    end
  end
end
