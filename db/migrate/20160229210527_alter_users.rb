class AlterUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.remove :name, :email
      t.string :username

    end

  end
end
