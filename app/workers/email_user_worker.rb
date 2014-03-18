class EmailUserWorker
  @queue = :default

  def self.perform(email)
    sleep 1
    Pony.mail(to: email, subject: "You've left a mark!", body: "Thank you for signing our guestbook!")
  end
end
