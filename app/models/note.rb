class Note < ActiveRecord::Base
  after_commit :send_thanks

  def send_thanks
    Redis.enqueue(EmailWorker, self.email, self.name, self.body)
  end
end
