cask "inkwell" do
  version "0.1.0"
  sha256 "a52d11e6761e910d2629ef0fdb45d2c0d61c28e6a6328cabd2524da0baeb6b9e"

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
