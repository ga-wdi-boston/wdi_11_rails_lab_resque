class MailWorker
  @queue = :default

  def self.perform(guest_id)
    guest = Guest.find(guest_id)
    Pony.mail(to: "jordan.morano@gmail.com", subject: "#{guest.name} has arrived to the party!", body: "And this is what they have to say.. #{guest.note}. Their email is #{guest.email}.")
  end
end
