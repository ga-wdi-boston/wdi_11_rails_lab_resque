class ThankYouWorker
	@queue = :default

	def self.perform(note_id, user_id)
		note = Note.find(note_id)
		user = User.find(user_id)
		sleep 1
		Notifier.note_confirmation(note, user).deliver

	end

end