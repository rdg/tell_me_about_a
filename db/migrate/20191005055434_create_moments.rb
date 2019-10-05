class CreateMoments < ActiveRecord::Migration[6.0]
  def change
    create_table :moments do |t|
      t.string :prompt

      t.timestamps
    end
  end
end
