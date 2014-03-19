class Notifier < ActionMailer::Base

  def note_confirm(note, user)
    @note = note
    @user = user

    Pony.mail(to: user.email,
        from: "thx@elisabethwaltz.com",
        subject: "hey, cool note, guy",
        body: "cool note. thanks, pal!"
        )
  end
end
end
