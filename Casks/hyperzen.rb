cask "hyperzen" do
  version "0.0.2"
  sha256 "841435e16b2ca726f082fadee89f91e9b6591d85f2fdd015049ad2239e53ec85"

  url "https://github.com/panutat-p/hyper-zen/releases/download/v#{version}/HyperZen.dmg"
  name "HyperZen"
  desc "Lightweight macOS menu bar app that keeps your Mac awake"
  homepage "https://github.com/panutat-p/hyper-zen"

  depends_on macos: ">= :ventura"

  app "HyperZen.app"

  zap trash: [
    "~/Library/Preferences/com.hyperzen.HyperZen.plist",
    "~/Library/Application Support/HyperZen",
    "~/Library/Caches/com.hyperzen.HyperZen",
  ]
end
