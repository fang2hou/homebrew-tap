cask "font-plemio-jp" do
  version "0.1.0"
  sha256 "d57d50208cb5833849ffccf4962b8c0a9e04f64e8db93d7cce54cda6b3190d4f"

  url "https://github.com/fang2hou/Plemio/releases/download/v#{version}/Plemio-JP.zip"
  name "Plemio JP"
  desc "2:1 monospaced CJK programming font based on IBM Plex"
  homepage "https://github.com/fang2hou/Plemio"

  font "Plemio-JP-Bold.ttf"
  font "Plemio-JP-BoldItalic.ttf"
  font "Plemio-JP-ExtraLight.ttf"
  font "Plemio-JP-ExtraLightItalic.ttf"
  font "Plemio-JP-Italic.ttf"
  font "Plemio-JP-Light.ttf"
  font "Plemio-JP-LightItalic.ttf"
  font "Plemio-JP-Medium.ttf"
  font "Plemio-JP-MediumItalic.ttf"
  font "Plemio-JP-Regular.ttf"
  font "Plemio-JP-SemiBold.ttf"
  font "Plemio-JP-SemiBoldItalic.ttf"
  font "Plemio-JP-Text.ttf"
  font "Plemio-JP-TextItalic.ttf"
  font "Plemio-JP-Thin.ttf"
  font "Plemio-JP-ThinItalic.ttf"

  zap :not_required
end
