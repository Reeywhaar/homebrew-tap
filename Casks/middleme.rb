cask "middleme" do
  version "1.11"
  sha256 "42ea505d147d0559a195e1a92b0c78dbf52121f4675a28d557ea05180d2a6965"

  url "https://github.com/Reeywhaar/middleme/releases/download/#{version}/MiddleMe.zip"
  name "MiddleMe"
  desc "Simple app to make trackpad treat triple tap as middle click"
  homepage "https://github.com/Reeywhaar/MiddleMe"

  app "MiddleMe.app"

  uninstall quit: "com.vyrtsev.mac.MiddleMe"
  uninstall login_item: "MiddleMe"
end
