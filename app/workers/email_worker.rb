class EmailWorker
  @queue = :default
  def self.perform(user_id)
    @user = User.find(user_id)
    Pony.mail(to: @user.email, subject: "Tnank you for signing a new guestbook!", body: "Welcome!")
  end
end