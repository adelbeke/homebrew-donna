cask "donna" do
  arch arm: "arm64"

  version "3.3.1"
  sha256 arm:   "8f4318e67bd46dda8d1dc25a8f1b9d21fe4dfbf4b3a7257ef6c5383b970adc58",
         intel: "8bafe2316d693198e30b718a409354eac5f64e0cfca4932d43190491748d6a27"

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
