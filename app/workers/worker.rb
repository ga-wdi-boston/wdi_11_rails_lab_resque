class Worker
      @queue = :default

      def self.perform(email)
        Pony.mail(to: email, subject: "Thanks!", body: "You signed the guestbook!")

      end
end