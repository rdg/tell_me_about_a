class AddUserToMoments < ActiveRecord::Migration[6.0]
  def change
    add_belongs_to :moments, :user, index: true
  end
end
