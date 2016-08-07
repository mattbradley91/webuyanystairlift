class Feedback < MailForm::Base
  attribute :title, validate: true
  attribute :first_name,      validate: true
  attribute :last_name,      validate: true
  attribute :email
  attribute :town
  attribute :postcode
  attribute :message, validate: true
  attribute :rating, validate: true
  attribute :nickname,  captcha: true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Feedback Received",
      :to => "info@webuyanystairlift.org.uk",
      :from => %("#{title} #{first_name} #{last_name}")
    }
  end
end
