require 'csv'
class MailSender < ApplicationRecord
  validates :csv_file, presence: true

  def self.send_password_to_emails(file)
    CSV.foreach(file.path, headers: true) do |row|
      name = row[0]
      username = row[1]
      password = row[2]
      email = row[4]
    end
  end
end
