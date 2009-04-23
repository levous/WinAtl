class Emailer < ActionMailer::Base
    def send_lead(name, email, phone, message = "", sent_at = Time.now)
        # You only need to customize @recipients.
        @recipients = "rzarse@ockhamresearch.com"
        @from = name + " <" + email + ">"
        @subject = "A Web Lead from WinAtl"
        @sent_on = sent_at
        @content_type "text/html"
        @body["email_message"] = message
        @body["email_name"] = name
        @body["email_address"] = email
    end
end
