class Tmbliss < Formula
  desc "Exclude development files from Time Machine backups"
  homepage "https://github.com/reeywhaar/tmbliss"
  url "https://github.com/Reeywhaar/tmbliss/releases/download/v0.0.1-beta.17/homebrew.zip"
  version "0.0.1-beta.17"
  sha256 "fd54157b9a538078223f82e652c1da65ee8cd4d8b1db0688bb8399d4756f727a"
  license "MIT"

  depends_on macos: :monterey

  service do
    run ["#{opt_bin}/tmbliss", "service", "--path", "#{etc}/tmbliss.conf.json"]
    run_type :interval
    interval 36000 # 10 hours
    log_path "#{var}/log/tmbliss.log"
    error_log_path "#{var}/log/tmbliss.error.log"
  end

  def install
    bin.install "silicon/tmbliss" if Hardware::CPU.arm?
    bin.install "intel/tmbliss" if Hardware::CPU.intel?

    create_conf

    etc.install "tmbliss.conf.json"
  end

  test do
    system "#{bin}/tmbliss", "help"
  end

  private

  def create_conf
    File.open("tmbliss.conf.json", "w") do |f|
      content = <<~TEXT
        {
          "paths": [],
          "dry_run": true,
          "allowlist_glob": [],
          "allowlist_path": [],
          "skip_glob": [],
          "skip_path": []
        }
      TEXT
      f.write(content)
    end
  end
end
