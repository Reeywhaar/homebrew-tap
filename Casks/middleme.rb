cask "middleme" do
  # version-placeholder
  version "1.9"
  # sha256-placeholder
  sha256 "2e1c26515efc5136c8e32403d1d61df28cea20c35c922c293dbba694b1b84fbb"

  url "https://github.com/Reeywhaar/middleme/releases/download/#{version}/MiddleMe.zip"
  name "MiddleMe"
  desc "Simple app to make trackpad treat triple tap as middle click"
  homepage "https://github.com/Reeywhaar/MiddleMe"

  app "MiddleMe.app"

  uninstall quit: "com.vyrtsev.mac.MiddleMe"
  uninstall login_item: "MiddleMe"
end
