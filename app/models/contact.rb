class Contact < MailForm::Base
  # About You
  attribute :title, validate: true
  attribute :first_name,      validate: true
  attribute :last_name,      validate: true
  attribute :email
  attribute :town,  validate: true
  attribute :postcode, validate: true
  attribute :telephone, validate: true
  validates_format_of :telephone, with:  /\d[0-9]\)*\z/, message: "Numbers only allowed"

  # Stairlift Information
  attribute :condition, validate: true
  attribute :age, validate: true
  attribute :file,      attachment: true
  attribute :nickname,  captcha:  true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "New Enquiry",
      :to => "matthewbradley91@hotmail.co.uk",
      :from => %("#{title} #{first_name} #{last_name}")
    }
  end
end