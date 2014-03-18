class ThankPoster
  @queue = :default

  def self.perform(user_email)
    puts "Sending email to #{user_email}"
    Pony.mail(to: user_email, from: "Prescott@pscott.com",
      subject: "Thanks!", body: "Thanks for posting on my guestbook!")
  end
end
