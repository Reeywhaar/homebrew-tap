cask "middleme" do
  # version-placeholder
  version "1.8"
  # sha256-placeholder
  sha256 "b76d0849fc7701305fd6f3d35952a6561c1a30952ba383bbd0fec87c96725473"

  url "https://github.com/Reeywhaar/middleme/releases/download/#{version}/MiddleMe.zip"
  name "MiddleMe"
  desc "Simple app to make trackpad treat triple tap as middle click"
  homepage "https://github.com/Reeywhaar/MiddleMe"

  app "MiddleMe.app"

  uninstall quit: "com.vyrtsev.mac.MiddleMe"
  uninstall login_item: "MiddleMe"
end
