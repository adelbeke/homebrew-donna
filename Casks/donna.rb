cask "donna" do
  arch arm: "arm64"

  version "2.1.1"
  sha256 arm:   "649b4e591973fc204b1657d419d81126f234f27ae17ff11a91a7c22e32dd65c6",
         intel: "77a9597fb4604765ec69b05ff1d0d0d48c5b138c9bf4f3f1cbbaf44b0405ea2b"

  url "https://github.com/adelbeke/donna/releases/download/v#{version}/Donna-#{version}#{"-arm64" if arch == "arm64"}.dmg"
  name "Donna"
  desc "GitHub PR dashboard — filter, prioritise, track review status"
  homepage "https://github.com/adelbeke/donna"

  auto_updates true
  depends_on :macos

  app "Donna.app"

  zap trash: [
    "~/Library/Application Support/Donna",
    "~/Library/Preferences/com.dbkable.donna.plist",
    "~/Library/Saved Application State/com.dbkable.donna.savedState",
  ]
end
