require 'opentelemetry/sdk'
require 'opentelemetry/instrumentation/all'
require 'opentelemetry-exporter-otlp'
OpenTelemetry::SDK.configure do |c|
  c.service_name = 'dice-ruby'
  c.use_all() # enables all instrumentation!
  c.add_span_processor(Sentry::OpenTelemetry::SpanProcessor.instance)
end

OpenTelemetry.propagation = Sentry::OpenTelemetry::Propagator.new
