- Exporting to Sentry using OpenTelemetry
    - `rake "sentry:test[OTel should be used in this span]"`
    - `rails server -p 8080`
    - Hit http://localhost:8080/rolldice in browser
    - Visit https://your_domain.sentry.io/explore/traces/ to find traces
- Setting up Sentry
    - Following:
        - https://your_domain.sentry.io/insights/projects/tedis-ruby-rails-playground/getting-started/ - better insights
    - `bin/rails generate sentry`
- Exporters
    - Following https://opentelemetry.io/docs/languages/ruby/exporters/
    - `bundle add opentelemetry-sdk opentelemetry-instrumentation-all`
    - Spin up Jaeger:
```
docker run -d --name jaeger \
  -e COLLECTOR_ZIPKIN_HOST_PORT=:9411 \
  -e COLLECTOR_OTLP_ENABLED=true \
  -p 6831:6831/udp \
  -p 6832:6832/udp \
  -p 5778:5778 \
  -p 16686:16686 \
  -p 4317:4317 \
  -p 4318:4318 \
  -p 14250:14250 \
  -p 14268:14268 \
  -p 14269:14269 \
  -p 9411:9411 \
  jaegertracing/all-in-one:latest
```
    - `rails server -p 8080`
    - Hit http://localhost:8080/rolldice in browser
    - Visit http://localhost:16686/search to find traces for Service `dice-ruby`
- Following https://opentelemetry.io/docs/languages/ruby/getting-started/
    - `rails new --api dice-ruby`
    - `rails generate controller dice`
