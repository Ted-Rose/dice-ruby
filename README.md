# README

Repository for learning OpenTelemetry.

# Setup
- `cp .env.sample .env`
- Update your `.env` file
- `export $(grep -v '^#' .env | xargs)`
- `bundle install`

# Testing Sentry with OpenTelemetry
- `rake "sentry:test[OTel should be used in this span]"`
    - See issues [here](https://your_domain.sentry.io/issues/6712524147/?project=4509570753757185&query=is%3Aunresolved&referrer=issue-stream&stream_index=1)
- `rails server -p 8080`
    - Hit http://localhost:8080/rolldice in browser
    - Visit https://your_domain.sentry.io/explore/traces/ to find traces
