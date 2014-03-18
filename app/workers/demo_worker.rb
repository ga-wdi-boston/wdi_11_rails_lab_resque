module DemoWorker
  @queue = :default
  def self.perform(email, note)
    Pony.mail(to: email, subject: note)
  end
end
