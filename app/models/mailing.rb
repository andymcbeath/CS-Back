class Mailing < MailForm::Base
  attribute :firstName validate:true
  attribute :lastName validate:true
  attribute :email validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  def headers
    { to: "caughtsteelinband@gmail.com",
    subject: "Railscoder Contact Form",
    from: "admin@caughtsteelin.com",
    reply_to: %("#{name}" <#{email}>)  
    }
  end
end
