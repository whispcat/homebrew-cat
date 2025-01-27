cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "25.01rc1"
  sha256 arm:   "c5972dfa06c41ae04a3567b5dadacc66f948b29fec5cffb161618bcf427ca2fc",
         intel: "556d08b7c6c51dfa50879329d5e624cdd5efbef7753f57e7f4d383483c5d521d"

  url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version.sub("rc1", "")}-mac-#{arch}-qt6.dmg",
      verified: "github.com/ankitects/anki/"
  name "Anki Newest"
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
