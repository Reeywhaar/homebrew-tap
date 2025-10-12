cask "middleme" do
  # version-placeholder
  version "1.4"
  # sha256-placeholder
  sha256 "a08ad42189f0c4186726e52fd56e4c50e8e5b9d8ead3959ab62432a87283f301"

  url "https://github.com/Reeywhaar/cherish/releases/download/#{version}/Cherish.zip"
  name "Cherish"
  desc "App to handle airdrop drag'n'drop"
  homepage "https://github.com/Reeywhaar/cherish"

  app "Cherish.app"

  uninstall quit: "com.vyrtsev.mac.Cherish"
end
