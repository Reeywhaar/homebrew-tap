class Tmbliss < Formula
	desc "Exclude development files from Time Machine backups"
	homepage "https://github.com/reeywhaar/tmbliss"
	license "MIT"

	version "0.0.1-beta.2"

	depends_on :macos => :high_sierra

	on_macos do
		on_arm do
			url "https://github.com/Reeywhaar/tmbliss/releases/download/v0.0.1-beta.2/silicon.zip"
			sha256 "091a3cf3e93d991a59d76e554bdfbc2191cfa51fa8c0edd14f7767d69639b0e2"
		end
		on_intel do
			url "https://github.com/Reeywhaar/tmbliss/releases/download/v0.0.1-beta.2/intel.zip"
			sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
		end
	end

	def install
		bin.install "tmbliss"
	end

	test do
		system "#{bin}/tmbliss", "help"
	end
end