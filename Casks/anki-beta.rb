cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "25.05b1"
  sha256 arm:   "679aa4e73bebd13e3b4c06f743fe33c34c1396a87be2bfa982413846a1726634",
         intel: "3bc9dd9b5121c9207dda8c08249d090eaa9897b2fc342d32ef76b03a33cac6b1"

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
