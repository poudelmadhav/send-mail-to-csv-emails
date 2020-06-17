class MailSendersController < ApplicationController
  # before_action :set_mail_sender, only: [:show, :edit, :update, :destroy]

  # GET /mail_senders
  # GET /mail_senders.json
  # def index
  #   @mail_senders = MailSender.all
  # end

  # GET /mail_senders/1
  # GET /mail_senders/1.json
  # def show
  # end

  # GET /mail_senders/new
  def new
    @mail_sender = MailSender.new
  end

  # GET /mail_senders/1/edit
  # def edit
  # end

  # POST /mail_senders
  # POST /mail_senders.json
  def create
    @mail_sender = MailSender.new(mail_sender_params)

    # respond_to do |format|
    #   if @mail_sender.save
    #     format.html { redirect_to @mail_sender, notice: 'Mail sender was successfully created.' }
    #     format.json { render :show, status: :created, location: @mail_sender }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @mail_sender.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /mail_senders/1
  # PATCH/PUT /mail_senders/1.json
  # def update
  #   respond_to do |format|
  #     if @mail_sender.update(mail_sender_params)
  #       format.html { redirect_to @mail_sender, notice: 'Mail sender was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @mail_sender }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @mail_sender.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /mail_senders/1
  # DELETE /mail_senders/1.json
  # def destroy
  #   @mail_sender.destroy
  #   respond_to do |format|
  #     format.html { redirect_to mail_senders_url, notice: 'Mail sender was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_mail_sender
    #   @mail_sender = MailSender.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def mail_sender_params
      params.require(:mail_sender).permit(:csv_file)
    end
end
