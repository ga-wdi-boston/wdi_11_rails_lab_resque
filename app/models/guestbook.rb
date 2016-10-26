class Guestbook < ActiveRecord::Base
  after_commit :send_greeting
  def send_greeting
    email = self.email
    note = self.note
    Resque.enqueue(DemoWorker, email, note)
  end
end
