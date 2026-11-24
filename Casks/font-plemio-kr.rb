cask "font-plemio-kr" do
  version "0.1.1"
  sha256 "1bb4853745b191958b177574cf05a6afe76a7588fa6123de02cbdcc3ae5a3125"

  url "https://github.com/fang2hou/Plemio/releases/download/v#{version}/Plemio-KR.zip"
  name "Plemio KR"
  desc "2:1 monospaced CJK programming font based on IBM Plex"
  homepage "https://github.com/fang2hou/Plemio"

  font "Plemio-KR-Bold.ttf"
  font "Plemio-KR-BoldItalic.ttf"
  font "Plemio-KR-ExtraLight.ttf"
  font "Plemio-KR-ExtraLightItalic.ttf"
  font "Plemio-KR-Italic.ttf"
  font "Plemio-KR-Light.ttf"
  font "Plemio-KR-LightItalic.ttf"
  font "Plemio-KR-Medium.ttf"
  font "Plemio-KR-MediumItalic.ttf"
  font "Plemio-KR-Regular.ttf"
  font "Plemio-KR-SemiBold.ttf"
  font "Plemio-KR-SemiBoldItalic.ttf"
  font "Plemio-KR-Text.ttf"
  font "Plemio-KR-TextItalic.ttf"
  font "Plemio-KR-Thin.ttf"
  font "Plemio-KR-ThinItalic.ttf"

  zap :not_required
end
