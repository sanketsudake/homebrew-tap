# Template for the Homebrew cask. The release workflow substitutes 1.0.0,
# CINES-1.0.0-macos-universal.dmg and 20fc7b9050670673042eecd615790bb3e57f64b949d71e2fe45102a4314ab649 and pushes the result to sanketsudake/homebrew-tap.
#
# One url rather than on_intel/on_arm blocks, because the disk image holds a
# universal binary.
cask "cines" do
  version "1.0.0"
  sha256 "20fc7b9050670673042eecd615790bb3e57f64b949d71e2fe45102a4314ab649"

  url "https://github.com/sanketsudake/CHESS-in-Qt/releases/download/v#{version}/CINES-1.0.0-macos-universal.dmg"
  name "CINES"
  desc "Two player chess"
  homepage "https://github.com/sanketsudake/CHESS-in-Qt"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "CINES.app"

  # The disk image is not signed with an Apple Developer ID, so macOS files it
  # under quarantine and refuses to open it. Homebrew installs are explicit
  # enough to clear that; a direct download is not, which is why the release
  # notes tell those users to right-click and Open instead.
  postflight do
    if system_command("/usr/bin/xattr", args: ["-h"]).exit_status == 0
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/CINES.app"]
    end
  end

  zap trash: [
    "~/Library/Preferences/io.github.sanketsudake.cines.plist",
    "~/Library/Saved Application State/io.github.sanketsudake.cines.savedState",
  ]
end