class CreateMailSenders < ActiveRecord::Migration[6.0]
  def change
    create_table :mail_senders do |t|
      t.string :csv_file

      t.timestamps
    end
  end
end
