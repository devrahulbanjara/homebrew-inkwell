cask "inkwell" do
  version "0.2.0"
  sha256 "83d0d410a41728e8ec89c5d7fa2d47083d61218aaee5180dff6e41385c8be7ec"

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
