class HyperZen < Formula
  desc "Native macOS automation toolkit"
  homepage "https://github.com/panutat-p/hyper-zen"
  version "0.1.3"
  url "https://github.com/panutat-p/hyper-zen/releases/download/v#{version}/hyper-zen-#{version}.tar.gz"
  sha256 "c5a7db6eada5f8b6e8a6ffcf9d601156b4e0fc26ff65641758c1ff83f4d8dd0a"

  depends_on macos: :ventura

  def install
    versioned_name = "hyper-zen-v#{version.tr(".", "_")}"
    bin.install "hyper-zen" => versioned_name
  end

  service do
    run [opt_bin/"hyper-zen-v#{f.version.to_s.tr(".", "_")}", "status-icon"]
  end

  def caveats
    versioned_name = "hyper-zen-v#{version.tr(".", "_")}"
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
    versioned_name = "hyper-zen-v#{version.tr(".", "_")}"
    assert_match version.to_s, shell_output("#{bin}/#{versioned_name} version")
  end
end
