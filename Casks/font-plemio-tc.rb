cask "font-plemio-tc" do
  version "0.1.0"
  sha256 "5bc70e589f8969712588cca7b25f1d714b093aa14befb38ec9f925f073cbfa30"

  url "https://github.com/fang2hou/Plemio/releases/download/v#{version}/Plemio-TC.zip"
  name "Plemio TC"
  desc "2:1 monospaced CJK programming font based on IBM Plex"
  homepage "https://github.com/fang2hou/Plemio"

  font "Plemio-TC-Bold.ttf"
  font "Plemio-TC-BoldItalic.ttf"
  font "Plemio-TC-ExtraLight.ttf"
  font "Plemio-TC-ExtraLightItalic.ttf"
  font "Plemio-TC-Italic.ttf"
  font "Plemio-TC-Light.ttf"
  font "Plemio-TC-LightItalic.ttf"
  font "Plemio-TC-Medium.ttf"
  font "Plemio-TC-MediumItalic.ttf"
  font "Plemio-TC-Regular.ttf"
  font "Plemio-TC-SemiBold.ttf"
  font "Plemio-TC-SemiBoldItalic.ttf"
  font "Plemio-TC-Text.ttf"
  font "Plemio-TC-TextItalic.ttf"
  font "Plemio-TC-Thin.ttf"
  font "Plemio-TC-ThinItalic.ttf"

  zap :not_required
end
