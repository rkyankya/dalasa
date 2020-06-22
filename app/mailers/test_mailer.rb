class TestMailer < SchoolMailer
  def hello
    mail(
      :subject => 'Hello from Postmark',
      :to  => 'admin@dependable.co.ug',
      :from => 'sender@example.org',
      :html_body => '<strong>Hello</strong> dear Postmark user.',
      :track_opens => 'true')
  end
end
