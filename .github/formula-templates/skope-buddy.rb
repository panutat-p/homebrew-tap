class SkopeBuddy < Formula
  desc "Netskope Client re-authentication autofill watcher"
  homepage "https://github.com/panutat-p/skope-buddy"
  version "__VERSION__"
  url "https://github.com/panutat-p/skope-buddy/archive/refs/tags/v#{version}.tar.gz"
  sha256 "__SHA256__"

  depends_on xcode: ["15.0", :build]
  depends_on macos: :sonoma

  def install
    system "swiftc", "-O", "-o", "skope-buddy", "scripts/netskope-autofill.swift"
    bin.install "skope-buddy"
  end

  def caveats
    <<~EOS
      Skope Buddy needs Accessibility permission and a .env with:

        NETSKOPE_EMAIL=
        CORPORATE_EMAIL=
        CORPORATE_PASSWORD=

      Run from a directory that contains that .env (or a parent), so the
      binary can resolve credentials.

      Enable Accessibility in System Settings > Privacy & Security >
      Accessibility for the runner (Terminal) or this binary:

        #{opt_bin}/skope-buddy

      Then start the watcher:

        skope-buddy
    EOS
  end

  test do
    assert_predicate bin/"skope-buddy", :exist?
  end
end
