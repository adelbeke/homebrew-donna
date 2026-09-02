cask "donna" do
  arch arm: "arm64"

  version "3.3.0"
  sha256 arm:   "9cf63b5d8bc5a25fe228938053b11aa137d93808a1d893cf10783f68249db6ad",
         intel: "0dad0a45278b634a04c04079acc6640d29817f90140d3642ac9d09c20208fe0f"

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
