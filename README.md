UnsaltedHash42 homebrew tap.

Install Pasteback (clipboard history for macOS):

    brew install --cask UnsaltedHash42/tap/pasteback
    xattr -dr com.apple.quarantine /Applications/Pasteback.app

The second command is required for now. Homebrew 7 removed the
`--no-quarantine` flag and quarantines every cask download; the app is
adhoc-signed (not Developer-ID signed or notarized), and macOS runs
quarantined un-notarized apps with restricted capabilities — clipboard reads
and local persistence stop working. Stripping the attribute restores full
function; re-run it after each `brew upgrade`.

Notarization is tracked in
[UnsaltedHash42/PasteBack#1](https://github.com/UnsaltedHash42/PasteBack/issues/1);
once shipped, the plain `brew install` will work.
