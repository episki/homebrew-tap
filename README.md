# episki Homebrew Tap

```sh
brew install episki/tap/episki          # episki CLI
brew install --cask episki/tap/episki   # episki desktop app
```

The CLI formula is published automatically by the
[episki-cli](https://github.com/episki/episki-cli) release pipeline.

The desktop app cask (`Casks/episki.rb`) follows the latest
[episki/desktop](https://github.com/episki/desktop/releases) release; an hourly
workflow updates its version and checksum. The app also updates itself, so
`brew upgrade` only touches it with `--greedy`.
