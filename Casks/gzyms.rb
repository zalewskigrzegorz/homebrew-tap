cask "gzyms" do
  version "0.0.5"
  sha256 "6716f962aeb07111396bbae6c4c4aee2c31c8760184a865a3b5c4c42bd1ad483"

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
