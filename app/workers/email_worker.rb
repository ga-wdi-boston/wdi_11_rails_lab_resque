class EmailWorker
  @queue = :default
  def self.perform(user)
    @user = user
    Pony.mail(to: @user.email, subject: "Tnank you for signing the guestbook!", body: "Welcome!")
  end
end