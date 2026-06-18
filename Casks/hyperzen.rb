cask "hyperzen" do
  version "0.0.3"
  sha256 "30b4dd971f72db078f526024c09149c975307b6823cb55e6695dde876c374655"

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
