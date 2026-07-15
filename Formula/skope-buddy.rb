class SkopeBuddy < Formula
  desc "Netskope Client re-authentication autofill watcher"
  homepage "https://github.com/panutat-p/skope-buddy"
  version "0.1.0"
  url "https://github.com/panutat-p/skope-buddy/archive/5d9224d2ecf0c8f750334123e6ba54a85e6e7e1b.tar.gz"
  sha256 "6d5e965142747ddfc4a777d8e75bff7716884eb5b6e8276f7332da22fbe6b1f5"

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
