class SendMailController < ApplicationController
  def submit
    Emailer::send_lead(params[:email])
  end
end