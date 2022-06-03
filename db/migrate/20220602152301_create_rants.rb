class CreateRants < ActiveRecord::Migration[6.1]
  def change
    create_table :rants do |t|
      t.string :title
      t.string :author, default: "Anonymous"
      t.text :body

      t.timestamps
    end
  end
end
