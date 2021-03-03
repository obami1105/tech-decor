class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table   :tweets do |t|
      t.string     :name,null: false
      t.string     :image
      t.text       :text
      t.references :user,null: false, foreign_key: :true
      t.timestamps
    end
  end
end
