cask "hyperzen" do
  version "0.0.1"
  sha256 "797fca76e8fb5a4a34ce0ce9750b5641bf466b861475ff003a1cb1bda91ffba2"

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
