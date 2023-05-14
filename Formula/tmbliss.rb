class Tmbliss < Formula
  desc "Exclude development files from Time Machine backups"
  homepage "https://github.com/reeywhaar/tmbliss"

  url "https://github.com/Reeywhaar/tmbliss/releases/download/v0.0.1-beta.6/homebrew.zip"
  version "0.0.1-beta.6"
  sha256 "6ddf04e4aec5d57b2951747be0185fd2b2f5deb63b88dfb03a4cf955ebd3ef4b"
  license "MIT"
  depends_on macos: :high_sierra

  service do
    run ["#{opt_bin}/tmbliss", "conf", "--path", "#{etc}/tmbliss.conf"]
    run_type :interval
    interval 36000 # 10 hours
    log_path "#{var}/log/tmbliss.log"
    error_log_path "#{var}/log/tmbliss.error.log"
  end

  def install
    bin.install "silicon/tmbliss" if Hardware::CPU.arm?
    bin.install "intel/tmbliss" if Hardware::CPU.intel?

    create_conf

    etc.install "tmbliss.conf"
  end

  test do
    system "#{bin}/tmbliss", "help"
  end

  private

  def create_conf
    File.open("tmbliss.conf", "w") do |f|
      content = <<~TEXT
        {
            "paths": [],
            "dry_run": true,
            "allow_glob": [],
            "allow_path": [],
            "skip_glob": [],
            "skip_path": []
        }
      TEXT
      f.write(content)
    end
  end
end
