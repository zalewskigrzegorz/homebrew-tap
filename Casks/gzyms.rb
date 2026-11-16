cask "gzyms" do
  version "0.2.1"
  sha256 "0ea78762fab6819a6e29fa5b5d6165ac66a4aab4e6917cecd16646f7ea4dcdfc"

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
