class Contact < MailForm::Base
  attribute :name, validate: true
  attribute :email
  validates_format_of :email, with: /\A[^@\s]+@[^@\s]+\z/i
  attribute :message

  def headers
    {
      #this is the subject for the email generated, it can be anything you want
      subject: "My Contact Form",
      to: 'chateaudelathibaudiere@gmail.com',
      from: %("#{name}" <#{email}>)
      #the from will display the name entered by the user followed by the email
    }
  end
end
