cask "font-plemio-tc" do
  version "0.1.1"
  sha256 "5e40ce29bccf212be61062b4bbe1958352b5a9f5d79c6d2e68f58eb3c8f264b6"

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
