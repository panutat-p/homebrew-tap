class HyperZen < Formula
  desc "Native macOS automation toolkit"
  homepage "https://github.com/panutat-p/hyper-zen"
  version "0.1.4"
  url "https://github.com/panutat-p/hyper-zen/releases/download/v#{version}/hyper-zen-#{version}.tar.gz"
  sha256 "eeac4b63e8332c46584098d05e33bf13019766d21566b3742fb6c3ad91802870"

  depends_on macos: :ventura

  def install
    versioned_name = "hyper-zen-v#{version.tr(".", "-")}"
    bin.install "hyper-zen" => versioned_name
  end

  service do
    run [opt_bin/"hyper-zen-v#{f.version.to_s.tr(".", "-")}", "status-icon"]
  end

  def caveats
    versioned_name = "hyper-zen-v#{version.tr(".", "-")}"
    <<~EOS
      Hyper Zen requires Accessibility permission for Teams presence.

      After each upgrade, enable the newly installed executable in:
      System Settings > Privacy & Security > Accessibility

      Add:
        #{bin}/#{versioned_name}

      Remove the previous Hyper Zen entry, then restart the service:
        brew services restart hyper-zen
    EOS
  end

  test do
    versioned_name = "hyper-zen-v#{version.tr(".", "-")}"
    assert_match version.to_s, shell_output("#{bin}/#{versioned_name} version")
  end
end
