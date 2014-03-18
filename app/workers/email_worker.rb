class EmailWorker
  @queue = :default

  def self.perform(user_id, message_id)
    sleep 1

    email = User.find(user_id).email
    subject = Message.find(message_id).subject
    body = Message.find(message_id).content

    puts "working on it .... from the email_worker ...."
    #  this is just running this - not yet taking the args from the form for this - but seems to be working on its own
    Pony.mail(to: email, subject: " your message was about: #{subject}", body: "thank you for signing the guest book")
  end

end

