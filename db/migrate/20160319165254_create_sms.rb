class CreateSms < ActiveRecord::Migration
  def change
    create_table :sms do |t|
      t.string :message
      t.string :recipient
      t.string :sender

      t.timestamps null: false
    end
  end
end
