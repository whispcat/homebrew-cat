cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "24.10rc2"
  sha256 arm:   "15c5fe574202149c473ea7be61e1953c83e544230db84ef22234a35749a6176f",
         intel: "eb8e5fe99bafc14c082cbf7549dc6eb10dae823c76b45476aa3ef129efc7b94f"

  url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version.sub("rc2", "")}-mac-#{arch}-qt6.dmg",
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
