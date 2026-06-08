class DiffTgz < Formula
  desc "Compute and apply VCDIFF binary patches between tgz archives"
  homepage "https://github.com/Reeywhaar/diff-tgz"
  license "MIT"
  version "0.1.2"

  on_macos do
    on_intel do
      url "https://github.com/Reeywhaar/diff-tgz/releases/download/0.1.2/diff-tgz-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "f5387c568510b91ffecffd9a816b0f13dfb4e9896ad43f8d86860ca028057956"
    end

    on_arm do
      url "https://github.com/Reeywhaar/diff-tgz/releases/download/0.1.2/diff-tgz-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "2b4f817c0cd7b6cf1b8b46da0d7595c4e1985e035309d0a1ef9bad6a98a5845e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Reeywhaar/diff-tgz/releases/download/0.1.2/diff-tgz-0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49facf64ad841dd8e7be31546f6ed940be6ee4e520b0b1a942981f368f2c6793"
    end

    on_arm do
      url "https://github.com/Reeywhaar/diff-tgz/releases/download/0.1.2/diff-tgz-0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8a2402ed544f4657d6f3e673635c301dcad24314d5ee4e26ad62f1b38b2eae00"
    end
  end

  def install
    bin.install "diff-tgz"
  end

  test do
    system "#{bin}/diff-tgz", "--help"
  end
end
