cask "hyperzen" do
  version "1.0.0"
  sha256 "PLACEHOLDER_SHA256"

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
