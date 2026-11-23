cask "font-plemio-nerd-sc" do
  version "0.1.0"
  sha256 "9340f09e19ba8bd72b346462cea166630f9b0d8bcc43b0f48dbc57174a5178ae"

  url "https://github.com/fang2hou/Plemio/releases/download/v#{version}/Plemio-Nerd-SC.zip"
  name "Plemio Nerd SC"
  desc "2:1 monospaced CJK programming font based on IBM Plex"
  homepage "https://github.com/fang2hou/Plemio"

  font "Plemio-Nerd-SC-Bold.ttf"
  font "Plemio-Nerd-SC-BoldItalic.ttf"
  font "Plemio-Nerd-SC-ExtraLight.ttf"
  font "Plemio-Nerd-SC-ExtraLightItalic.ttf"
  font "Plemio-Nerd-SC-Italic.ttf"
  font "Plemio-Nerd-SC-Light.ttf"
  font "Plemio-Nerd-SC-LightItalic.ttf"
  font "Plemio-Nerd-SC-Medium.ttf"
  font "Plemio-Nerd-SC-MediumItalic.ttf"
  font "Plemio-Nerd-SC-Regular.ttf"
  font "Plemio-Nerd-SC-SemiBold.ttf"
  font "Plemio-Nerd-SC-SemiBoldItalic.ttf"
  font "Plemio-Nerd-SC-Text.ttf"
  font "Plemio-Nerd-SC-TextItalic.ttf"
  font "Plemio-Nerd-SC-Thin.ttf"
  font "Plemio-Nerd-SC-ThinItalic.ttf"

  zap :not_required
end
