cask "inkwell" do
  version "0.1.1"
  sha256 "0398b9947cf876fbf9d09eaea7492c557d881c4fd3c11d7d7a67ac6b2065f00c"

  url "https://github.com/devrahulbanjara/inkwell/releases/download/v#{version}/Inkwell-#{version}.dmg",
      verified: "github.com/devrahulbanjara/inkwell/"
  name "Inkwell"
  desc "Menu bar app that fixes, rewrites or answers text in any app via triggers"
  homepage "https://inkwell.rahuldevbanjara.com.np"

  depends_on macos: :sonoma

  app "Inkwell.app"

  caveats <<~EOS
    Inkwell is ad-hoc signed (not notarized). On first launch macOS may block it:
      System Settings → Privacy & Security → "Open Anyway".
    Then allow Inkwell under Privacy & Security → Accessibility.
  EOS

  zap trash: [
    "~/Library/Application Support/Inkwell",
    "~/Library/Preferences/io.github.inkwell.plist",
  ]
end
