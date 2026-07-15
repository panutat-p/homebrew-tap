# frozen_string_literal: true

cask "hyperzen" do
  version "1.0.1"
  sha256 "3fedbbf633444ef3a768743928e0c6e4b338258216081c3c0b015355e66c396e"

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
