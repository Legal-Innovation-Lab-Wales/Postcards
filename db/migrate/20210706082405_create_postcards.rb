class CreatePostcards < ActiveRecord::Migration[6.1]
  def change
    create_table :postcards do |t|
      t.string :title
      t.text :body
      t.string :from

      t.timestamps
    end
  end
end
