cask "anki-beta" do
  arch arm: "apple", intel: "intel"

  version "24.10-rc1"
  sha256 arm:   "7a545c3976b2aa9228f740597ea856bfca709a72f8a554afd4427e5380550ba8",
         intel: "61346181ccf4a15643c8142f61ec01a4c56285d2cd654f2c489307ae0384d0da"

  url "https://github.com/ankitects/anki/releases/download/#{version.no_hyphens}/anki-#{version.major_minor}-mac-#{arch}-qt6.dmg",
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
