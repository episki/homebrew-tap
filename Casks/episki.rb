# The episki desktop app. Kept up to date by .github/workflows/update-desktop-cask.yml,
# which rewrites `version` and `sha256` when episki/desktop publishes a release.
# The CLI is the formula of the same name (Formula/episki.rb, published by
# GoReleaser), so the app installs with `brew install --cask episki/tap/episki`.
cask "episki" do
  version "1.0.1"
  sha256 "e50edd5b033cdd1dacaf353ae27ace3c798eda841cf819aa571899675546b3fa"

  url "https://github.com/episki/desktop/releases/download/v#{version}/episki-mac.dmg"
  name "episki"
  desc "Desktop app for the episki GRC platform"
  homepage "https://episki.com/download"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself (electron-updater), so `brew upgrade` leaves it alone
  # unless run with --greedy.
  auto_updates true
  depends_on macos: :ventura

  app "episki.app"

  zap trash: [
    "~/Library/Application Support/episki",
    "~/Library/Caches/com.episki.desktop.ShipIt",
    "~/Library/Logs/episki",
    "~/Library/Preferences/com.episki.desktop.plist",
    "~/Library/Saved Application State/com.episki.desktop.savedState",
  ]
end
