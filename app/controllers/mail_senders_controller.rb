class MailSendersController < ApplicationController
  def new
    @mail_sender = MailSender.new
  end

  def create
    MailSender.send_password_to_emails(mail_sender_params[:csv_file])

    count_rows = CSV.read(mail_sender_params[:csv_file].path, headers: true).count

    redirect_to root_path, notice: "Mail successfully sent to #{helpers.pluralize(count_rows, 'student')}."
  end

  private

    def mail_sender_params
      params.require(:mail_sender).permit(:csv_file)
    end
end
