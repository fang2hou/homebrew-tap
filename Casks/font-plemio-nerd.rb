cask "font-plemio-nerd" do
  version "0.1.0"
  sha256 "25708dde1685de7a71f80bb810989462de20b456f0c4d2ad9e5560e7b35a9510"

  url "https://github.com/fang2hou/Plemio/releases/download/v#{version}/Plemio-Nerd-TTC.zip"
  name "Plemio Nerd"
  desc "2:1 monospaced CJK programming font based on IBM Plex"
  homepage "https://github.com/fang2hou/Plemio"

  font "Plemio-Nerd-Bold.ttc"
  font "Plemio-Nerd-BoldItalic.ttc"
  font "Plemio-Nerd-ExtraLight.ttc"
  font "Plemio-Nerd-ExtraLightItalic.ttc"
  font "Plemio-Nerd-Italic.ttc"
  font "Plemio-Nerd-Light.ttc"
  font "Plemio-Nerd-LightItalic.ttc"
  font "Plemio-Nerd-Medium.ttc"
  font "Plemio-Nerd-MediumItalic.ttc"
  font "Plemio-Nerd-Regular.ttc"
  font "Plemio-Nerd-SemiBold.ttc"
  font "Plemio-Nerd-SemiBoldItalic.ttc"
  font "Plemio-Nerd-Text.ttc"
  font "Plemio-Nerd-TextItalic.ttc"
  font "Plemio-Nerd-Thin.ttc"
  font "Plemio-Nerd-ThinItalic.ttc"

  zap :not_required
end
