cask "donna" do
  arch arm: "arm64"

  version "2.1.0"
  sha256 arm:   "53de114f4ae36c17b7416bafa4790a953e616fd9157f64721bceb18b9ee5be07",
         intel: "bdd3575465ebf2cb04453fe7c7789c9ad64884325b566f2aab497c1fb24687dd"

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
