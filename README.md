# LogStreamDashboard

Phoenix LiveDashboard page for browsing [LogStream](https://github.com/awksedgreep/log_stream) logs.

Provides three tabs:

- **Search** — query logs with level, message, and metadata filters + pagination
- **Stats** — aggregate metrics (blocks, entries, compressed size, index size, timestamps)
- **Live Tail** — real-time streaming of new log entries

## Installation

Add `log_stream_dashboard` to your dependencies:

```elixir
def deps do
  [
    {:log_stream_dashboard, "~> 0.1.0"}
  ]
end
```

## Setup

Add the page to your LiveDashboard router:

```elixir
# lib/my_app_web/router.ex
live_dashboard "/dashboard",
  additional_pages: [
    logs: LogStreamDashboard.Page
  ]
```

That's it. Navigate to `/dashboard/logs` in your browser.

## Requirements

- [LogStream](https://github.com/awksedgreep/log_stream) must be running in your application
- Phoenix LiveDashboard ~> 0.8
- Phoenix LiveView ~> 1.0

## License

MIT
