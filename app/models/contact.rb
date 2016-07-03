class Contact < MailForm::Base
  attribute :title, validate: true
  attribute :first_name,      validate: true
  attribute :last_name,      validate: true
  attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :file,      attachment: true
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "New Enquiry",
      :to => "matthewbradley91@hotmail.co.uk",
      :from => %("#{first_name}" <#{email}>)
    }
  end
end