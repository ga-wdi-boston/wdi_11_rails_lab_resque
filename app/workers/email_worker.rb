class EmailWorker
  @queue = :default

  def self.send_post_email(email_address)
  	email_to = email_address
  	subject = 'Thanks for your post!'
  	body = 'Hey, dog! Thanks so much for leaving an awesome message on our guestbook.'
  	Pony.mail(to: email_to, subject: subject, body: body, from: 'oldmcdonald@hadafarm.com')
  end


  def self.perform(email)
  	send_post_email(email)
  end


end
