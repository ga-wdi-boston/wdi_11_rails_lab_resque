module EmailWorker
  @queue = :default

  def self.perform(email, name, body)
    Pony.mail(to: email, from: 'pony@generalassemb.ly', subject: "#{name}, thank you for signing our guestbook!", body: "You wrote: #{body}")
  end
end
