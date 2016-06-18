class FeedbackForm < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :file,      :attachment => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Feedback Received",
      :to => "matthewbradley91@hotmail.co.uk",
      :from => %("#{name}" <#{email}>)
    }
  end
end