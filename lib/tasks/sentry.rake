namespace :sentry do
  desc "Test Sentry integration. Usage: rake sentry:test[custom_message]"
  task :test, [:message] => :environment do |_task, args|
    message = args[:message] || "test message"

    begin
      1 / 0
    rescue ZeroDivisionError => exception
      Sentry.capture_exception(exception)
    end

    Sentry.capture_message(message)
    puts "Sentry test executed with message: #{message}"
  end
end