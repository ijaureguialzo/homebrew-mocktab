cask "mocktab" do
  version "0.6.1"
  sha256 "3a0a91db0c4882f99172e3838194c4a2c48900f88732a195cc6fef79ed86070c"

  url "https://github.com/Cyzor/tablet-driver/releases/download/v#{version}/MockTab-#{version}.dmg"
  name "MockTab"
  desc "A Mac driver for Wacom drawing tablets that no longer have official support."
  homepage "https://mocktab.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: :ventura

  app "MockTab.app"

  uninstall quit: "com.cyzor.mocktab"

  zap trash: [
    "~/Library/Application Support/com.cyzor.mocktab",
    "~/Library/Preferences/com.cyzor.mocktab.plist",
  ]
end
