class MailWorker
  @queue = :default

  def self.perform(email, body)
    Pony.mail(to: email, subject: "Thanks for posting!", body: body)
  end
end