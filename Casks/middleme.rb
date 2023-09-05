cask "middleme" do
  # version-placeholder
  version "1.5"
  # sha256-placeholder
  sha256 "698a054bcc6fbb5b9773745b7f0f0a862e38d0533fd70f0db9f935c870a532c8"

  url "https://github.com/Reeywhaar/middleme/releases/download/#{version}/MiddleMe.zip"
  name "MiddleMe"
  desc "Simple app to make trackpad treat triple tap as middle click"
  homepage "https://github.com/Reeywhaar/MiddleMe"

  app "MiddleMe.app"

  uninstall quit: "com.vyrtsev.mac.MiddleMe"
  uninstall login_item: "MiddleMe"
end
