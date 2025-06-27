# README

Repository for learning OpenTelemetry.

# Setup
- `cp .env.sample .env`
- Update your `.env` file
- `export $(grep -v '^#' .env | xargs)`
- `bundle install`
- `rails sentry:test`
    - See issues [here](https://your_domain.sentry.io/issues/6712524147/?project=4509570753757185&query=is%3Aunresolved&referrer=issue-stream&stream_index=1)
