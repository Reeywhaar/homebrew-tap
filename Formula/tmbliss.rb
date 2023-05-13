class Tmbliss < Formula
	desc "Exclude development files from Time Machine backups"
	homepage "https://github.com/reeywhaar/tmbliss"
	license "MIT"

	version "0.0.1-beta.3"

	revision 4

	depends_on :macos => :high_sierra

	url "https://github.com/Reeywhaar/tmbliss/releases/download/v0.0.1-beta.3/homebrew.zip"
	sha256 "a769ed5230b8904b97113b2e27e58d1ae97a61d65cba7b0d13cbbcea9a29a0cb"

	service do
		run ["#{opt_bin}/tmbliss", "conf", "--path", "#{etc}/tmbliss.conf"]
		run_type :interval
		interval 36000 # 10 hours
		log_path "#{var}/log/tmbliss.log"
		error_log_path "#{var}/log/tmbliss.error.log"
	end

	test do
		system "#{bin}/tmbliss", "help"
	end

	def install
		on_arm do
			bin.install "silicon/tmbliss"
		end
		on_intel do
			bin.install "intel/tmbliss"
		end

		create_conf

		etc.install "tmbliss.conf"
	end

	private

	def create_conf
		File.open("tmbliss.conf", "w") do |f|     
			content = <<~TEXT
			{
				"paths": [],
				"dry_run": true,
				"whitelist_glob": [],
				"whitelist_path": [],
				"skip_glob": [],
				"skip_path": []
			}
			TEXT
			f.write(content)   
		end
	end
end