cask "middleme" do
  # version-placeholder
  version "1.7"
  # sha256-placeholder
  sha256 "fef08dab8f207ad25b97f0f0bc2de712a038edf392750129e1a0f8d937edec1f"

  url "https://github.com/Reeywhaar/middleme/releases/download/#{version}/MiddleMe.zip"
  name "MiddleMe"
  desc "Simple app to make trackpad treat triple tap as middle click"
  homepage "https://github.com/Reeywhaar/MiddleMe"

  app "MiddleMe.app"

  uninstall quit: "com.vyrtsev.mac.MiddleMe"
  uninstall login_item: "MiddleMe"
end
