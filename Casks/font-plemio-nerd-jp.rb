cask "font-plemio-nerd-jp" do
  version "0.1.0"
  sha256 "e1cf4c07f4adf60f4fc138f07e0e5dba43c48e1703c5d37674847c2942ca6ffc"

  url "https://github.com/fang2hou/Plemio/releases/download/v#{version}/Plemio-Nerd-JP.zip"
  name "Plemio Nerd JP"
  desc "2:1 monospaced CJK programming font based on IBM Plex"
  homepage "https://github.com/fang2hou/Plemio"

  font "Plemio-Nerd-JP-Bold.ttf"
  font "Plemio-Nerd-JP-BoldItalic.ttf"
  font "Plemio-Nerd-JP-ExtraLight.ttf"
  font "Plemio-Nerd-JP-ExtraLightItalic.ttf"
  font "Plemio-Nerd-JP-Italic.ttf"
  font "Plemio-Nerd-JP-Light.ttf"
  font "Plemio-Nerd-JP-LightItalic.ttf"
  font "Plemio-Nerd-JP-Medium.ttf"
  font "Plemio-Nerd-JP-MediumItalic.ttf"
  font "Plemio-Nerd-JP-Regular.ttf"
  font "Plemio-Nerd-JP-SemiBold.ttf"
  font "Plemio-Nerd-JP-SemiBoldItalic.ttf"
  font "Plemio-Nerd-JP-Text.ttf"
  font "Plemio-Nerd-JP-TextItalic.ttf"
  font "Plemio-Nerd-JP-Thin.ttf"
  font "Plemio-Nerd-JP-ThinItalic.ttf"

  zap :not_required
end
