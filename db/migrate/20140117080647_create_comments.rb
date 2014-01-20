class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment_text
      t.references :member
      t.references :place

      t.timestamps
    end
    add_index :comments, :member_id
    add_index :comments, :place_id
  end
end
