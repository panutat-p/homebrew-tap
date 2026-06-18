cask "json-young" do
  version "0.0.2"
  sha256 "0b19beeb05a607bd457d093c89c148dfef90a80b7baf5f2cefde6f75089766a6"

  url "https://github.com/panutat-p/json-young/releases/download/v#{version}/JSON_Young.dmg"
  name "JSON Young"
  desc "macOS desktop app for validating and pretty-printing JSON"
  homepage "https://github.com/panutat-p/json-young"

  depends_on macos: ">= :sonoma"

  app "JSON Young.app"

  zap trash: [
    "~/Library/Preferences/com.panutat-p.json-young.plist",
    "~/Library/Application Support/JSON Young",
    "~/Library/Caches/com.panutat-p.json-young",
  ]
end
