cask "gzyms" do
  version "0.1.1"
  sha256 "c9fef1846bb0502120ac3118ddee145cc84486f7abb0f57b61a5550417617e1e"

  url "https://github.com/zalewskigrzegorz/gzyms/releases/download/v#{version}/Gzyms-#{version}.zip"
  name "Gzyms"
  desc "Menu bar with banners, a usage HUD and a command palette"
  homepage "https://gzyms.dev/"

  livecheck do
    url "https://gzyms.dev/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :tahoe

  app "Gzyms.app"
  binary "#{appdir}/Gzyms.app/Contents/MacOS/gzyms"

  uninstall quit: "dev.gzyms"

  zap trash: [
    "~/.config/gzyms",
    "~/Library/Application Support/Gzyms",
    "~/Library/Caches/dev.gzyms",
    "~/Library/HTTPStorages/dev.gzyms",
    "~/Library/Logs/Gzyms",
    "~/Library/Preferences/dev.gzyms.plist",
  ]
end
