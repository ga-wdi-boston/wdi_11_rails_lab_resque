class EmailWorker
  @queue = :default

  def self.perform(arg1)
      Pony.mail(to: arg1,
        subject: "You sent a note!")
  end
end
