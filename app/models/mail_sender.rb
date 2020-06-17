class MailSender < ApplicationRecord
  validates :csv_file, presence: true
end
