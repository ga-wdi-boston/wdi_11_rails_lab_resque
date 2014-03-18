class EmailWorker
  @queue = :default

  def self.perform(email, note)
    Pony.mail(to: email, subject: 'Thanks for your post!', body: note)
  end
end
