class DiffTgz < Formula
  desc "Compute and apply VCDIFF binary patches between tgz archives"
  homepage "https://github.com/Reeywhaar/diff-tgz"
  license "MIT"
  version "0.1.3"

  on_macos do
    on_intel do
      url "https://github.com/Reeywhaar/diff-tgz/releases/download/0.1.3/diff-tgz-x86_64-apple-darwin.tar.gz"
      sha256 "4d68744793e03e2744de1be3ccc8f35978a1b292c8e31e6f9a821f4ea2480979"
    end

    on_arm do
      url "https://github.com/Reeywhaar/diff-tgz/releases/download/0.1.3/diff-tgz-aarch64-apple-darwin.tar.gz"
      sha256 "287967f483a401e29e761ad2c5865ab9efe62c005a6cf97191e83ce8feb986f2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Reeywhaar/diff-tgz/releases/download/0.1.3/diff-tgz-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c323da0bc95b5efa23fa879dc8a2a557326532c2d2dab2df06b451d8b8366b9"
    end

    on_arm do
      url "https://github.com/Reeywhaar/diff-tgz/releases/download/0.1.3/diff-tgz-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f03552f66cf580c064a3b73dfd298c928ed9d7c2d5c60d548ecb4fe856e0ff85"
    end
  end

  def install
    bin.install "diff-tgz"
  end

  test do
    system "#{bin}/diff-tgz", "--help"
  end
end
