cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "24.11"
  sha256 arm:   "004a72ad9050fb4148f42c7009a70695b303319ede79b0513e443436cb6e6e79",
         intel: "77de257e4d695098319380f2970f9f0b6aadf307d127bb494189be0a1a752799"

  url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt6.dmg",
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
