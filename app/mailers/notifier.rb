class Notifier < ActionMailer::Base

  def note_confirmation(note, user)
  	@note = note
  	@user = user

  	Pony.mail(to: user.email,
        from: "info@guestbook.com",
        subject: "Thanks for your note!",
        body: "Hey there! Just wanted to thank you for leaving a note in the Guestbook."
        )
  end
end
