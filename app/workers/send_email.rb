class SendEmail
  @queue = :default

  # Redis looks for perform
  def self.perform(email)
    sleep 1
    Pony.mail(to: email, from: 'theparty@partytime.com', subject: 'Thanks for your post', body: 'Thank you for posting in our guest book. Hope you had a great time!')
  end
end
