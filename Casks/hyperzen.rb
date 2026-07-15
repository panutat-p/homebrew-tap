# frozen_string_literal: true

cask "hyperzen" do
  version "1.0.0"
  sha256 "803be72f604a38d78d449e963fcf7fc83d7dfe93f78c56725c0bac7cbf353279"

  url "https://github.com/panutat-p/hyper-zen/releases/download/v#{version}/HyperZen.dmg"
  name "HyperZen"
  desc "App that prevents idle sleep and keeps Teams active"
  homepage "https://github.com/panutat-p/hyper-zen"

  depends_on macos: :ventura

  app "HyperZen.app"

  zap trash: [
    "~/Library/Application Support/HyperZen",
    "~/Library/Caches/com.hyperzen.HyperZen",
    "~/Library/Preferences/com.hyperzen.HyperZen.plist",
    "~/Library/Saved Application State/com.hyperzen.HyperZen.savedState",
  ]
end
