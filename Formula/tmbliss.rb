class Tmbliss < Formula
  desc "Exclude development files from Time Machine backups"
  homepage "https://github.com/reeywhaar/tmbliss"

  # url-placeholder
  url "https://github.com/Reeywhaar/tmbliss/releases/download/v0.0.1-beta.13/homebrew.zip"
  # version-placeholder
  version "0.0.1-beta.13"
  # sha256-placeholder
  sha256 "ad43b7f500847903a04d5db850767c1af94cebffa232cea058735d97faefe892"
  license "MIT"

  depends_on macos: :high_sierra

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
