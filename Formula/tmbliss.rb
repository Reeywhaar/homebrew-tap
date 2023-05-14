class Tmbliss < Formula
  desc "Exclude development files from Time Machine backups"
  homepage "https://github.com/reeywhaar/tmbliss"

  # url-placeholder
  url "https://github.com/Reeywhaar/tmbliss/releases/download/v0.0.1-beta.7/homebrew.zip"
  # version-placeholder
  version "0.0.1-beta.7"
  # sha256-placeholder
  sha256 "3aa754a0da61aa820711e411fc21b7104c9c9de8ee7128ee074a2aaa2bd4ff58"
  license "MIT"
  revision 2
  depends_on macos: :high_sierra

  service do
    run ["#{opt_bin}/tmbliss", "conf", "--path", "#{etc}/tmbliss.conf.json"]
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
