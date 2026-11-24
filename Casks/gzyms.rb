cask "gzyms" do
  version "0.3.0"
  sha256 "b60cadfe9ad58c7a363422f9497b18ea4895e3f27fbd1dbaf1484dffe427dee6"

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
