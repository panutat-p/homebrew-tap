# frozen_string_literal: true

cask "hyperzen" do
  version "__VERSION__"
  sha256 "__SHA256__"

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
