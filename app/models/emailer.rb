class Emailer < ActionMailer::Base
    def send_lead(email_params, sent_at = Time.now)
        # You only need to customize @recipients.
        @recipients = "contact@website.co.uk"
        @from = email_params[:name] + " <" + email_params[:email] + ">"
        @subject = "A Web Lead from WinAtl"
        @sent_on = sent_at
        @content_type "text/html"
        @body["email_message"] = email_params[:message]
        @body["email_name"] = email_params[:name]
        @body["email_address"] = email_params[:email]
    end
end
