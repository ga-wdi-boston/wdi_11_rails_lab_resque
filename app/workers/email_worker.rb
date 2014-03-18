module EmailWorker
  @queue = :default

  def self.perform
    # sleep 1
    # puts "This job just waits one second. Code here is executed outside of Rails"
    # puts "If the worker has access to the environment variables,"
    # puts "it can access anything a Rake task could."
  end
end
