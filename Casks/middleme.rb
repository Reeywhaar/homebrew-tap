cask "middleme" do
  version "1.10"
  sha256 "481171ce80606c63653856e6f1a7a7b799a03e59a8fa82e1356d016533529045"

  url "https://github.com/Reeywhaar/middleme/releases/download/#{version}/MiddleMe.zip"
  name "MiddleMe"
  desc "Simple app to make trackpad treat triple tap as middle click"
  homepage "https://github.com/Reeywhaar/MiddleMe"

  app "MiddleMe.app"

  uninstall quit: "com.vyrtsev.mac.MiddleMe"
  uninstall login_item: "MiddleMe"
end
