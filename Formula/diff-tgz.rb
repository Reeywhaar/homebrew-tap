class DiffTgz < Formula
  desc "Compute and apply VCDIFF binary patches between tgz archives"
  homepage "https://github.com/Reeywhaar/diff-tgz"
  license "MIT"
  version "0.1.1"

  on_macos do
    on_intel do
      url "https://github.com/Reeywhaar/diff-tgz/releases/download/0.1.1/diff-tgz-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "87c5766eccd9dd9ddceb5373a796fac972401cec5c684bffd12ee00ea2e8ed9c"
    end

    on_arm do
      url "https://github.com/Reeywhaar/diff-tgz/releases/download/0.1.1/diff-tgz-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "810adf0b6930163b2af3c56855aad220a570f33765b2443589261f3f47b07d7a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Reeywhaar/diff-tgz/releases/download/0.1.1/diff-tgz-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d86c2cbd1c0d8d7c3cb45312dbd8af5bde95c0155dde2bb70c4826109ba402d3"
    end

    on_arm do
      url "https://github.com/Reeywhaar/diff-tgz/releases/download/0.1.1/diff-tgz-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fb71301aa08122b99234cfd3e004588068d1673d1b4c63a0bfed93f84ee79fb2"
    end
  end

  def install
    bin.install "diff-tgz"
  end

  test do
    system "#{bin}/diff-tgz", "--help"
  end
end
