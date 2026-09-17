UnsaltedHash42 homebrew tap.

Install Pasteback (clipboard history for macOS):

    brew install --cask UnsaltedHash42/tap/pasteback --no-quarantine

The `--no-quarantine` flag is required for now: the app is adhoc-signed
(not Developer-ID signed or notarized), and macOS runs quarantined
un-notarized apps with restricted capabilities (clipboard reads and local
persistence stop working). Notarization is tracked in the main repo; once
shipped, the plain `brew install --cask UnsaltedHash42/tap/pasteback` will
work.

For a direct download of the release zip instead:

    xattr -dr com.apple.quarantine /Applications/Pasteback.app
