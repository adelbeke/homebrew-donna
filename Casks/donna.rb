cask "donna" do
  arch arm: "arm64"

  version "2.3.1"
  sha256 arm:   "d602bafc2625f208ee944220c40e6aed2487c7581606a54c612a5d87b7d15760",
         intel: "c0a13d268cb43682c5b59ec09ccbacebee5efa93fc3068241d55c674f1f53b6a"

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
