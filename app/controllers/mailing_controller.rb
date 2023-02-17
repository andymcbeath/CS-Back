class MailingController < ApplicationController
  def new
    @mailing = Mailing.new
  end

  def create
    @mailing = Mailing.new(params[:contact])
    @contact.request = request
    if @mailing.deliver
      redirect_to action: :sent
    else
      flash.now[:error] = "Could not send message"
      render :new, status: :unprocessable_entity
    end
  end

  def sent
  end
end
