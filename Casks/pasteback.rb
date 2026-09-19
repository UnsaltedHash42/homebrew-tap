cask "pasteback" do
  version "1.1.0"
  sha256 "9a54fef92d69d261c3e648363c3281652ddc0630b09fe48ed43f1a15ffeb0f2c"

  url "https://github.com/UnsaltedHash42/PasteBack/releases/download/v#{version}/Pasteback-#{version}.zip"
  name "Pasteback"
  desc "Local-first, encrypted clipboard history for the menu bar"
  homepage "https://github.com/UnsaltedHash42/PasteBack"

  depends_on macos: :sonoma

  app "Pasteback.app"
  binary "Pasteback.app/Contents/MacOS/pasteback-cli", target: "pasteback"

  zap trash: [
    "~/Library/Application Support/Pasteback",
    "~/Library/Preferences/com.pasteback.app.plist",
  ]
end
