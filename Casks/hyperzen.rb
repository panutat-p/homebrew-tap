cask "hyperzen" do
  version "0.0.4"
  sha256 "4e16919f6be80abb4faa8b8e4c7726564c57ace35cab27eb289de243cb9e5d1a"

  url "https://github.com/panutat-p/hyper-zen/releases/download/v#{version}/HyperZen.dmg"
  name "HyperZen"
  desc "Lightweight macOS menu bar app that keeps your Mac awake"
  homepage "https://github.com/panutat-p/hyper-zen"

  depends_on macos: :ventura

  app "HyperZen.app"

  zap trash: [
    "~/Library/Preferences/com.hyperzen.HyperZen.plist",
    "~/Library/Application Support/HyperZen",
    "~/Library/Caches/com.hyperzen.HyperZen",
  ]
end
