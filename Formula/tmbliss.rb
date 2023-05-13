class Tmbliss < Formula
	desc "Exclude development files from Time Machine backups"
	homepage "https://github.com/reeywhaar/tmbliss"
	license "MIT"

	version "0.0.1-beta.3"

	depends_on :macos => :high_sierra

	url "https://github.com/Reeywhaar/tmbliss/releases/download/v0.0.1-beta.3/homebrew.zip"
	sha256 "a769ed5230b8904b97113b2e27e58d1ae97a61d65cba7b0d13cbbcea9a29a0cb"

	def install
		on_arm do
			bin.install "silicon/tmbliss"
		end
		on_intel do
			bin.install "intel/tmbliss"
		end
	end

	test do
		system "#{bin}/tmbliss", "help"
	end
end