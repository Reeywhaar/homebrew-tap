cask "middleme" do
  # version-placeholder
  version "1.6"
  # sha256-placeholder
  sha256 "8c5d374f4bdc282decac282be9120ae9182128f6c4ed371927ebfebba5dc5111"

  url "https://github.com/Reeywhaar/middleme/releases/download/#{version}/MiddleMe.zip"
  name "MiddleMe"
  desc "Simple app to make trackpad treat triple tap as middle click"
  homepage "https://github.com/Reeywhaar/MiddleMe"

  app "MiddleMe.app"

  uninstall quit: "com.vyrtsev.mac.MiddleMe"
  uninstall login_item: "MiddleMe"
end
