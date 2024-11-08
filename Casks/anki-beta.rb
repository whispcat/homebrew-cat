cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "24.11rc1"
  sha256 arm:   "692c09a50e69d30683237ccc633dd3491efe7f31f708d539afa601998241ea2d",
         intel: "eda302a05439a80bcdbf913a0708df621c88b75261d2a1292b6277e0d73112a5"

  url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version.sub("rc1", "")}-mac-#{arch}-qt6.dmg",
      verified: "github.com/ankitects/anki/"
  name "Anki newest version possible, including beta and rc"
  desc "Memory training application"
  homepage "https://apps.ankiweb.net/"

  livecheck do
    url :url
    strategy :github_releases
  end

  depends_on macos: ">= :high_sierra"

  app "Anki.app"

  zap trash: "~/Library/Application Support/Anki*"
end
