class CreateMailbuilders < ActiveRecord::Migration
  def change
    create_table :mailbuilders do |t|

      t.timestamps
    end
  end
end
