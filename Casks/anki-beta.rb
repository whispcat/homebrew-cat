cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "25.06b1"
  sha256 arm:   "64785159b50a62aa823c70d63f0ddb3abc3385ffcea0512ee5f055901d02d168",
         intel: "5393305e198a1c3180c25e2ec355536a39664c82a4a2a0c4ec7c3399a06b95c8"

  url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version.sub("b1", "")}-mac-#{arch}-qt6.dmg",
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
