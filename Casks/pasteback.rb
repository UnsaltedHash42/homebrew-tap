cask "pasteback" do
  version "1.0.1"
  sha256 "4b968df54795cec559e869bdb055d6c824168e8330393698dd577a529a41ed33"

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
