class CreatePostbacks < ActiveRecord::Migration
  def change
    enable_extension "hstore"

    create_table :postbacks do |t|
      t.string :method
      t.string :url
      t.hstore :params

      t.timestamps null: false
    end
  end
end
