class HyperZen < Formula
  desc "Native macOS automation toolkit"
  homepage "https://github.com/panutat-p/hyper-zen"
  version "0.1.0"
  url "https://github.com/panutat-p/hyper-zen/releases/download/v#{version}/hyper-zen-#{version}.tar.gz"
  sha256 "4ad51ee182f78b28f6fd9efa8cb85e4353d6283dd43e148bfe7180cbb250fa30"

  depends_on macos: :ventura

  def install
    bin.install "hyper-zen" => "hyper-zen-#{version}"
  end

  service do
    run [opt_bin/"hyper-zen-#{version}", "status-icon"]
  end

  def caveats
    <<~EOS
      Hyper Zen requires Accessibility permission for Teams presence.

      After each upgrade, enable the newly installed executable in:
      System Settings > Privacy & Security > Accessibility

      Add:
        #{bin}/hyper-zen-#{version}

      Remove the previous Hyper Zen entry, then restart the service:
        brew services restart hyper-zen
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hyper-zen-#{version} version")
  end
end
