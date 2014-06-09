class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :post
      t.string :comment

      t.timestamps
    end
  end
end
