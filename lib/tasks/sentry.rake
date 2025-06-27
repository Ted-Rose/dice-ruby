namespace :sentry do
  desc "Test Sentry integration"
  task test: :environment do
    begin
      1 / 0
    rescue ZeroDivisionError => exception
      Sentry.capture_exception(exception)
    end

    Sentry.capture_message("test message")
    puts "Sentry test executed"
  end
end
