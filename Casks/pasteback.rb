cask "pasteback" do
  version "1.0.0"
  sha256 "ad67a1b6828ce139018fe94a9e72359f510326984612cc2f07a954bf1345d85f"

  url "https://github.com/UnsaltedHash42/PasteBack/releases/download/v#{version}/Pasteback-#{version}.zip"
  name "Pasteback"
  desc "Local-first, encrypted clipboard history for the menu bar"
  homepage "https://github.com/UnsaltedHash42/PasteBack"

  depends_on macos: :sonoma

  app "Pasteback.app"

  zap trash: [
    "~/Library/Application Support/Pasteback",
    "~/Library/Preferences/com.pasteback.app.plist",
  ]
end
