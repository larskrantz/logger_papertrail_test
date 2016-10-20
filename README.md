# LoggerPapertrailTest

Simple app to test your papertrail-app

## Running

1. Clone.
2. Get your papertrail host and port from [System setup](https://papertrailapp.com/systems/setup).
The papertrail url is `papertrail://<host from system setup>:<port from system setup>/testing` (or replace testing with a system name of your choosing).
3. Start iex your url from above like `PAPERTRAIL_URL=<url from above> iex -S mix`
4. In iex, run `iex(1)> LoggerPapertrailTest.test`
5. It should log three messages to console, and printing the papertrailapp-url where you should find the warn and error-messages (level for `logger_papertrail_backend` is set to `:warn` in config.exs, so the info-message should not be seen)
6. Expected output:
```
Oct 20 16:49:51 testing LoggerPapertrailTest:   Warn-logging
Oct 20 16:49:51 testing LoggerPapertrailTest:   Error-logging
```
