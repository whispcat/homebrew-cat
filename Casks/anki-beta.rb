cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "25.02rc1"
  sha256 arm:   "c04d1795906153de9c88d0fde335d42426a979bd71358f0f25547caacca5d066",
         intel: "5e1c540a6b996f496de200d41d9f7a866b2d3f4ec6dde3de06a8a92276ccf1f5"

  url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version.sub("rc1", "")}-mac-#{arch}-qt6.dmg",
      verified: "github.com/ankitects/anki/"
  name "Anki Beta"
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
